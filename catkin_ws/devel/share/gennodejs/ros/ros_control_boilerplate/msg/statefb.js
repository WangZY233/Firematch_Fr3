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

class statefb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statuswd = null;
      this.actpos = null;
      this.err = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('statuswd')) {
        this.statuswd = initObj.statuswd
      }
      else {
        this.statuswd = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('actpos')) {
        this.actpos = initObj.actpos
      }
      else {
        this.actpos = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('err')) {
        this.err = initObj.err
      }
      else {
        this.err = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type statefb
    // Check that the constant length array field [statuswd] has the right length
    if (obj.statuswd.length !== 6) {
      throw new Error('Unable to serialize array field statuswd - length must be 6')
    }
    // Serialize message field [statuswd]
    bufferOffset = _arraySerializer.uint16(obj.statuswd, buffer, bufferOffset, 6);
    // Check that the constant length array field [actpos] has the right length
    if (obj.actpos.length !== 6) {
      throw new Error('Unable to serialize array field actpos - length must be 6')
    }
    // Serialize message field [actpos]
    bufferOffset = _arraySerializer.int32(obj.actpos, buffer, bufferOffset, 6);
    // Check that the constant length array field [err] has the right length
    if (obj.err.length !== 6) {
      throw new Error('Unable to serialize array field err - length must be 6')
    }
    // Serialize message field [err]
    bufferOffset = _arraySerializer.uint16(obj.err, buffer, bufferOffset, 6);
    // Check that the constant length array field [torque] has the right length
    if (obj.torque.length !== 6) {
      throw new Error('Unable to serialize array field torque - length must be 6')
    }
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.int16(obj.torque, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type statefb
    let len;
    let data = new statefb(null);
    // Deserialize message field [statuswd]
    data.statuswd = _arrayDeserializer.uint16(buffer, bufferOffset, 6)
    // Deserialize message field [actpos]
    data.actpos = _arrayDeserializer.int32(buffer, bufferOffset, 6)
    // Deserialize message field [err]
    data.err = _arrayDeserializer.uint16(buffer, bufferOffset, 6)
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.int16(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_control_boilerplate/statefb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ea94b11d87b20693912a0151f6e0d36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16[6] statuswd
    int32[6] actpos
    uint16[6] err
    int16[6] torque
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new statefb(null);
    if (msg.statuswd !== undefined) {
      resolved.statuswd = msg.statuswd;
    }
    else {
      resolved.statuswd = new Array(6).fill(0)
    }

    if (msg.actpos !== undefined) {
      resolved.actpos = msg.actpos;
    }
    else {
      resolved.actpos = new Array(6).fill(0)
    }

    if (msg.err !== undefined) {
      resolved.err = msg.err;
    }
    else {
      resolved.err = new Array(6).fill(0)
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = statefb;
