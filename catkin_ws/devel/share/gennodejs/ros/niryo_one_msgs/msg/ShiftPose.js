// Auto-generated. Do not edit!

// (in-package niryo_one_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ShiftPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.axis_number = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('axis_number')) {
        this.axis_number = initObj.axis_number
      }
      else {
        this.axis_number = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShiftPose
    // Serialize message field [axis_number]
    bufferOffset = _serializer.int32(obj.axis_number, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.float64(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShiftPose
    let len;
    let data = new ShiftPose(null);
    // Deserialize message field [axis_number]
    data.axis_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_one_msgs/ShiftPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1582f6063ca2d2749f4798d853f452ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 axis_number
    float64 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShiftPose(null);
    if (msg.axis_number !== undefined) {
      resolved.axis_number = msg.axis_number;
    }
    else {
      resolved.axis_number = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    return resolved;
    }
};

module.exports = ShiftPose;
