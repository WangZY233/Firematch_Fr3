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

class ConveyorFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.conveyor_id = null;
      this.connection_state = null;
      this.running = null;
      this.speed = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('conveyor_id')) {
        this.conveyor_id = initObj.conveyor_id
      }
      else {
        this.conveyor_id = 0;
      }
      if (initObj.hasOwnProperty('connection_state')) {
        this.connection_state = initObj.connection_state
      }
      else {
        this.connection_state = false;
      }
      if (initObj.hasOwnProperty('running')) {
        this.running = initObj.running
      }
      else {
        this.running = false;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConveyorFeedback
    // Serialize message field [conveyor_id]
    bufferOffset = _serializer.uint8(obj.conveyor_id, buffer, bufferOffset);
    // Serialize message field [connection_state]
    bufferOffset = _serializer.bool(obj.connection_state, buffer, bufferOffset);
    // Serialize message field [running]
    bufferOffset = _serializer.bool(obj.running, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.int16(obj.speed, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int8(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConveyorFeedback
    let len;
    let data = new ConveyorFeedback(null);
    // Deserialize message field [conveyor_id]
    data.conveyor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [connection_state]
    data.connection_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [running]
    data.running = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_one_msgs/ConveyorFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e7764cd998f86f936c67fc5b79bd288';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #Conveyor id ( either 6 or 7) 
    uint8 conveyor_id
    #Conveyor Connection state ( if it is enabled) 
    bool connection_state
    # Conveyor Controls state : ON or OFF
    bool running
    # Conveyor Speed ( 1-> 100 %)
    int16 speed
    # Conveyor direction ( backward or forward)
    int8 direction
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConveyorFeedback(null);
    if (msg.conveyor_id !== undefined) {
      resolved.conveyor_id = msg.conveyor_id;
    }
    else {
      resolved.conveyor_id = 0
    }

    if (msg.connection_state !== undefined) {
      resolved.connection_state = msg.connection_state;
    }
    else {
      resolved.connection_state = false
    }

    if (msg.running !== undefined) {
      resolved.running = msg.running;
    }
    else {
      resolved.running = false
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    return resolved;
    }
};

module.exports = ConveyorFeedback;
