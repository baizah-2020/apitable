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

package com.apitable.shared.clock.spring;

import com.apitable.core.util.SpringContextHolder;
import com.apitable.shared.clock.Clock;
import com.apitable.shared.clock.DefaultClock;
import com.apitable.shared.clock.MockClock;
import com.apitable.shared.component.SystemEnvironmentVariable;
import com.apitable.shared.config.ServerConfig;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;

/**
 * clock manager.
 */
@Component
@Slf4j
public class ClockManager implements InitializingBean {

    private Clock clock;

    private final ServerConfig serverConfig;

    private final SystemEnvironmentVariable environmentVariable;

    public ClockManager(ServerConfig serverConfig, SystemEnvironmentVariable environmentVariable) {
        this.serverConfig = serverConfig;
        this.environmentVariable = environmentVariable;
    }

    public static ClockManager me() {
        return SpringContextHolder.getBean(ClockManager.class);
    }

    /**
     * get mock clock.
     *
     * @return MockClock
     */
    public MockClock getMockClock() {
        if (!environmentVariable.isTestEnabled()) {
            throw new UnsupportedOperationException(
                "System has not been configured to update the time");
        }
        return (MockClock) clock;
    }

    /**
     * get utc now.
     *
     * @return OffsetDateTime
     */
    public OffsetDateTime getUtcNow() {
        if ((clock instanceof MockClock)) {
            log.info("mock clock");
            MockClock mockClock = (MockClock) clock;
            return mockClock.getUTCNow();
        }
        DefaultClock defaultClock = (DefaultClock) clock;
        return defaultClock.getUTCNow();
    }

    /**
     * get LocalDate of now.
     *
     * @return LocalDate
     */
    public LocalDate getLocalDateNow() {
        OffsetDateTime utcNow = getUtcNow();
        log.info("utc now: {}", utcNow);
        return utcNow.withOffsetSameInstant(serverConfig.getTimeZone()).toLocalDate();
    }

    /**
     * get LocalDateTime of now.
     *
     * @return LocalDateTime
     */
    public LocalDateTime getLocalDateTimeNow() {
        OffsetDateTime utcNow = getUtcNow();
        log.info("utc now: {}", utcNow);
        return utcNow.withOffsetSameInstant(serverConfig.getTimeZone()).toLocalDateTime();
    }

    /**
     * get server timezone.
     *
     * @return ZoneId
     */
    public ZoneId getDefaultTimeZone() {
        return this.serverConfig.getTimeZoneId();
    }

    @Override
    public void afterPropertiesSet() {
        if (environmentVariable.isTestEnabled()) {
            clock = new MockClock();
        } else {
            clock = new DefaultClock();
        }
    }
}
