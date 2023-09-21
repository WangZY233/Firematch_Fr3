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

let Sequence = require('../msg/Sequence.js');

//-----------------------------------------------------------

class GetSequenceListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info_header_only = null;
    }
    else {
      if (initObj.hasOwnProperty('info_header_only')) {
        this.info_header_only = initObj.info_header_only
      }
      else {
        this.info_header_only = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSequenceListRequest
    // Serialize message field [info_header_only]
    bufferOffset = _serializer.bool(obj.info_header_only, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSequenceListRequest
    let len;
    let data = new GetSequenceListRequest(null);
    // Deserialize message field [info_header_only]
    data.info_header_only = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/GetSequenceListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4fb5fb836b8f25a9ed3470500197359';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool info_header_only
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSequenceListRequest(null);
    if (msg.info_header_only !== undefined) {
      resolved.info_header_only = msg.info_header_only;
    }
    else {
      resolved.info_header_only = false
    }

    return resolved;
    }
};

class GetSequenceListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sequences = null;
    }
    else {
      if (initObj.hasOwnProperty('sequences')) {
        this.sequences = initObj.sequences
      }
      else {
        this.sequences = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSequenceListResponse
    // Serialize message field [sequences]
    // Serialize the length for message field [sequences]
    bufferOffset = _serializer.uint32(obj.sequences.length, buffer, bufferOffset);
    obj.sequences.forEach((val) => {
      bufferOffset = Sequence.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSequenceListResponse
    let len;
    let data = new GetSequenceListResponse(null);
    // Deserialize message field [sequences]
    // Deserialize array length for message field [sequences]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sequences = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sequences[i] = Sequence.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.sequences.forEach((val) => {
      length += Sequence.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/GetSequenceListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b17e9078cd2c2cefb602b6ae4528eba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    niryo_one_msgs/Sequence[] sequences
    
    
    
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
    const resolved = new GetSequenceListResponse(null);
    if (msg.sequences !== undefined) {
      resolved.sequences = new Array(msg.sequences.length);
      for (let i = 0; i < resolved.sequences.length; ++i) {
        resolved.sequences[i] = Sequence.Resolve(msg.sequences[i]);
      }
    }
    else {
      resolved.sequences = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSequenceListRequest,
  Response: GetSequenceListResponse,
  md5sum() { return 'fc93b5ac839706215135d7128129cf9a'; },
  datatype() { return 'niryo_one_msgs/GetSequenceList'; }
};
