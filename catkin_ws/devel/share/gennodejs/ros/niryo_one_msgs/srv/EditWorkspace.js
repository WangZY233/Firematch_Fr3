// Auto-generated. Do not edit!

// (in-package niryo_one_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotState = require('../msg/RobotState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class EditWorkspaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.name = null;
      this.pose_origin = null;
      this.pose_1 = null;
      this.pose_2 = null;
      this.pose_3 = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('pose_origin')) {
        this.pose_origin = initObj.pose_origin
      }
      else {
        this.pose_origin = new RobotState();
      }
      if (initObj.hasOwnProperty('pose_1')) {
        this.pose_1 = initObj.pose_1
      }
      else {
        this.pose_1 = new RobotState();
      }
      if (initObj.hasOwnProperty('pose_2')) {
        this.pose_2 = initObj.pose_2
      }
      else {
        this.pose_2 = new RobotState();
      }
      if (initObj.hasOwnProperty('pose_3')) {
        this.pose_3 = initObj.pose_3
      }
      else {
        this.pose_3 = new RobotState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EditWorkspaceRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [pose_origin]
    bufferOffset = RobotState.serialize(obj.pose_origin, buffer, bufferOffset);
    // Serialize message field [pose_1]
    bufferOffset = RobotState.serialize(obj.pose_1, buffer, bufferOffset);
    // Serialize message field [pose_2]
    bufferOffset = RobotState.serialize(obj.pose_2, buffer, bufferOffset);
    // Serialize message field [pose_3]
    bufferOffset = RobotState.serialize(obj.pose_3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EditWorkspaceRequest
    let len;
    let data = new EditWorkspaceRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_origin]
    data.pose_origin = RobotState.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_1]
    data.pose_1 = RobotState.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_2]
    data.pose_2 = RobotState.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_3]
    data.pose_3 = RobotState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 200;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/EditWorkspaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba9b3580344c5b5274fc4771afa1010d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 CREATE = 1
    int32 REMOVE = -1
    
    int32 cmd
    string name
    niryo_one_msgs/RobotState pose_origin
    niryo_one_msgs/RobotState pose_1
    niryo_one_msgs/RobotState pose_2
    niryo_one_msgs/RobotState pose_3
    
    ================================================================================
    MSG: niryo_one_msgs/RobotState
    
    geometry_msgs/Point position
    niryo_one_msgs/RPY rpy
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: niryo_one_msgs/RPY
    # roll, pitch and yaw
    
    float64 roll
    float64 pitch
    float64 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EditWorkspaceRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.pose_origin !== undefined) {
      resolved.pose_origin = RobotState.Resolve(msg.pose_origin)
    }
    else {
      resolved.pose_origin = new RobotState()
    }

    if (msg.pose_1 !== undefined) {
      resolved.pose_1 = RobotState.Resolve(msg.pose_1)
    }
    else {
      resolved.pose_1 = new RobotState()
    }

    if (msg.pose_2 !== undefined) {
      resolved.pose_2 = RobotState.Resolve(msg.pose_2)
    }
    else {
      resolved.pose_2 = new RobotState()
    }

    if (msg.pose_3 !== undefined) {
      resolved.pose_3 = RobotState.Resolve(msg.pose_3)
    }
    else {
      resolved.pose_3 = new RobotState()
    }

    return resolved;
    }
};

// Constants for message
EditWorkspaceRequest.Constants = {
  CREATE: 1,
  REMOVE: -1,
}

class EditWorkspaceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EditWorkspaceResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EditWorkspaceResponse
    let len;
    let data = new EditWorkspaceResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/EditWorkspaceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c1d00fb8b4e78420f43d93d5292a429';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EditWorkspaceResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: EditWorkspaceRequest,
  Response: EditWorkspaceResponse,
  md5sum() { return 'd54856ae48391661101e9b86f647a340'; },
  datatype() { return 'niryo_one_msgs/EditWorkspace'; }
};
