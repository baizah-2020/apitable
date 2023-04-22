#!/bin/bash

source ../common_util.sh


cd ../../

# all
#sed -i 's#apitable.com#darcy.zhang.2023@gmail.com#g' packages/i18n-lang/src/config/strings.auto.json
#sed -i 's#apitable.com#darcy.zhang.2023@gmail.com#g'  packages/i18n-lang/src/config/strings.edition.auto.json
#sed -i 's#apitable.com#darcy.zhang.2023@gmail.com#g'  packages/i18n-lang/src/config/strings.json

sed -i 's#Community#Inner#g' packages/i18n-lang/src/config/strings.auto.json
sed -i 's#Community#Inner#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#Community#Inner#g' packages/i18n-lang/src/config/strings.json


sed -i 's#APITable#Smart OA#g' packages/i18n-lang/src/config/strings.auto.json
sed -i 's#support@apitable.com#darcy.zhang.2023@gmail.com#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#support@apitable.com#darcy.zhang.2023@gmail.com#g' packages/i18n-lang/src/config/strings.json


sed -i 's#"zh_CN": "社区版",#"zh_CN": "Inner",#g' packages/i18n-lang/src/config/strings.auto.json
sed -i 's#"zh_CN": "社区版",#"zh_CN": "Inner",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "社区版",#"zh_CN": "Inner",#g' packages/i18n-lang/src/config/strings.json

sed -i 's#"en_US": "Community"#"en_US": "Inner"#g' packages/i18n-lang/src/config/strings.auto.json
sed -i 's#"en_US": "Community"#"en_US": "Inner"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Community"#"en_US": "Inner"#g' packages/i18n-lang/src/config/strings.json


sed -i 's#"zh_CN": "开源社区版",#"zh_CN": "Inner",#g' packages/i18n-lang/src/config/strings.auto.json
sed -i 's#"zh_CN": "开源社区版",#"zh_CN": "Inner",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "开源社区版",#"zh_CN": "Inner",#g' packages/i18n-lang/src/config/strings.json


sed -i 's#"en_US": "Community",#"en_US": "Inner",#g' packages/i18n-lang/src/config/strings.auto.json
sed -i 's#"en_US": "Community",#"en_US": "Inner",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Community",#"en_US": "Inner",#g' packages/i18n-lang/src/config/strings.json


sed -i 's#"zh_HK": "開源社區版"#"zh_HK": "Inner"#g' packages/i18n-lang/src/config/strings.auto.json
sed -i 's#"zh_HK": "開源社區版"#"zh_HK": "Inner"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "開源社區版"#"zh_HK": "Inner"#g' packages/i18n-lang/src/config/strings.json


sed -i 's#社区版#Inner#g' packages/i18n-lang/src/config/strings.auto.json
sed -i 's#社区版#Inner#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#社区版#Inner#g' packages/i18n-lang/src/config/strings.json


sed -i 's#社區版#Inner#g' packages/i18n-lang/src/config/strings.auto.json
sed -i 's#社區版#Inner#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#社區版#Inner#g' packages/i18n-lang/src/config/strings.json





# strings.edition.auto.json

