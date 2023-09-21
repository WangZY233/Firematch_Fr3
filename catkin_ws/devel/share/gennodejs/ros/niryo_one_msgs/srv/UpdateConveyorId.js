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

class UpdateConveyorIdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.old_id = null;
      this.new_id = null;
    }
    else {
      if (initObj.hasOwnProperty('old_id')) {
        this.old_id = initObj.old_id
      }
      else {
        this.old_id = 0;
      }
      if (initObj.hasOwnProperty('new_id')) {
        this.new_id = initObj.new_id
      }
      else {
        this.new_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateConveyorIdRequest
    // Serialize message field [old_id]
    bufferOffset = _serializer.uint8(obj.old_id, buffer, bufferOffset);
    // Serialize message field [new_id]
    bufferOffset = _serializer.uint8(obj.new_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateConveyorIdRequest
    let len;
    let data = new UpdateConveyorIdRequest(null);
    // Deserialize message field [old_id]
    data.old_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [new_id]
    data.new_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/UpdateConveyorIdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e7bf0b60e9cee26653ed700a1f3581c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 old_id
    uint8 new_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateConveyorIdRequest(null);
    if (msg.old_id !== undefined) {
      resolved.old_id = msg.old_id;
    }
    else {
      resolved.old_id = 0
    }

    if (msg.new_id !== undefined) {
      resolved.new_id = msg.new_id;
    }
    else {
      resolved.new_id = 0
    }

    return resolved;
    }
};

class UpdateConveyorIdResponse {
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
    // Serializes a message object of type UpdateConveyorIdResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateConveyorIdResponse
    let len;
    let data = new UpdateConveyorIdResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/UpdateConveyorIdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '684cd572f268bd9685a29b0430c41747';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateConveyorIdResponse(null);
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
  Request: UpdateConveyorIdRequest,
  Response: UpdateConveyorIdResponse,
  md5sum() { return '9e9cf49bb2af3c06095ed6c4f8b6cef4'; },
  datatype() { return 'niryo_one_msgs/UpdateConveyorId'; }
};
