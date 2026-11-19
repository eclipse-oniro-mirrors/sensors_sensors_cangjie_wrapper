/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package ohos.vibrator

import ohos.business_exception.AsyncCallback
import ohos.labels.*

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public type Usage = String

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public enum EffectId {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    EffectClockTimer
    | ...
}

extend EffectId <: ToString {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public func toString(): String {
        return String()
    }
}

extend EffectId <: Equatable<EffectId> {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public operator func ==(other: EffectId): Bool {
        return true
    }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public operator func !=(other: EffectId): Bool {
        return true
    }
}

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public enum VibratorStopMode {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibratorStopModeTime
    |
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibratorStopModePreset
    | ...
}

extend VibratorStopMode <: ToString {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public func toString(): String {
        return String()
    }
}

extend VibratorStopMode <: Equatable<VibratorStopMode> {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public operator func ==(other: VibratorStopMode): Bool {
        return true
    }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public operator func !=(other: VibratorStopMode): Bool {
        return true
    }
}

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public enum VibrateEffect {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibrateTimeType(VibrateTime)
    |
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibratePresetType(VibratePreset)
    |
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    VibrateFromFileType(VibrateFromFile)
    | ...
}

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class VibrateTime {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop effectType: String { get(), set(v) }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop duration: Int32 { get(), set(v) }

    public init(effectType: String, duration: Int32) {
        super()
        this.effectType = effectType
        this.duration = duration
    }
}

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class VibratePreset {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop effectType: String { get(), set(v) }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop effectId: String { get(), set(v) }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop count: ?Int32 { get(), set(v) }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop intensity: ?Int32 { get(), set(v) }

    public init(effectType: String, effectId: String, count!: ?Int32 = None, intensity!: ?Int32 = None) {
        super()
        this.effectType = effectType
        this.effectId = effectId
        this.count = count
        this.intensity = intensity
    }
}

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class VibrateFromFile {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop effectType: String { get(), set(v) }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop hapticFd: HapticFileDescriptor { get(), set(v) }

    public init(effectType: String, hapticFd: HapticFileDescriptor) {
        super()
        this.effectType = effectType
        this.hapticFd = hapticFd
    }
}

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class HapticFileDescriptor {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop fd: Int32 { get(), set(v) }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop offSet: ?Int64 { get(), set(v) }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop length: ?Int64 { get(), set(v) }

    public init(fd: Int32, offSet!: ?Int64 = None, length!: ?Int64 = None) {
        super()
        this.fd = fd
        this.offSet = offSet
        this.length = length
    }
}

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice"
]
public class VibrateAttribute {
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop id: ?Int32 { get(), set(v) }

    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.MiscDevice"
    ]
    public mut prop usage: Usage { get(), set(v) }

    public init(usage: Usage, id!: ?Int32 = None) {
        super()
        this.id = id
        this.usage = usage
    }
}

@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.VIBRATE",
    syscap: "SystemCapability.Sensors.MiscDevice",
    throwexception: true
]
public func startVibration(effect: VibrateEffect, attribute: VibrateAttribute,
    callback: AsyncCallback<Unit>): Unit {
    return ()
}

@!APILevel[
    since: "26.1.0",
    permission: "ohos.permission.VIBRATE",
    syscap: "SystemCapability.Sensors.MiscDevice",
    throwexception: true
]
public func stopVibration(stopMode: VibratorStopMode, callback: AsyncCallback<Unit>): Unit {
    return ()
}

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice",
    throwexception: true
]
public func isSupportEffect(effectId: String, callback: AsyncCallback<Bool>): Unit {
    return ()
}

@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.MiscDevice",
    throwexception: true
]
public func isHdHapticSupported(): Bool {
    return false
}