sed -i 's#"en_US": "APITable brings your work tools together by integrating third-party applications. Integrations help connect your data and make APITable even more useful.",#"en_US": "Smart OA  brings your work tools together by integrating third-party applications. Integrations help connect your data and make Smart OA even more useful.",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "APITable，不是电子表格，是新一代的数据生产力平台。多维表格的首创者，无需代码技术即可完成企业/团队系统的深度定制。作为「下一个职场必备技能」，比 Excel 更好上手，比 Python 更具实用性，APITable 可以实现：",#"zh_CN": "Smart OA，不是电子表格，是新一代的数据生产力平台。多维表格的首创者，无需代码技术即可完成企业/团队系统的深度定制。作为「下一个职场必备技能」，比 Excel 更好上手，比 Python 更具实用性，Smart OA 可以实现：",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "APITable, not a spreadsheet, is a new generation of data productivity platform. The creator of multi-dimensional tables, achieves the in-depth customization of enterprise/team systems without coding. As the \\"next necessary skill for the workplace\\", it is easier to use than Excel and more practical than Python. APITable can achieve:",#"en_US": "Smart OA, not a spreadsheet, is a new generation of data productivity platform. The creator of multi-dimensional tables, achieves the in-depth customization of enterprise/team systems without coding. As the \\"next necessary skill for the workplace\\", it is easier to use than Excel and more practical than Python. Smart OA can achieve:",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "APITable ，不是電子表格，是新一代的數據生產力平台。多維表格的首創者，無需代碼技術即可完成企業/團隊系統的深度定制。作為「下一個職場必備技能」，比 Excel 更好上手，比 Python 更具實用性，APITable 可以實現："#"zh_HK": "Smart OA ，不是電子表格，是新一代的數據生產力平台。多維表格的首創者，無需代碼技術即可完成企業/團隊系統的深度定制。作為「下一個職場必備技能」，比 Excel 更好上手，比 Python 更具實用性，Smart OA 可以實現："#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "APITable 融合开放 API 文档，帮助你基于强大的 APITable 数据库快速构建应用",#"zh_CN": "Smart OA 融合开放 API 文档，帮助你基于强大的 Smart OA 数据库快速构建应用",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "APITable 融合開放 API 文檔，幫助你基於強大的 APITable 數據庫快速構建應用"#"zh_HK": "Smart OA 融合開放 API 文檔，幫助你基於強大的 Smart OA 數據庫快速構建應用"#g' packages/i18n-lang/src/config/strings.edition.auto.json

sed -i 's#"zh_CN": "LEFT(\\"APITable：支持API，随意DIY\\", 8)\\n=> APITable \\n\\nLEFT({出生年月}, 4)\\n=> 1994",#"zh_CN": "LEFT(\\"Smart OA：支持API，随意DIY\\", 8)\\n=> Smart OA \\n\\nLEFT({出生年月}, 4)\\n=> 1994",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "LEFT(\\"APITable：支持API，隨意DIY\\", 8)\\n=> APITable \\n\\nLEFT({出生年月}, 4)\\n=> 1994"#"zh_HK": "LEFT(\\"Smart OA：支持API，隨意DIY\\", 8)\\n=> Smart OA \\n\\nLEFT({出生年月}, 4)\\n=> 1994"#g' packages/i18n-lang/src/config/strings.edition.auto.json

sed -i 's#"zh_CN": "RIGHT(\\"APITable：支持API，随意DIY\\", 5)\\n=> 随意DIY\\n\\nRIGHT({出生年月}, 5)\\n=> 07-13",#"zh_CN": "RIGHT(\\"Smart OA：支持API，随意DIY\\", 5)\\n=> 随意DIY\\n\\nRIGHT({出生年月}, 5)\\n=> 07-13",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "RIGHT(\\"APITable：支持API，隨意DIY\\", 5)\\n=> 隨意DIY\\n\\nRIGHT({出生年月}, 5)\\n=> 07-13"#"zh_HK": "RIGHT(\\"Smart OA：支持API，隨意DIY\\", 5)\\n=> 隨意DIY\\n\\nRIGHT({出生年月}, 5)\\n=> 07-13"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "T(\\"APITable\\")\\n=> APITable \\n\\nT(\\"55\\")\\n=> 55 \\n\\nT(55)\\n=> 空值\\n\\nT({数学成绩})\\n=> 空值",#"zh_CN": "T(\\"Smart OA\\")\\n=> Smart OA \\n\\nT(\\"55\\")\\n=> 55 \\n\\nT(55)\\n=> 空值\\n\\nT({数学成绩})\\n=> 空值",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "T({name})\\n=> kelly\\n\\nT(3.2)\\n=> BLANK",#"en_US": "T({name})\\n=> kelly\\n\\nT(3.2)\\n=> BLANK",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "T(\\"APITable\\")\\n=> APITable \\n\\nT(\\"55\\")\\n=> 55 \\n\\nT(55)\\n=> 空值\\n\\nT({數學成績})\\n=> 空值    "#"zh_HK": "T(\\"Smart OA\\")\\n=> Smart OA \\n\\nT(\\"55\\")\\n=> 55 \\n\\nT(55)\\n=> 空值\\n\\nT({數學成績})\\n=> 空值    "#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Welcome to APITable. We have prepared a free meeting gift for you to learn APITable. Click here to learn more.",#"en_US": "Welcome to Smart OA. We have prepared a free meeting gift for you to learn Smart OA. Click here to learn more.",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Welcome to APITable, we have prepared a free meeting gift for you to learn APITable, click on this message to jump to learn more.",#"en_US": "Welcome to Smart OA, we have prepared a free meeting gift for you to learn Smart OA, click on this message to jump to learn more.",#g' packages/i18n-lang/src/config/strings.edition.auto.json


