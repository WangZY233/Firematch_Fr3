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

class GetWorkspaceListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWorkspaceListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWorkspaceListRequest
    let len;
    let data = new GetWorkspaceListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/GetWorkspaceListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWorkspaceListRequest(null);
    return resolved;
    }
};

class GetWorkspaceListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.workspaces = null;
    }
    else {
      if (initObj.hasOwnProperty('workspaces')) {
        this.workspaces = initObj.workspaces
      }
      else {
        this.workspaces = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWorkspaceListResponse
    // Serialize message field [workspaces]
    bufferOffset = _arraySerializer.string(obj.workspaces, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWorkspaceListResponse
    let len;
    let data = new GetWorkspaceListResponse(null);
    // Deserialize message field [workspaces]
    data.workspaces = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.workspaces.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/GetWorkspaceListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b36c598e23fd962676550874c6879f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] workspaces
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWorkspaceListResponse(null);
    if (msg.workspaces !== undefined) {
      resolved.workspaces = msg.workspaces;
    }
    else {
      resolved.workspaces = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWorkspaceListRequest,
  Response: GetWorkspaceListResponse,
  md5sum() { return '8b36c598e23fd962676550874c6879f7'; },
  datatype() { return 'niryo_one_msgs/GetWorkspaceList'; }
};
