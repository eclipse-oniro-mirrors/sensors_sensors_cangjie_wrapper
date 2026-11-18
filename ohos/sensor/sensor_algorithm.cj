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

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.sensor

import ohos.business_exception.{BusinessException, AsyncCallback}
import ohos.labels.APILevel

class GeomagneticResponseImpl {
    var x_: Float32
    var y_: Float32
    var z_: Float32
    var geomagneticDip_: Float32
    var deflectionAngle_: Float32
    var levelIntensity_: Float32
    var totalIntensity_: Float32

    init(x: Float32, y: Float32, z: Float32, geomagneticDip: Float32, deflectionAngle: Float32,
        levelIntensity: Float32, totalIntensity: Float32) {
        this.x_ = x
        this.y_ = y
        this.z_ = z
        this.geomagneticDip_ = geomagneticDip
        this.deflectionAngle_ = deflectionAngle
        this.levelIntensity_ = levelIntensity
        this.totalIntensity_ = totalIntensity
    }
}

/**
 * Describes a geomagnetic response object.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class GeomagneticResponse {
    private var geomagneticResponseImpl: GeomagneticResponseImpl

    /**
     * North component of the geomagnetic field, in nT.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop x: Float32 {
        get() { geomagneticResponseImpl.x_ }
        set(v) { geomagneticResponseImpl.x_ = v }
    }

    /**
     * East component of the geomagnetic field, in nT.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop y: Float32 {
        get() { geomagneticResponseImpl.y_ }
        set(v) { geomagneticResponseImpl.y_ = v }
    }

    /**
     * Vertical component of the geomagnetic field, in nT.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop z: Float32 {
        get() { geomagneticResponseImpl.z_ }
        set(v) { geomagneticResponseImpl.z_ = v }
    }

    /**
     * Magnetic dip, also called magnetic inclination, which is the angle measured from the horizontal plane to the magnetic field vector, in degrees.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop geomagneticDip: Float32 {
        get() { geomagneticResponseImpl.geomagneticDip_ }
        set(v) { geomagneticResponseImpl.geomagneticDip_ = v }
    }

    /**
     * Magnetic declination, which is the angle between true north (geographic north) and the magnetic north (the
     * horizontal component of the field), in degrees.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop deflectionAngle: Float32 {
        get() { geomagneticResponseImpl.deflectionAngle_ }
        set(v) { geomagneticResponseImpl.deflectionAngle_ = v }
    }

    /**
     * Horizontal intensity of the magnetic field vector field, in nT.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop levelIntensity: Float32 {
        get() { geomagneticResponseImpl.levelIntensity_ }
        set(v) { geomagneticResponseImpl.levelIntensity_ = v }
    }

    /**
     * Total intensity of the magnetic field vector, in nT.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop totalIntensity: Float32 {
        get() { geomagneticResponseImpl.totalIntensity_ }
        set(v) { geomagneticResponseImpl.totalIntensity_ = v }
    }

    /**
     * A constructor used to create a GeomagneticResponse.
     *
     * @param { Float32 } x - North component of the geomagnetic field, in nT.
     * @param { Float32 } y - East component of the geomagnetic field, in nT.
     * @param { Float32 } z - Vertical component of the geomagnetic field, in nT.
     * @param { Float32 } geomagneticDip - Magnetic dip, also called magnetic inclination, which is the angle measured
     *     from the horizontal plane to the magnetic field vector, in degrees.
     * @param { Float32 } deflectionAngle - Magnetic declination, which is the angle between true north (geographic
     *     north) and the magnetic north (the horizontal component of the field), in degrees.
     * @param { Float32 } levelIntensity - Horizontal intensity of the magnetic field vector field, in nT.
     * @param { Float32 } totalIntensity - Total intensity of the magnetic field vector, in nT.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public init(
        x: Float32,
        y: Float32,
        z: Float32,
        geomagneticDip: Float32,
        deflectionAngle: Float32,
        levelIntensity: Float32,
        totalIntensity: Float32
    ) {
        this.geomagneticResponseImpl = GeomagneticResponseImpl(x, y, z, geomagneticDip, deflectionAngle,
            levelIntensity, totalIntensity)
    }

    init(data: CGeomagneticResponse) {
        this.geomagneticResponseImpl = GeomagneticResponseImpl(data.x, data.y, data.z, data.geomagneticDip,
            data.deflectionAngle, data.levelIntensity, data.totalIntensity)
    }
}

class LocationOptionsImpl {
    var latitude_: Float32
    var longitude_: Float32
    var altitude_: Float32

    init(latitude: Float32, longitude: Float32, altitude: Float32) {
        this.latitude_ = latitude
        this.longitude_ = longitude
        this.altitude_ = altitude
    }
}

/**
 * Describes the geographical location.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class LocationOptions {
    private var locationOptionsImpl: LocationOptionsImpl

    /**
     * Latitude, in degrees.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop latitude: Float32 {
        get() { locationOptionsImpl.latitude_ }
        set(v) { locationOptionsImpl.latitude_ = v }
    }

    /**
     * Longitude, in degrees.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop longitude: Float32 {
        get() { locationOptionsImpl.longitude_ }
        set(v) { locationOptionsImpl.longitude_ = v }
    }

    /**
     * Altitude, in m.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop altitude: Float32 {
        get() { locationOptionsImpl.altitude_ }
        set(v) { locationOptionsImpl.altitude_ = v }
    }

    /**
     * A constructor used to create a LocationOptions.
     *
     * @param { Float32 } latitude - Latitude, in degrees.
     * @param { Float32 } longitude - Longitude, in degrees.
     * @param { Float32 } altitude - Altitude, in m.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public init(
        latitude: Float32,
        longitude: Float32,
        altitude: Float32
    ) {
        this.locationOptionsImpl = LocationOptionsImpl(latitude, longitude, altitude)
    }
}

class CoordinatesOptionsImpl {
    var x_: Int32
    var y_: Int32

    init(x: Int32, y: Int32) {
        this.x_ = x
        this.y_ = y
    }
}

/**
 * Describes the coordinate options.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class CoordinatesOptions {
    private var coordinatesOptionsImpl: CoordinatesOptionsImpl

    /**
     * X coordinate direction.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop x: Int32 {
        get() { coordinatesOptionsImpl.x_ }
        set(v) { coordinatesOptionsImpl.x_ = v }
    }

    /**
     * Y coordinate direction.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop y: Int32 {
        get() { coordinatesOptionsImpl.y_ }
        set(v) { coordinatesOptionsImpl.y_ = v }
    }

    /**
     * A constructor used to create a CoordinatesOptions.
     *
     * @param { Int32 } x - X coordinate direction.
     * @param { Int32 } y - Y coordinate direction.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public init(
        x: Int32,
        y: Int32
    ) {
        this.coordinatesOptionsImpl = CoordinatesOptionsImpl(x, y)
    }
}

class RotationMatrixResponseImpl {
    var rotation_: Array<Float32>
    var inclination_: Array<Float32>

    init(rotation: Array<Float32>, inclination: Array<Float32>) {
        this.rotation_ = rotation
        this.inclination_ = inclination
    }
}

/**
 * Describes the response for setting the rotation matrix.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor"
]
public class RotationMatrixResponse {
    private var rotationMatrixResponseImpl: RotationMatrixResponseImpl

    /**
     * Rotation matrix.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop rotation: Array<Float32> {
        get() { rotationMatrixResponseImpl.rotation_ }
        set(v) { rotationMatrixResponseImpl.rotation_ = v }
    }

    /**
     * Inclination matrix.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public mut prop inclination: Array<Float32> {
        get() { rotationMatrixResponseImpl.inclination_ }
        set(v) { rotationMatrixResponseImpl.inclination_ = v }
    }

    /**
     * A constructor used to create a RotationMatrixResponse.
     *
     * @param { Array<Float32> } rotation - Rotation matrix.
     * @param { Array<Float32> } inclination - Inclination matrix.
     */
    @!APILevel[
        since: "26.1.0",
        syscap: "SystemCapability.Sensors.Sensor"
    ]
    public init(
        rotation: Array<Float32>,
        inclination: Array<Float32>
    ) {
        this.rotationMatrixResponseImpl = RotationMatrixResponseImpl(rotation, inclination)
    }

    init(data: CRotationMatrixResponse) {
        this.rotationMatrixResponseImpl = RotationMatrixResponseImpl(data.rotation.asArray(),
            data.inclination.asArray())
    }
}

