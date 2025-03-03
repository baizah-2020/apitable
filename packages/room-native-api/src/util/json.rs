use serde_json::{Number, Value};

pub trait JsonExt {
  fn is_truthy(&self) -> bool;

  fn prop_is_truthy<K>(&self, key: K) -> bool
  where
    K: AsRef<str>;
}

impl JsonExt for Value {
  fn is_truthy(&self) -> bool {
    match self {
      Self::Array(_) => true,
      Self::Bool(b) => *b,
      Self::Null => false,
      Self::Number(n) => n
        .as_i64()
        .map(|n| n != 0)
        .or_else(|| n.as_u64().map(|n| n != 0))
        .unwrap_or_else(|| {
          let n = n.as_f64().unwrap();
          !n.is_nan() && n != 0.0
        }),
      Self::Object(_) => true,
      Self::String(s) => !s.is_empty(),
    }
  }

  fn prop_is_truthy<K>(&self, key: K) -> bool
  where
    K: AsRef<str>,
  {
    self.get(key.as_ref()).map_or(false, |prop| prop.is_truthy())
  }
}

impl JsonExt for Option<Value> {
  fn is_truthy(&self) -> bool {
    matches!(self, Some(value) if value.is_truthy())
  }

  fn prop_is_truthy<K>(&self, key: K) -> bool
  where
    K: AsRef<str>,
  {
    matches!(self, Some(value) if value.prop_is_truthy(key))
  }
}

/// Fixes napi-rs JSON number serialization bug.
pub fn fix_json(mut value: Value) -> Value {
  fn recur(value: &mut Value) {
    match value {
      Value::Array(arr) => {
        for item in arr {
          recur(item)
        }
      }
      Value::Object(obj) => {
        for (_, value) in obj {
          recur(value)
        }
      }
      Value::Number(num) => {
        if let Some(n) = num.as_u64() {
          if n > u32::MAX as u64 {
            if let Some(n) = Number::from_f64(n as f64) {
              *num = n;
            } else {
              panic!("number {n} is not finite");
            }
          }
        }
      }
      _ => {}
    }
  }
  recur(&mut value);
  value
}

#[cfg(test)]
mod tests {
  use super::*;
  use rstest::*;
  use rstest_reuse::{self, *};
  use serde_json::json;

  #[template]
  #[rstest]
  #[case(Value::Null, false)]
  #[case(Value::Bool(false), false)]
  #[case(Value::Bool(true), true)]
  #[case(json!(""), false)]
  #[case(json!("0"), true)]
  #[case(json!([]), true)]
  #[case(json!([0]), true)]
  #[case(json!({}), true)]
  #[case(json!({ "": "" }), true)]
  #[case(json!(0), false)]
  #[case(json!(0f64), false)]
  #[case(json!(1), true)]
  #[case(json!(1f64), true)]
  #[case(json!(-1), true)]
  #[case(json!(-1f64), true)]
  #[case(json!(7185), true)]
  #[case(json!(1785323.25), true)]
  fn json_truthy_cases(#[case] input: Value, #[case] expected: bool) {}

  #[apply(json_truthy_cases)]
  fn json_is_truthy(input: Value, expected: bool) {
    assert_eq!(input.is_truthy(), expected);
  }

  #[apply(json_truthy_cases)]
  fn some_json_is_truthy(input: Value, expected: bool) {
    assert_eq!(Some(input).is_truthy(), expected);
  }

  #[test]
  fn none_json_is_truthy() {
    assert!(!None.is_truthy());
  }

  #[fixture]
  fn prop_truthy_object() -> Value {
    json!({
      "null": null,
      "true": true,
      "false": false,
      "empty-string": "",
      "string": "0",
      "empty-array": [],
      "array": [0],
      "empty-object": {},
      "object": { "": 0 },
      "num1": 0,
      "num2": 1,
      "num3": 0f64,
      "num4": 1f64,
      "num5": -1,
      "num6": -1f64,
      "num7": 1781341,
      "num8": 157235.26237985,
    })
  }

  #[template]
  #[rstest]
  #[case("null", false)]
  #[case("true", true)]
  #[case("false", false)]
  #[case("empty-string", false)]
  #[case("string", true)]
  #[case("empty-array", true)]
  #[case("array", true)]
  #[case("empty-object", true)]
  #[case("object", true)]
  #[case("num1", false)]
  #[case("num2", true)]
  #[case("num3", false)]
  #[case("num4", true)]
  #[case("num5", true)]
  #[case("num6", true)]
  #[case("num7", true)]
  #[case("num8", true)]
  #[case("not-exist", false)]
  fn json_prop_truthy_cases(#[case] key: &'static str, #[case] expected: bool) {}

  #[apply(json_prop_truthy_cases)]
  fn json_prop_is_truthy(prop_truthy_object: Value, key: &'static str, expected: bool) {
    assert_eq!(prop_truthy_object.prop_is_truthy(key), expected);
  }

  #[apply(json_prop_truthy_cases)]
  fn some_json_prop_is_truthy(prop_truthy_object: Value, key: &'static str, expected: bool) {
    assert_eq!(Some(prop_truthy_object).prop_is_truthy(key), expected);
  }

  #[test]
  fn none_json_prop_is_truthy() {
    assert!(!None.prop_is_truthy("any"));
  }
}
