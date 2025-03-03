/*
 * APITable <https://github.com/apitable/apitable>
 * Copyright (C) 2022 APITable Ltd. <https://apitable.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package com.apitable.shared.config.properties;

import static com.apitable.shared.config.properties.ConstProperties.PREFIX_CONST;

import cn.hutool.core.util.ReUtil;
import cn.hutool.core.util.StrUtil;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * server constants properties.
 *
 * @author Chambers
 */
@Data
@ConfigurationProperties(prefix = PREFIX_CONST)
public class ConstProperties {

    public static final String PREFIX_CONST = "const";

    private String languageTag = "zh-CN";

    private String serverDomain;

    private String callbackDomain;

    private String workbenchUrl = "/workbench";

    /**
     * Whether to create a picture audit record.
     */
    private boolean ossImageAuditCreatable = false;

    /**
     * OSS bucket configuration.
     */
    private Map<BucketKey, OssBucketInfo> ossBuckets;

    /**
     * Template space, the templates created in this space.
     * * will become official templates,
     * and there is no upper limit for the number of templates.
     */
    private String templateSpace = "";

    /**
     * Template ID referenced by new space by default.
     */
    private String quoteTemplateId = "tpll8mltwrZMT";

    /**
     * English template ID referenced by default in new space.
     */
    private String quoteEnTemplateId = "tpll8mltwrZMT";

    /**
     * dingtalk subscription information table id.
     */
    private String dingTalkOrderDatasheet;

    private Integer coolingOffPeriod;
    /**
     * close user cron string.
     */
    private String closePausedUserCron;

    private String emailVerificationUrl = "/user/email_verification";

    public OssBucketInfo getOssBucketByAsset() {
        return Optional.ofNullable(ossBuckets).orElseGet(HashMap::new)
            .getOrDefault(BucketKey.ASSETS_LTD, new OssBucketInfo());
    }

    public String defaultServerDomain() {
        return ReUtil.replaceAll(serverDomain, "http://|https://",
            StrUtil.EMPTY);
    }

    /**
     * bucket key.
     */
    public enum BucketKey {
        ASSETS_LTD,
    }

    /**
     * bucket info.
     */
    @Data
    public static class OssBucketInfo {
        private String resourceUrl = "";
        private String bucketName;
        private String type;
    }
}