sed -i 's#"zh_CN": " APITable ",#"zh_CN": " Smart OA ",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": " APITable "#"en_US": " Smart OA "#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "【APITable】- ${nickName}给你分享了《${nodeName}》",#"zh_CN": "【Smart OA】- ${nickName}给你分享了《${nodeName}》",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "【APITable】- ${nickName}給你分享了《${nodeName}》"#"zh_HK": "【Smart OA】- ${nickName}給你分享了《${nodeName}》"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "【APITable】- ${nickName}邀请你加入「${spaceName}」空间站",#"zh_CN": "【Smart OA】- ${nickName}邀请你加入「${spaceName}」空间站",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "【APITable】- ${nickName}邀請你加入「${spaceName}」空間站"#"zh_HK": "【Smart OA】- ${nickName}邀請你加入「${spaceName}」空間站"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "什么是 APITable？",#"zh_CN": "什么是 Smart OA？",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "What is APITable?",#"en_US": "What is Smart OA?",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "什麼是 APITable？"#"zh_HK": "什麼是 Smart OA？"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "进入 APITable",#"zh_CN": "进入 Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Login APITable",#"en_US": "Login Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "進入 APITable"#"zh_HK": "進入 Smart OA"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "跟着指引开始你的 APITable 之旅吧～",#"zh_CN": "跟着指引开始你的 Smart OA 之旅吧～",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Follow the guide and start your journey in APITable~",#"en_US": "Follow the guide and start your journey in Smart OA~",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "跟著指引開始你的 APITable 之旅吧～"#"zh_HK": "跟著指引開始你的 Smart OA 之旅吧～"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "使用机器人，将 APITable 中的重复性操作自动化，解放员工生产力",#"zh_CN": "使用机器人，将 Smart OA 中的重复性操作自动化，解放员工生产力",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i "s#\"en_US\": \"Robots help you automate repetitive actions in the datasheets and free up your team's productivity\",#\"en_US\": \"Robots help you automate repetitive actions in the datasheets and free up your team's productivity\",#g" packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "使用機器人，將 APITable 中的重複性操作自動化，解放員工生產力"#"zh_HK": "使用機器人，將 Smart OA 中的重複性操作自動化，解放員工生產力"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "复制下方专属链接~ <br/>邀请好友使用 APITable <br/>与朋友一起“友”福同享",#"zh_CN": "复制下方专属链接~ <br/>邀请好友使用 Smart OA <br/>与朋友一起“友”福同享",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Copy the exclusive link below~ <br/>Invite friends to use APITable<br/>Share with friends",#"en_US": "Copy the exclusive link below~ <br/>Invite friends to use Smart OA<br/>Share with friends",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "複製下方專屬鏈接~ <br/>邀請好友使用 APITable <br/>與朋友一起“友”福同享"#"zh_HK": "複製下方專屬鏈接~ <br/>邀請好友使用 Smart OA <br/>與朋友一起“友”福同享"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "欢迎来到 APITable，开始体验「积木式多媒体数据表格」",#"zh_CN": "欢迎来到 Smart OA，开始体验「积木式多媒体数据表格」",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i "s#\"en_US\": \"Welcome to APITable, let's start our journey to \"building blocks-like multimedia database-spreadsheet hybrid\"!\",#\"en_US\": \"Welcome to Smart OA, let's start our journey to \"building blocks-like multimedia database-spreadsheet hybrid\"!\",#g" packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "歡迎來到 APITable，開始體驗「積木式多媒體數據表格」"#"zh_HK": "歡迎來到 Smart OA，開始體驗「積木式多媒體數據表格」"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "感谢使用 APITable",#"zh_CN": "感谢使用 Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Welcome to APITable!",#"en_US": "Welcome to Smart OA!",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "感謝使用 APITable"#"zh_HK": "感謝使用 Smart OA"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Recommended by APITable",#"en_US": "Recommended by Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "由 APITable 官方集成的第三方应用",#"zh_CN": "由 Smart OA 官方集成的第三方应用",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "由 APITable 官方集成的第三方應用"#"zh_HK": "由 Smart OA 官方集成的第三方應用"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "欢迎来到 APITable",#"zh_CN": "欢迎来到 Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Welcome to APITable",#"en_US": "Welcome to Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "歡迎來到 APITable"#"zh_HK": "歡迎來到 Smart OA"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "恭喜你拿到 APITable 的居民身份证",#"zh_CN": "恭喜你拿到 Smart OA 的居民身份证",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Congratulations on landing on APITable",#"en_US": "Congratulations on landing on Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "恭喜你拿到 APITable 的居民身份證"#"zh_HK": "恭喜你拿到 Smart OA 的居民身份證"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "欢迎加入 APITable，我们为你准备了一份免费学习 APITable 的见面礼，点击这条消息即可跳转了解详情。",#"zh_CN": "欢迎加入 Smart OA，我们为你准备了一份免费学习 Smart OA 的见面礼，点击这条消息即可跳转了解详情。",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "歡迎加入 APITable，我們為你準備了一份免費學習 APITable 的見面禮，點擊這條消息即可跳轉了解詳情。"#"zh_HK": "歡迎加入 Smart OA，我們為你準備了一份免費學習 Smart OA 的見面禮，點擊這條消息即可跳轉了解詳情。"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "一键拥有自己的 APITable 平台",#"zh_CN": "一键拥有自己的 Smart OA 平台",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Own your APITable platform with one click",#"en_US": "Own your Smart OA platform with one click",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "一鍵擁有自己的 APITable 平台"#"zh_HK": "一鍵擁有自己的 Smart OA 平台"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "你可以快速创建一个表格，开启 APITable 旅程",#"zh_CN": "你可以快速创建一个表格，开启 Smart OA 旅程",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "You can create a datasheet in a blink and start the journey with us!",#"en_US": "You can create a datasheet in a blink and start the journey with us!",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "你可以快速創建一個表格，開啟 APITable 旅程"#"zh_HK": "你可以快速創建一個表格，開啟 Smart OA 旅程"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "APITable，不是電子表格，是新一代的數據生產力平台。多維表格的首創者，無需代碼技術即可完成企業/團隊系統的深度定制。作為「下一個職場必備技能」，比 Excel 更好上手，比 Python 更具實用性，APITable 可以實現："#"zh_HK": "Smart OA，不是電子表格，是新一代的數據生產力平台。多維表格的首創者，無需代碼技術即可完成企業/團隊系統的深度定制。作為「下一個職場必備技能」，比 Excel 更好上手，比 Python 更具實用性，Smart OA 可以實現："#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "适用于刚上手 APITable 的个人或团队",#"zh_CN": "适用于刚上手 Smart OA 的个人或团队",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Suitable for individuals or teams who are new to APITable",#"en_US": "Suitable for individuals or teams who are new to Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "適用於剛上手 APITable 的個人或團隊"#"zh_HK": "適用於剛上手 Smart OA 的個人或團隊"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "你的好友「${nickname}」邀请你注册使用 APITable",#"zh_CN": "你的好友「${nickname}」邀请你注册使用 Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Your friend \\"${nickname}\\" has invited you to sign up on APITable",#"en_US": "Your friend \\"${nickname}\\" has invited you to sign up on Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "你的好友「${nickname}」邀請你註冊使用 APITable"#"zh_HK": "你的好友「${nickname}」邀請你註冊使用 Smart OA"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "解绑后 APITable 仍可正常使用，但会影响使用${mode}帐号登录 APITable",#"zh_CN": "解绑后 Smart OA 仍可正常使用，但会影响使用${mode}帐号登录 Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i "s#\"en_US\": \"After unbinding, you can still use the application but can't use the \${mode} account to log in\",#\"en_US\": \"After unbinding, you can still use the application but can't use the \${mode} account to log in\",#g" packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "解綁後 APITable 仍可正常使用，但會影響使用${mode}帳號登錄 APITable"#"zh_HK": "解綁後 Smart OA 仍可正常使用，但會影響使用${mode}帳號登錄 Smart OA"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "👉   向 APITable 报告问题，帮助 APITable 解决技术问题",#"zh_CN": "👉   向 Smart OA 报告问题，帮助 Smart OA 解决技术问题",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "👉  Report issues",#"en_US": "👉  Report issues",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "👉   向 APITable 報告問題，幫助 APITable 解決技術問題"#"zh_HK": "👉   向 Smart OA 報告問題，幫助 Smart OA 解決技術問題"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "对于带有图片的表格，相册视图可以很直观的展示你的数据。另外，APITable 还有更多有趣的功能正在迭代，敬请期待～",#"zh_CN": "对于带有图片的表格，相册视图可以很直观的展示你的数据。另外，Smart OA 还有更多有趣的功能正在迭代，敬请期待～",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "對於帶有圖片的表格，相冊視圖可以很直觀的展示你的數據。另外，APITable 還有更多有趣的功能正在迭代，敬請期待～"#"zh_HK": "對於帶有圖片的表格，相冊視圖可以很直觀的展示你的數據。另外，Smart OA 還有更多有趣的功能正在迭代，敬請期待～"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's# "zh_CN": "使用电脑打开 APITable 可获更佳体验",# "zh_CN": "使用电脑打开 Smart OA 可获更佳体验",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Get a better experience by using APITable on computer.",#"en_US": "Get a better experience by using Smart OA on computer.",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "使用電腦打開 APITable 可獲更佳體驗"#"zh_HK": "使用電腦打開 Smart OA 可獲更佳體驗"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "花费几分钟跟随我们的指引，学习一下 APITable 的常规功能，可以让您事半功倍哦！",#"zh_CN": "花费几分钟跟随我们的指引，学习一下 Smart OA 的常规功能，可以让您事半功倍哦！",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "花費幾分鐘跟隨我們的指引，學習一下 APITable 的常規功能，可以讓您事半功倍哦！"#"zh_HK": "花費幾分鐘跟隨我們的指引，學習一下 Smart OA 的常規功能，可以讓您事半功倍哦！"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "Oops~ 当前大量用户涌入 APITable",#"zh_CN": "Oops~ 当前大量用户涌入 Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "Oops~ 當前大量用戶湧入 APITable"#"zh_HK": "Oops~ 當前大量用戶湧入 Smart OA"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "个人邀请码：可以寻找已成为 APITable 的用户获取个人邀请码。",#"zh_CN": "个人邀请码：可以寻找已成为 Smart OA 的用户获取个人邀请码。",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "個人邀請碼：可以尋找已成為 APITable 的用戶獲取個人邀請碼。"#"zh_HK": "個人邀請碼：可以尋找已成為 Smart OA 的用戶獲取個人邀請碼。"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "「${nickname}」是 APITable 为你分配的随机昵称～",#"zh_CN": "「${nickname}」是 Smart OA 为你分配的随机昵称～",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "「${nickname}」是 APITable 為你分配的隨機暱稱～"#"zh_HK": "「${nickname}」是 Smart OA 為你分配的隨機暱稱～"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "LEFT(\"APITable：支持API，随意DIY\", 8)\n=> APITable \n\nLEFT({出生年月}, 4)\n=> 1994",#"zh_CN": "LEFT(\"Smart OA：支持API，随意DIY\", 8)\n=> Smart OA \n\nLEFT({出生年月}, 4)\n=> 1994",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "LEFT({date of birth}, 4)\n=> 1994",#"en_US": "LEFT({date of birth}, 4)\n=> 1994",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "LEFT(\"APITable：支持API，隨意DIY\", 8)\n=> APITable \n\nLEFT({出生年月}, 4)\n=> 1994"#"zh_HK": "LEFT(\"Smart OA：支持API，隨意DIY\", 8)\n=> Smart OA \n\nLEFT({出生年月}, 4)\n=> 1994"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "RIGHT(\"APITable：支持API，随意DIY\", 5)\n=> 随意DIY\n\nRIGHT({出生年月}, 5)\n=> 07-13",#"zh_CN": "RIGHT(\"Smart OA：支持API，随意DIY\", 5)\n=> 随意DIY\n\nRIGHT({出生年月}, 5)\n=> 07-13",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "RIGHT({date of birth}, 5)\n=> 07-13",#"en_US": "RIGHT({date of birth}, 5)\n=> 07-13",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "RIGHT(\"APITable：支持API，隨意DIY\", 5)\n=> 隨意DIY\n\nRIGHT({出生年月}, 5)\n=> 07-13"#"zh_HK": "RIGHT(\"Smart OA：支持API，隨意DIY\", 5)\n=> 隨意DIY\n\nRIGHT({出生年月}, 5)\n=> 07-13"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "T(\"APITable\")\n=> APITable \n\nT(\"55\")\n=> 55 \n\nT(55)\n=> 空值\n\nT({数学成绩})\n=> 空值",#"zh_CN": "T(\"Smart OA\")\n=> Smart OA \n\nT(\"55\")\n=> 55 \n\nT(55)\n=> 空值\n\nT({数学成绩})\n=> 空值",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "T({name})\n=> kelly\n\nT(3.2)\n=> BLANK",#"en_US": "T({name})\n=> kelly\n\nT(3.2)\n=> BLANK",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "T(\"APITable\")\n=> APITable \n\nT(\"55\")\n=> 55 \n\nT(55)\n=> 空值\n\nT({數學成績})\n=> 空值    "#"zh_HK": "T(\"Smart OA\")\n=> Smart OA \n\nT(\"55\")\n=> 55 \n\nT(55)\n=> 空值\n\nT({數學成績})\n=> 空值    "#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "由若干「组织单元（unit）」组成的数组  「组织单元」是 APITable 中描述“空间站”与#"zh_CN": "由若干「组织单元（unit）」组成的数组  「组织单元」是 Smart OA 中描述“空间站”与#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "由若干「組織單元（unit）」組成的數組  「組織單元」是 APITable 中描述“空#"zh_HK": "由若干「組織單元（unit）」組成的數組  「組織單元」是 Smart OA 中描述“空#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "最近一次编辑记录/指定字段的成员（unit），以数组形式返回  「组织单元」是 APITable 中描述“空间站”#"zh_CN": "最近一次编辑记录/指定字段的成员（unit），以数组形式返回  「组织单元」是 Smart OA 中描述“空间站”#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "最近一次編輯記錄/指定字段的成員（unit），以數組形式返回  「組織單元」是 APITable 中描述#"zh_HK": "最近一次編輯記錄/指定字段的成員（unit），以數組形式返回  「組織單元」是 Smart OA 中描述#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "创建此记录的成员（unit），以数组形式返回  「组织单元」是 APITable 中描述“空间站”与“成#"zh_CN": "创建此记录的成员（unit），以数组形式返回  「组织单元」是 Smart OA 中描述“空间站”与“成#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "創建此記錄的成員（unit），以數組形式返回  「組織單元」是 APITable 中描述“空間站#"zh_HK": "創建此記錄的成員（unit），以數組形式返回  「組織單元」是 Smart OA 中描述“空間站#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "欢迎加入 APITable，我们为你准备了一份免费学习 APITable 的见面礼，点击这条消息即可跳转了解详情。",#"zh_CN": "欢迎加入 Smart OA，我们为你准备了一份免费学习 Smart OA 的见面礼，点击这条消息即可跳转了解详情。",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "歡迎加入 APITable，我們為你準備了一份免費學習 APITable 的見面禮，點擊這條消息即可跳轉了解詳情。"#"zh_HK": "歡迎加入 Smart OA，我們為你準備了一份免費學習 Smart OA 的見面禮，點擊這條消息即可跳轉了解詳情。"#g' packages/i18n-lang/src/config/strings.edition.auto.json


sed -i 's#"en_US": "From APITable#"en_US": "From Smart OA#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "APITable#"zh_HK": "Smart OA #g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "APITable#"en_US": "Smart OA #g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "APITable#"zh_CN": "Smart OA#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "APITable#"zh_CN": "Smart OA#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_CN": "什么是 APITable",#"zh_CN": "什么是 Smart OA",#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"zh_HK": "什麼是 APITable"#"zh_HK": "什麼是 Smart OA"#g' packages/i18n-lang/src/config/strings.edition.auto.json
sed -i 's#"en_US": "Welcome to APITable#"en_US": "Welcome to Smart OA#g' packages/i18n-lang/src/config/strings.edition.auto.json


sed -i 's#APITable 模板中心#Smart OA 模板中心#g' packages/i18n-lang/src/config/strings.json

# sed -i '51,58c &nbsp;' packages/i18n-lang/src/config/strings.edition.auto.json
# sed -i '51,58c &nbsp;' packages/i18n-lang/src/config/strings.json





