// Auto-generated. Do not edit!

// (in-package niryo_one_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeHardwareVersionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.old_version = null;
      this.new_version = null;
    }
    else {
      if (initObj.hasOwnProperty('old_version')) {
        this.old_version = initObj.old_version
      }
      else {
        this.old_version = 0;
      }
      if (initObj.hasOwnProperty('new_version')) {
        this.new_version = initObj.new_version
      }
      else {
        this.new_version = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeHardwareVersionRequest
    // Serialize message field [old_version]
    bufferOffset = _serializer.int32(obj.old_version, buffer, bufferOffset);
    // Serialize message field [new_version]
    bufferOffset = _serializer.int32(obj.new_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeHardwareVersionRequest
    let len;
    let data = new ChangeHardwareVersionRequest(null);
    // Deserialize message field [old_version]
    data.old_version = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [new_version]
    data.new_version = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/ChangeHardwareVersionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6d236e359b4916a65b178643f25ed07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 old_version
    int32 new_version
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeHardwareVersionRequest(null);
    if (msg.old_version !== undefined) {
      resolved.old_version = msg.old_version;
    }
    else {
      resolved.old_version = 0
    }

    if (msg.new_version !== undefined) {
      resolved.new_version = msg.new_version;
    }
    else {
      resolved.new_version = 0
    }

    return resolved;
    }
};

class ChangeHardwareVersionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeHardwareVersionResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeHardwareVersionResponse
    let len;
    let data = new ChangeHardwareVersionResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/ChangeHardwareVersionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c1d00fb8b4e78420f43d93d5292a429';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeHardwareVersionResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeHardwareVersionRequest,
  Response: ChangeHardwareVersionResponse,
  md5sum() { return 'a236aed5507cea948ac43373e4211c23'; },
  datatype() { return 'niryo_one_msgs/ChangeHardwareVersion'; }
};
