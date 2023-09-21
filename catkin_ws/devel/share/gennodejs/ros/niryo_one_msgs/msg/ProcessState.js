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

class ProcessState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.is_active = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('is_active')) {
        this.is_active = initObj.is_active
      }
      else {
        this.is_active = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessState
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [is_active]
    bufferOffset = _arraySerializer.bool(obj.is_active, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessState
    let len;
    let data = new ProcessState(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [is_active]
    data.is_active = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += object.is_active.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_one_msgs/ProcessState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea4d2ab332d89d84ef08a4d6fe541702';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string[] name
    bool[] is_active
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.is_active !== undefined) {
      resolved.is_active = msg.is_active;
    }
    else {
      resolved.is_active = []
    }

    return resolved;
    }
};

module.exports = ProcessState;
