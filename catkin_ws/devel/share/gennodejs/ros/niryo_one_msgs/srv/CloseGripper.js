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

class CloseGripperRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.close_position = null;
      this.close_speed = null;
      this.close_hold_torque = null;
      this.close_max_torque = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('close_position')) {
        this.close_position = initObj.close_position
      }
      else {
        this.close_position = 0;
      }
      if (initObj.hasOwnProperty('close_speed')) {
        this.close_speed = initObj.close_speed
      }
      else {
        this.close_speed = 0;
      }
      if (initObj.hasOwnProperty('close_hold_torque')) {
        this.close_hold_torque = initObj.close_hold_torque
      }
      else {
        this.close_hold_torque = 0;
      }
      if (initObj.hasOwnProperty('close_max_torque')) {
        this.close_max_torque = initObj.close_max_torque
      }
      else {
        this.close_max_torque = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CloseGripperRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [close_position]
    bufferOffset = _serializer.int16(obj.close_position, buffer, bufferOffset);
    // Serialize message field [close_speed]
    bufferOffset = _serializer.int16(obj.close_speed, buffer, bufferOffset);
    // Serialize message field [close_hold_torque]
    bufferOffset = _serializer.int16(obj.close_hold_torque, buffer, bufferOffset);
    // Serialize message field [close_max_torque]
    bufferOffset = _serializer.int16(obj.close_max_torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CloseGripperRequest
    let len;
    let data = new CloseGripperRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [close_position]
    data.close_position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [close_speed]
    data.close_speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [close_hold_torque]
    data.close_hold_torque = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [close_max_torque]
    data.close_max_torque = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/CloseGripperRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44ae3b67a5ebbc045039caba07d974fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 id
    
    int16 close_position
    int16 close_speed
    int16 close_hold_torque
    int16 close_max_torque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CloseGripperRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.close_position !== undefined) {
      resolved.close_position = msg.close_position;
    }
    else {
      resolved.close_position = 0
    }

    if (msg.close_speed !== undefined) {
      resolved.close_speed = msg.close_speed;
    }
    else {
      resolved.close_speed = 0
    }

    if (msg.close_hold_torque !== undefined) {
      resolved.close_hold_torque = msg.close_hold_torque;
    }
    else {
      resolved.close_hold_torque = 0
    }

    if (msg.close_max_torque !== undefined) {
      resolved.close_max_torque = msg.close_max_torque;
    }
    else {
      resolved.close_max_torque = 0
    }

    return resolved;
    }
};

class CloseGripperResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CloseGripperResponse
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CloseGripperResponse
    let len;
    let data = new CloseGripperResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/CloseGripperResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '800f34bc468def1d86e2d42bea5648c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CloseGripperResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: CloseGripperRequest,
  Response: CloseGripperResponse,
  md5sum() { return '04901e0d312f8ee9c675fc0042c3a8e4'; },
  datatype() { return 'niryo_one_msgs/CloseGripper'; }
};
