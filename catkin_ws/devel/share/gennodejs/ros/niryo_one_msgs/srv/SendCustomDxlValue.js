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

class SendCustomDxlValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_type = null;
      this.id = null;
      this.value = null;
      this.reg_address = null;
      this.byte_number = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_type')) {
        this.motor_type = initObj.motor_type
      }
      else {
        this.motor_type = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('reg_address')) {
        this.reg_address = initObj.reg_address
      }
      else {
        this.reg_address = 0;
      }
      if (initObj.hasOwnProperty('byte_number')) {
        this.byte_number = initObj.byte_number
      }
      else {
        this.byte_number = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendCustomDxlValueRequest
    // Serialize message field [motor_type]
    bufferOffset = _serializer.int32(obj.motor_type, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    // Serialize message field [reg_address]
    bufferOffset = _serializer.int32(obj.reg_address, buffer, bufferOffset);
    // Serialize message field [byte_number]
    bufferOffset = _serializer.int32(obj.byte_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCustomDxlValueRequest
    let len;
    let data = new SendCustomDxlValueRequest(null);
    // Deserialize message field [motor_type]
    data.motor_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reg_address]
    data.reg_address = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [byte_number]
    data.byte_number = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/SendCustomDxlValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cc34e89b5ce860f1d87d7de4d367a5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Check XL-320 and XL-430 reference doc for
    # the complete register table
    
    int32 motor_type # 1 (XL-320) or 2 (XL-430)
    uint8 id
    int32 value
    int32 reg_address
    int32 byte_number
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendCustomDxlValueRequest(null);
    if (msg.motor_type !== undefined) {
      resolved.motor_type = msg.motor_type;
    }
    else {
      resolved.motor_type = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.reg_address !== undefined) {
      resolved.reg_address = msg.reg_address;
    }
    else {
      resolved.reg_address = 0
    }

    if (msg.byte_number !== undefined) {
      resolved.byte_number = msg.byte_number;
    }
    else {
      resolved.byte_number = 0
    }

    return resolved;
    }
};

class SendCustomDxlValueResponse {
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
    // Serializes a message object of type SendCustomDxlValueResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCustomDxlValueResponse
    let len;
    let data = new SendCustomDxlValueResponse(null);
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
    return 'niryo_one_msgs/SendCustomDxlValueResponse';
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
    const resolved = new SendCustomDxlValueResponse(null);
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
  Request: SendCustomDxlValueRequest,
  Response: SendCustomDxlValueResponse,
  md5sum() { return '60887d5c990ef4cc959cd4f3646b638d'; },
  datatype() { return 'niryo_one_msgs/SendCustomDxlValue'; }
};
