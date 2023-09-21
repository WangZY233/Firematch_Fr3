// Auto-generated. Do not edit!

// (in-package niryo_one_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Position = require('../msg/Position.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ManagePositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.position_name = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('position_name')) {
        this.position_name = initObj.position_name
      }
      else {
        this.position_name = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Position();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManagePositionRequest
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.int32(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [position_name]
    bufferOffset = _serializer.string(obj.position_name, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Position.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManagePositionRequest
    let len;
    let data = new ManagePositionRequest(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_name]
    data.position_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Position.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.position_name);
    length += Position.getMessageSize(object.position);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/ManagePositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7489689e7c0b61df395f1006b4d834d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cmd_type
    
    string position_name
    niryo_one_msgs/Position position
    
    
    ================================================================================
    MSG: niryo_one_msgs/Position
    string name
    
    float64[] joints 
    niryo_one_msgs/RPY rpy
    geometry_msgs/Point point
    geometry_msgs/Quaternion quaternion
    
    
    ================================================================================
    MSG: niryo_one_msgs/RPY
    # roll, pitch and yaw
    
    float64 roll
    float64 pitch
    float64 yaw
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManagePositionRequest(null);
    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.position_name !== undefined) {
      resolved.position_name = msg.position_name;
    }
    else {
      resolved.position_name = ''
    }

    if (msg.position !== undefined) {
      resolved.position = Position.Resolve(msg.position)
    }
    else {
      resolved.position = new Position()
    }

    return resolved;
    }
};

class ManagePositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.position = null;
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
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Position();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManagePositionResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Position.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManagePositionResponse
    let len;
    let data = new ManagePositionResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Position.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += Position.getMessageSize(object.position);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/ManagePositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0bfc71def0391c7cb33d092741f6f696';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    niryo_one_msgs/Position position 
    
    
    ================================================================================
    MSG: niryo_one_msgs/Position
    string name
    
    float64[] joints 
    niryo_one_msgs/RPY rpy
    geometry_msgs/Point point
    geometry_msgs/Quaternion quaternion
    
    
    ================================================================================
    MSG: niryo_one_msgs/RPY
    # roll, pitch and yaw
    
    float64 roll
    float64 pitch
    float64 yaw
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManagePositionResponse(null);
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

    if (msg.position !== undefined) {
      resolved.position = Position.Resolve(msg.position)
    }
    else {
      resolved.position = new Position()
    }

    return resolved;
    }
};

module.exports = {
  Request: ManagePositionRequest,
  Response: ManagePositionResponse,
  md5sum() { return 'adf4e061b0eee7a4afcbede59727e52a'; },
  datatype() { return 'niryo_one_msgs/ManagePosition'; }
};
