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

class PushAirVacuumPumpRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.push_air_position = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('push_air_position')) {
        this.push_air_position = initObj.push_air_position
      }
      else {
        this.push_air_position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PushAirVacuumPumpRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [push_air_position]
    bufferOffset = _serializer.int16(obj.push_air_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PushAirVacuumPumpRequest
    let len;
    let data = new PushAirVacuumPumpRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [push_air_position]
    data.push_air_position = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/PushAirVacuumPumpRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '241a1d54cb582cd640291974c0311e9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    
    int16 push_air_position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PushAirVacuumPumpRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.push_air_position !== undefined) {
      resolved.push_air_position = msg.push_air_position;
    }
    else {
      resolved.push_air_position = 0
    }

    return resolved;
    }
};

class PushAirVacuumPumpResponse {
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
    // Serializes a message object of type PushAirVacuumPumpResponse
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PushAirVacuumPumpResponse
    let len;
    let data = new PushAirVacuumPumpResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/PushAirVacuumPumpResponse';
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
    const resolved = new PushAirVacuumPumpResponse(null);
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
  Request: PushAirVacuumPumpRequest,
  Response: PushAirVacuumPumpResponse,
  md5sum() { return '41cc870230024f471ead928a5e8205a0'; },
  datatype() { return 'niryo_one_msgs/PushAirVacuumPump'; }
};
