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

class OpenGripperRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.open_position = null;
      this.open_speed = null;
      this.open_hold_torque = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('open_position')) {
        this.open_position = initObj.open_position
      }
      else {
        this.open_position = 0;
      }
      if (initObj.hasOwnProperty('open_speed')) {
        this.open_speed = initObj.open_speed
      }
      else {
        this.open_speed = 0;
      }
      if (initObj.hasOwnProperty('open_hold_torque')) {
        this.open_hold_torque = initObj.open_hold_torque
      }
      else {
        this.open_hold_torque = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OpenGripperRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [open_position]
    bufferOffset = _serializer.int16(obj.open_position, buffer, bufferOffset);
    // Serialize message field [open_speed]
    bufferOffset = _serializer.int16(obj.open_speed, buffer, bufferOffset);
    // Serialize message field [open_hold_torque]
    bufferOffset = _serializer.int16(obj.open_hold_torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OpenGripperRequest
    let len;
    let data = new OpenGripperRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [open_position]
    data.open_position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [open_speed]
    data.open_speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [open_hold_torque]
    data.open_hold_torque = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/OpenGripperRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcf0f25a53019052992fbcb00df9771a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 id
    
    int16 open_position
    int16 open_speed
    int16 open_hold_torque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OpenGripperRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.open_position !== undefined) {
      resolved.open_position = msg.open_position;
    }
    else {
      resolved.open_position = 0
    }

    if (msg.open_speed !== undefined) {
      resolved.open_speed = msg.open_speed;
    }
    else {
      resolved.open_speed = 0
    }

    if (msg.open_hold_torque !== undefined) {
      resolved.open_hold_torque = msg.open_hold_torque;
    }
    else {
      resolved.open_hold_torque = 0
    }

    return resolved;
    }
};

class OpenGripperResponse {
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
    // Serializes a message object of type OpenGripperResponse
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OpenGripperResponse
    let len;
    let data = new OpenGripperResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/OpenGripperResponse';
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
    const resolved = new OpenGripperResponse(null);
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
  Request: OpenGripperRequest,
  Response: OpenGripperResponse,
  md5sum() { return '8fa16a49b77c971df71ae1d221893f06'; },
  datatype() { return 'niryo_one_msgs/OpenGripper'; }
};
