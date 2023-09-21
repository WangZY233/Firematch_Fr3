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

class PullAirVacuumPumpRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pull_air_position = null;
      this.pull_air_hold_torque = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('pull_air_position')) {
        this.pull_air_position = initObj.pull_air_position
      }
      else {
        this.pull_air_position = 0;
      }
      if (initObj.hasOwnProperty('pull_air_hold_torque')) {
        this.pull_air_hold_torque = initObj.pull_air_hold_torque
      }
      else {
        this.pull_air_hold_torque = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PullAirVacuumPumpRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [pull_air_position]
    bufferOffset = _serializer.int16(obj.pull_air_position, buffer, bufferOffset);
    // Serialize message field [pull_air_hold_torque]
    bufferOffset = _serializer.int16(obj.pull_air_hold_torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PullAirVacuumPumpRequest
    let len;
    let data = new PullAirVacuumPumpRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pull_air_position]
    data.pull_air_position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pull_air_hold_torque]
    data.pull_air_hold_torque = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/PullAirVacuumPumpRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '191580013becfd5fe2083349ac710b01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    
    int16 pull_air_position
    int16 pull_air_hold_torque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PullAirVacuumPumpRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.pull_air_position !== undefined) {
      resolved.pull_air_position = msg.pull_air_position;
    }
    else {
      resolved.pull_air_position = 0
    }

    if (msg.pull_air_hold_torque !== undefined) {
      resolved.pull_air_hold_torque = msg.pull_air_hold_torque;
    }
    else {
      resolved.pull_air_hold_torque = 0
    }

    return resolved;
    }
};

class PullAirVacuumPumpResponse {
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
    // Serializes a message object of type PullAirVacuumPumpResponse
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PullAirVacuumPumpResponse
    let len;
    let data = new PullAirVacuumPumpResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/PullAirVacuumPumpResponse';
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
    const resolved = new PullAirVacuumPumpResponse(null);
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
  Request: PullAirVacuumPumpRequest,
  Response: PullAirVacuumPumpResponse,
  md5sum() { return 'fdd48b46d71dd8ff507dc76750227fa6'; },
  datatype() { return 'niryo_one_msgs/PullAirVacuumPump'; }
};