/**
 * Obtains the geomagnetic field of a geographic location at a certain time. This API uses an asynchronous callback to
 * return the result.
 *
 * @param { LocationOptions } locationOptions - Geographic location, including the longitude, latitude, and altitude.
 * @param { Int64 } timeMillis - Time when the magnetic declination is obtained. The value is a Unix timestamp, in ms.
 * @param { AsyncCallback<GeomagneticResponse> } callback - Callback used to return the geomagnetic field.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 *     <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func getGeomagneticInfo(locationOptions: LocationOptions, timeMillis: Int64,
    callback: AsyncCallback<GeomagneticResponse>): Unit {
    spawn {
        unsafe {
            let res = FfiSensorGetGeomagneticInfo(CLocationOptions(locationOptions), timeMillis)
            callback(None, GeomagneticResponse(res))
        }
    }
}

/**
 * Obtains the altitude based on the atmospheric pressure. This API uses an asynchronous callback to return the result.
 *
 * @param { Float32 } seaPressure - Sea-level atmospheric pressure, in hPa.
 * @param { Float32 } currentPressure - Specified atmospheric pressure, in hPa.
 * @param { AsyncCallback<Float32> } callback - Callback used to return the altitude, in meters.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 *     <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func getDeviceAltitude(seaPressure: Float32, currentPressure: Float32,
    callback: AsyncCallback<Float32>): Unit {
    spawn {
        unsafe {
            var altitude: Float32 = 0.0
            let ret = FfiSensorGetDeviceAltitude(seaPressure, currentPressure, inout altitude)
            if (ret != 0) {
                callback(BusinessException(ret, getErrorMsg(ret)), None)
            } else {
                callback(None, altitude)
            }
        }
    }
}

/**
 * Obtains the magnetic dip based on the inclination matrix. This API uses an asynchronous callback to return the
 * result.
 *
 * @param { Array<Float32> } inclinationMatrix - Inclination matrix.
 * @param { AsyncCallback<Float32> } callback - Callback used to return the magnetic dip, in radians.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 *     <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func getInclination(inclinationMatrix: Array<Float32>,
    callback: AsyncCallback<Float32>): Unit {
    spawn {
        try {
            unsafe {
                var inclination: Float32 = 0.0
                let cArr = toCArrayFloat32(inclinationMatrix)
                let ret = FfiSensorGetInclination(cArr, inout inclination)
                cArr.free()
                checkAndThrow(ret)
                callback(None, inclination)
            }
        } catch (err: BusinessException) {
            callback(err, None)
        }
    }
}

/**
 * Obtains the angle change between two rotation matrices. This API uses an asynchronous callback to return the result.
 *
 * @param { Array<Float32> } currentRotationMatrix - Current rotation matrix.
 * @param { Array<Float32> } preRotationMatrix - The other rotation matrix.
 * @param { AsyncCallback<Array<Float32>> } callback - Callback used to return the angle change around the z, x,
 *     and y axes, in degrees.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 *     <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func getAngleVariation(currentRotationMatrix: Array<Float32>, preRotationMatrix: Array<Float32>,
    callback: AsyncCallback<Array<Float32>>): Unit {
    spawn {
        var result: CArrFloat32 = CArrFloat32()
        try {
            unsafe {
                let cCurrent = toCArrayFloat32(currentRotationMatrix)
                let cPre = toCArrayFloat32(preRotationMatrix)
                let ret = FfiSensorGetAngleVariation(cCurrent, cPre, inout result)
                cCurrent.free()
                cPre.free()
                checkAndThrow(ret)
                let arr = result.asArray()
                callback(None, arr)
            }
        } catch (err: BusinessException) {
            callback(err, None)
        } finally {
            result.free()
        }
    }
}

/**
 * Obtains the rotation matrix from a rotation vector. This API uses an asynchronous callback to return the result.
 *
 * @param { Array<Float32> } rotationVector - Rotation vector.
 * @param { AsyncCallback<Array<Float32>> } callback - Callback used to return the rotation matrix.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 *     <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func getRotationMatrix(rotationVector: Array<Float32>,
    callback: AsyncCallback<Array<Float32>>): Unit {
    spawn {
        var result: CArrFloat32 = CArrFloat32()
        try {
            unsafe {
                let cArr = toCArrayFloat32(rotationVector)
                let ret = FfiSensorGetRotationMatrix(cArr, inout result)
                cArr.free()
                checkAndThrow(ret)
                let arr = result.asArray()
                callback(None, arr)
            }
        } catch (err: BusinessException) {
            callback(err, None)
        } finally {
            result.free()
        }
    }
}

/**
 * Transforms a rotation vector based on the coordinate system. This API uses an asynchronous callback to return the
 * result.
 *
 * @param { Array<Float32> } inRotationVector - Rotation vector.
 * @param { CoordinatesOptions } coordinates - Rotation vector to transform.
 * @param { AsyncCallback<Array<Float32>> } callback - Callback used to return the rotation vector after being
 *     transformed.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 *     <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func transformRotationMatrix(inRotationVector: Array<Float32>, coordinates: CoordinatesOptions,
    callback: AsyncCallback<Array<Float32>>): Unit {
    spawn {
        var result: CArrFloat32 = CArrFloat32()
        try {
            unsafe {
                let cArr = toCArrayFloat32(inRotationVector)
                let ret = FfiSensorTransformRotationMatrix(cArr, CCoordinatesOptions(coordinates), inout result)
                cArr.free()
                checkAndThrow(ret)
                let arr = result.asArray()
                callback(None, arr)
            }
        } catch (err: BusinessException) {
            callback(err, None)
        } finally {
            result.free()
        }
    }
}

/**
 * Obtains the quaternion from a rotation vector. This API uses an asynchronous callback to return the result.
 *
 * @param { Array<Float32> } rotationVector - Rotation vector.
 * @param { AsyncCallback<Array<Float32>> } callback - Callback used to return the quaternion.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 *     <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func getQuaternion(rotationVector: Array<Float32>,
    callback: AsyncCallback<Array<Float32>>): Unit {
    spawn {
        var result: CArrFloat32 = CArrFloat32()
        try {
            unsafe {
                let cArr = toCArrayFloat32(rotationVector)
                let ret = FfiSensorGetQuaternion(cArr, inout result)
                cArr.free()
                checkAndThrow(ret)
                let arr = result.asArray()
                callback(None, arr)
            }
        } catch (err: BusinessException) {
            callback(err, None)
        } finally {
            result.free()
        }
    }
}

/**
 * Obtains the device direction based on the rotation matrix. This API uses an asynchronous callback to return the
 * result.
 *
 * @param { Array<Float32> } rotationMatrix - Rotation matrix.
 * @param { AsyncCallback<Array<Float32>> } callback - Callback used to return the rotation angle around the z, x,
 *     and y axes, in degrees.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 *     <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func getOrientation(rotationMatrix: Array<Float32>,
    callback: AsyncCallback<Array<Float32>>): Unit {
    spawn {
        var result: CArrFloat32 = CArrFloat32()
        try {
            unsafe {
                let cArr = toCArrayFloat32(rotationMatrix)
                let ret = FfiSensorGetOrientation(cArr, inout result)
                cArr.free()
                checkAndThrow(ret)
                let arr = result.asArray()
                callback(None, arr)
            }
        } catch (err: BusinessException) {
            callback(err, None)
        } finally {
            result.free()
        }
    }
}

/**
 * Obtains the rotation matrix based on a gravity vector and geomagnetic vector. This API uses an asynchronous callback
 * to return the result.
 *
 * @param { Array<Float32> } gravity - Gravity vector.
 * @param { Array<Float32> } geomagnetic - Geomagnetic vector.
 * @param { AsyncCallback<RotationMatrixResponse> } callback - Callback used to return the rotation matrix.
 * @throws { BusinessException } 14500101 - Service exception. Possible causes: 1. Sensor hdf service exception;
 *     <br> 2. Sensor service ipc exception;3. Sensor data channel exception.
 */
@!APILevel[
    since: "26.1.0",
    syscap: "SystemCapability.Sensors.Sensor",
    throwexception: true
]
public func getRotationMatrix(gravity: Array<Float32>, geomagnetic: Array<Float32>,
    callback: AsyncCallback<RotationMatrixResponse>): Unit {
    spawn {
        var result: CRotationMatrixResponse = CRotationMatrixResponse()
        try {
            unsafe {
                let cGravity = toCArrayFloat32(gravity)
                let cGeomagnetic = toCArrayFloat32(geomagnetic)
                let ret = FfiSensorGetRotationMatrixByGravityAndGeomagnetic(cGravity, cGeomagnetic, inout result)
                cGravity.free()
                cGeomagnetic.free()
                checkAndThrow(ret)
                let resp = RotationMatrixResponse(result)
                callback(None, resp)
            }
        } catch (err: BusinessException) {
            callback(err, None)
        } finally {
            result.free()
        }
    }
}
