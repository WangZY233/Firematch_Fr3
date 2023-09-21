// Auto-generated. Do not edit!

// (in-package niryo_one_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Sequence = require('../msg/Sequence.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ManageSequenceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.sequence_id = null;
      this.sequence = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('sequence_id')) {
        this.sequence_id = initObj.sequence_id
      }
      else {
        this.sequence_id = 0;
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = new Sequence();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManageSequenceRequest
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.int32(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [sequence_id]
    bufferOffset = _serializer.int32(obj.sequence_id, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = Sequence.serialize(obj.sequence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageSequenceRequest
    let len;
    let data = new ManageSequenceRequest(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sequence_id]
    data.sequence_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = Sequence.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Sequence.getMessageSize(object.sequence);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/ManageSequenceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da644ff8e5065e5598b50f9f1180dd4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cmd_type
    
    int32 sequence_id
    niryo_one_msgs/Sequence sequence
    
    
    ================================================================================
    MSG: niryo_one_msgs/Sequence
    int32 id
    string name
    string description
    
    int32 created
    int32 updated
    
    string blockly_xml
    string python_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManageSequenceRequest(null);
    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.sequence_id !== undefined) {
      resolved.sequence_id = msg.sequence_id;
    }
    else {
      resolved.sequence_id = 0
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = Sequence.Resolve(msg.sequence)
    }
    else {
      resolved.sequence = new Sequence()
    }

    return resolved;
    }
};

class ManageSequenceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.sequence = null;
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
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = new Sequence();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManageSequenceResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = Sequence.serialize(obj.sequence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageSequenceResponse
    let len;
    let data = new ManageSequenceResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = Sequence.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += Sequence.getMessageSize(object.sequence);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/ManageSequenceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aaa53fce535ae8c2e063d1fd74a644da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    niryo_one_msgs/Sequence sequence
    
    
    ================================================================================
    MSG: niryo_one_msgs/Sequence
    int32 id
    string name
    string description
    
    int32 created
    int32 updated
    
    string blockly_xml
    string python_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManageSequenceResponse(null);
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

    if (msg.sequence !== undefined) {
      resolved.sequence = Sequence.Resolve(msg.sequence)
    }
    else {
      resolved.sequence = new Sequence()
    }

    return resolved;
    }
};

module.exports = {
  Request: ManageSequenceRequest,
  Response: ManageSequenceResponse,
  md5sum() { return '10143a290fd01d09f121d3105d3730fd'; },
  datatype() { return 'niryo_one_msgs/ManageSequence'; }
};
