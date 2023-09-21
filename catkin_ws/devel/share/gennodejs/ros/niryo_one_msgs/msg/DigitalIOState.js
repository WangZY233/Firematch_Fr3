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

class DigitalIOState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pins = null;
      this.names = null;
      this.modes = null;
      this.states = null;
    }
    else {
      if (initObj.hasOwnProperty('pins')) {
        this.pins = initObj.pins
      }
      else {
        this.pins = [];
      }
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('modes')) {
        this.modes = initObj.modes
      }
      else {
        this.modes = [];
      }
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigitalIOState
    // Serialize message field [pins]
    bufferOffset = _arraySerializer.int32(obj.pins, buffer, bufferOffset, null);
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [modes]
    bufferOffset = _arraySerializer.int32(obj.modes, buffer, bufferOffset, null);
    // Serialize message field [states]
    bufferOffset = _arraySerializer.int32(obj.states, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigitalIOState
    let len;
    let data = new DigitalIOState(null);
    // Deserialize message field [pins]
    data.pins = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [modes]
    data.modes = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [states]
    data.states = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pins.length;
    object.names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.modes.length;
    length += 4 * object.states.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_one_msgs/DigitalIOState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfb33e3a012d1027925934dc7f71fdc3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GPIO pin
    int32[] pins
    # PIN names seen by user to make it simpler
    string[] names
    # IN/OUT
    int32[] modes
    # HIGH/LOW
    int32[] states
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigitalIOState(null);
    if (msg.pins !== undefined) {
      resolved.pins = msg.pins;
    }
    else {
      resolved.pins = []
    }

    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.modes !== undefined) {
      resolved.modes = msg.modes;
    }
    else {
      resolved.modes = []
    }

    if (msg.states !== undefined) {
      resolved.states = msg.states;
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = DigitalIOState;
