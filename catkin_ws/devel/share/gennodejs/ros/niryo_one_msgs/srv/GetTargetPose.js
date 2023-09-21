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

let RobotState = require('../msg/RobotState.js');

//-----------------------------------------------------------

class GetTargetPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.workspace = null;
      this.grip = null;
      this.tool_id = null;
      this.height_offset = null;
      this.x_rel = null;
      this.y_rel = null;
      this.yaw_rel = null;
    }
    else {
      if (initObj.hasOwnProperty('workspace')) {
        this.workspace = initObj.workspace
      }
      else {
        this.workspace = '';
      }
      if (initObj.hasOwnProperty('grip')) {
        this.grip = initObj.grip
      }
      else {
        this.grip = '';
      }
      if (initObj.hasOwnProperty('tool_id')) {
        this.tool_id = initObj.tool_id
      }
      else {
        this.tool_id = 0;
      }
      if (initObj.hasOwnProperty('height_offset')) {
        this.height_offset = initObj.height_offset
      }
      else {
        this.height_offset = 0.0;
      }
      if (initObj.hasOwnProperty('x_rel')) {
        this.x_rel = initObj.x_rel
      }
      else {
        this.x_rel = 0.0;
      }
      if (initObj.hasOwnProperty('y_rel')) {
        this.y_rel = initObj.y_rel
      }
      else {
        this.y_rel = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rel')) {
        this.yaw_rel = initObj.yaw_rel
      }
      else {
        this.yaw_rel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTargetPoseRequest
    // Serialize message field [workspace]
    bufferOffset = _serializer.string(obj.workspace, buffer, bufferOffset);
    // Serialize message field [grip]
    bufferOffset = _serializer.string(obj.grip, buffer, bufferOffset);
    // Serialize message field [tool_id]
    bufferOffset = _serializer.int32(obj.tool_id, buffer, bufferOffset);
    // Serialize message field [height_offset]
    bufferOffset = _serializer.float32(obj.height_offset, buffer, bufferOffset);
    // Serialize message field [x_rel]
    bufferOffset = _serializer.float32(obj.x_rel, buffer, bufferOffset);
    // Serialize message field [y_rel]
    bufferOffset = _serializer.float32(obj.y_rel, buffer, bufferOffset);
    // Serialize message field [yaw_rel]
    bufferOffset = _serializer.float32(obj.yaw_rel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTargetPoseRequest
    let len;
    let data = new GetTargetPoseRequest(null);
    // Deserialize message field [workspace]
    data.workspace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [grip]
    data.grip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tool_id]
    data.tool_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height_offset]
    data.height_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_rel]
    data.x_rel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_rel]
    data.y_rel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_rel]
    data.yaw_rel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.workspace);
    length += _getByteLength(object.grip);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/GetTargetPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '102311ad973ac34de88eb133d488960a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string GRIP_AUTO = auto
    
    string workspace
    string grip
    int32 tool_id           # Used if grip_name = GRIP_AUTO
    float32 height_offset
    float32 x_rel
    float32 y_rel
    float32 yaw_rel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTargetPoseRequest(null);
    if (msg.workspace !== undefined) {
      resolved.workspace = msg.workspace;
    }
    else {
      resolved.workspace = ''
    }

    if (msg.grip !== undefined) {
      resolved.grip = msg.grip;
    }
    else {
      resolved.grip = ''
    }

    if (msg.tool_id !== undefined) {
      resolved.tool_id = msg.tool_id;
    }
    else {
      resolved.tool_id = 0
    }

    if (msg.height_offset !== undefined) {
      resolved.height_offset = msg.height_offset;
    }
    else {
      resolved.height_offset = 0.0
    }

    if (msg.x_rel !== undefined) {
      resolved.x_rel = msg.x_rel;
    }
    else {
      resolved.x_rel = 0.0
    }

    if (msg.y_rel !== undefined) {
      resolved.y_rel = msg.y_rel;
    }
    else {
      resolved.y_rel = 0.0
    }

    if (msg.yaw_rel !== undefined) {
      resolved.yaw_rel = msg.yaw_rel;
    }
    else {
      resolved.yaw_rel = 0.0
    }

    return resolved;
    }
};

// Constants for message
GetTargetPoseRequest.Constants = {
  GRIP_AUTO: 'auto',
}

class GetTargetPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.target_pose = null;
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
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new RobotState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTargetPoseResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [target_pose]
    bufferOffset = RobotState.serialize(obj.target_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTargetPoseResponse
    let len;
    let data = new GetTargetPoseResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_pose]
    data.target_pose = RobotState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/GetTargetPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b7a24f6dc34ac098e250d656dd24cb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    niryo_one_msgs/RobotState target_pose
    
    
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
    const resolved = new GetTargetPoseResponse(null);
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

    if (msg.target_pose !== undefined) {
      resolved.target_pose = RobotState.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new RobotState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTargetPoseRequest,
  Response: GetTargetPoseResponse,
  md5sum() { return 'dc01ee317d0bd0fbdd3c0d39de43fdb8'; },
  datatype() { return 'niryo_one_msgs/GetTargetPose'; }
};
