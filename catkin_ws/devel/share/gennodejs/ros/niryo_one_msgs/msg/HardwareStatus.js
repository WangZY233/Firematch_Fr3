// Auto-generated. Do not edit!

// (in-package niryo_one_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HardwareStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rpi_temperature = null;
      this.hardware_version = null;
      this.connection_up = null;
      this.error_message = null;
      this.calibration_needed = null;
      this.calibration_in_progress = null;
      this.motor_names = null;
      this.motor_types = null;
      this.temperatures = null;
      this.voltages = null;
      this.hardware_errors = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rpi_temperature')) {
        this.rpi_temperature = initObj.rpi_temperature
      }
      else {
        this.rpi_temperature = 0;
      }
      if (initObj.hasOwnProperty('hardware_version')) {
        this.hardware_version = initObj.hardware_version
      }
      else {
        this.hardware_version = 0;
      }
      if (initObj.hasOwnProperty('connection_up')) {
        this.connection_up = initObj.connection_up
      }
      else {
        this.connection_up = false;
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
      if (initObj.hasOwnProperty('calibration_needed')) {
        this.calibration_needed = initObj.calibration_needed
      }
      else {
        this.calibration_needed = 0;
      }
      if (initObj.hasOwnProperty('calibration_in_progress')) {
        this.calibration_in_progress = initObj.calibration_in_progress
      }
      else {
        this.calibration_in_progress = false;
      }
      if (initObj.hasOwnProperty('motor_names')) {
        this.motor_names = initObj.motor_names
      }
      else {
        this.motor_names = [];
      }
      if (initObj.hasOwnProperty('motor_types')) {
        this.motor_types = initObj.motor_types
      }
      else {
        this.motor_types = [];
      }
      if (initObj.hasOwnProperty('temperatures')) {
        this.temperatures = initObj.temperatures
      }
      else {
        this.temperatures = [];
      }
      if (initObj.hasOwnProperty('voltages')) {
        this.voltages = initObj.voltages
      }
      else {
        this.voltages = [];
      }
      if (initObj.hasOwnProperty('hardware_errors')) {
        this.hardware_errors = initObj.hardware_errors
      }
      else {
        this.hardware_errors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HardwareStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rpi_temperature]
    bufferOffset = _serializer.int32(obj.rpi_temperature, buffer, bufferOffset);
    // Serialize message field [hardware_version]
    bufferOffset = _serializer.int32(obj.hardware_version, buffer, bufferOffset);
    // Serialize message field [connection_up]
    bufferOffset = _serializer.bool(obj.connection_up, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    // Serialize message field [calibration_needed]
    bufferOffset = _serializer.int32(obj.calibration_needed, buffer, bufferOffset);
    // Serialize message field [calibration_in_progress]
    bufferOffset = _serializer.bool(obj.calibration_in_progress, buffer, bufferOffset);
    // Serialize message field [motor_names]
    bufferOffset = _arraySerializer.string(obj.motor_names, buffer, bufferOffset, null);
    // Serialize message field [motor_types]
    bufferOffset = _arraySerializer.string(obj.motor_types, buffer, bufferOffset, null);
    // Serialize message field [temperatures]
    bufferOffset = _arraySerializer.int32(obj.temperatures, buffer, bufferOffset, null);
    // Serialize message field [voltages]
    bufferOffset = _arraySerializer.float64(obj.voltages, buffer, bufferOffset, null);
    // Serialize message field [hardware_errors]
    bufferOffset = _arraySerializer.int32(obj.hardware_errors, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HardwareStatus
    let len;
    let data = new HardwareStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpi_temperature]
    data.rpi_temperature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hardware_version]
    data.hardware_version = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [connection_up]
    data.connection_up = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [calibration_needed]
    data.calibration_needed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [calibration_in_progress]
    data.calibration_in_progress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_names]
    data.motor_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [motor_types]
    data.motor_types = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [temperatures]
    data.temperatures = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [voltages]
    data.voltages = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [hardware_errors]
    data.hardware_errors = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.error_message);
    object.motor_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.motor_types.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.temperatures.length;
    length += 8 * object.voltages.length;
    length += 4 * object.hardware_errors.length;
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_one_msgs/HardwareStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f14fcd5176379337d6d5829d28cfd584';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Header header
    
    # Raspberry Pi board
    int32 rpi_temperature 
    
    # Robot version : 1 (previous one) or 2 (current one)
    int32 hardware_version
    
    # Motors
    bool connection_up
    string error_message
    int32 calibration_needed
    bool calibration_in_progress
    
    string[] motor_names
    string[] motor_types
    
    int32[] temperatures
    float64[] voltages
    int32[] hardware_errors
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HardwareStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rpi_temperature !== undefined) {
      resolved.rpi_temperature = msg.rpi_temperature;
    }
    else {
      resolved.rpi_temperature = 0
    }

    if (msg.hardware_version !== undefined) {
      resolved.hardware_version = msg.hardware_version;
    }
    else {
      resolved.hardware_version = 0
    }

    if (msg.connection_up !== undefined) {
      resolved.connection_up = msg.connection_up;
    }
    else {
      resolved.connection_up = false
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    if (msg.calibration_needed !== undefined) {
      resolved.calibration_needed = msg.calibration_needed;
    }
    else {
      resolved.calibration_needed = 0
    }

    if (msg.calibration_in_progress !== undefined) {
      resolved.calibration_in_progress = msg.calibration_in_progress;
    }
    else {
      resolved.calibration_in_progress = false
    }

    if (msg.motor_names !== undefined) {
      resolved.motor_names = msg.motor_names;
    }
    else {
      resolved.motor_names = []
    }

    if (msg.motor_types !== undefined) {
      resolved.motor_types = msg.motor_types;
    }
    else {
      resolved.motor_types = []
    }

    if (msg.temperatures !== undefined) {
      resolved.temperatures = msg.temperatures;
    }
    else {
      resolved.temperatures = []
    }

    if (msg.voltages !== undefined) {
      resolved.voltages = msg.voltages;
    }
    else {
      resolved.voltages = []
    }

    if (msg.hardware_errors !== undefined) {
      resolved.hardware_errors = msg.hardware_errors;
    }
    else {
      resolved.hardware_errors = []
    }

    return resolved;
    }
};

module.exports = HardwareStatus;
