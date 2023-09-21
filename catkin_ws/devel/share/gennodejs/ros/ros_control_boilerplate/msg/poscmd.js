// Auto-generated. Do not edit!

// (in-package ros_control_boilerplate.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class poscmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.cntlwd = null;
      this.tarpos = null;
      this.tolerant = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('cntlwd')) {
        this.cntlwd = initObj.cntlwd
      }
      else {
        this.cntlwd = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('tarpos')) {
        this.tarpos = initObj.tarpos
      }
      else {
        this.tarpos = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('tolerant')) {
        this.tolerant = initObj.tolerant
      }
      else {
        this.tolerant = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type poscmd
    // Serialize message field [cmd]
    bufferOffset = _serializer.uint16(obj.cmd, buffer, bufferOffset);
    // Check that the constant length array field [cntlwd] has the right length
    if (obj.cntlwd.length !== 6) {
      throw new Error('Unable to serialize array field cntlwd - length must be 6')
    }
    // Serialize message field [cntlwd]
    bufferOffset = _arraySerializer.uint16(obj.cntlwd, buffer, bufferOffset, 6);
    // Check that the constant length array field [tarpos] has the right length
    if (obj.tarpos.length !== 6) {
      throw new Error('Unable to serialize array field tarpos - length must be 6')
    }
    // Serialize message field [tarpos]
    bufferOffset = _arraySerializer.int32(obj.tarpos, buffer, bufferOffset, 6);
    // Check that the constant length array field [tolerant] has the right length
    if (obj.tolerant.length !== 6) {
      throw new Error('Unable to serialize array field tolerant - length must be 6')
    }
    // Serialize message field [tolerant]
    bufferOffset = _arraySerializer.uint16(obj.tolerant, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type poscmd
    let len;
    let data = new poscmd(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cntlwd]
    data.cntlwd = _arrayDeserializer.uint16(buffer, bufferOffset, 6)
    // Deserialize message field [tarpos]
    data.tarpos = _arrayDeserializer.int32(buffer, bufferOffset, 6)
    // Deserialize message field [tolerant]
    data.tolerant = _arrayDeserializer.uint16(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_control_boilerplate/poscmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd52264d0965d62e7c180d35534e09146';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 cmd
    uint16[6] cntlwd
    int32[6] tarpos
    uint16[6] tolerant
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new poscmd(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.cntlwd !== undefined) {
      resolved.cntlwd = msg.cntlwd;
    }
    else {
      resolved.cntlwd = new Array(6).fill(0)
    }

    if (msg.tarpos !== undefined) {
      resolved.tarpos = msg.tarpos;
    }
    else {
      resolved.tarpos = new Array(6).fill(0)
    }

    if (msg.tolerant !== undefined) {
      resolved.tolerant = msg.tolerant;
    }
    else {
      resolved.tolerant = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = poscmd;
