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

class ChangeMotorConfigRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can_required_motor_id_list = null;
      this.dxl_required_motor_id_list = null;
    }
    else {
      if (initObj.hasOwnProperty('can_required_motor_id_list')) {
        this.can_required_motor_id_list = initObj.can_required_motor_id_list
      }
      else {
        this.can_required_motor_id_list = [];
      }
      if (initObj.hasOwnProperty('dxl_required_motor_id_list')) {
        this.dxl_required_motor_id_list = initObj.dxl_required_motor_id_list
      }
      else {
        this.dxl_required_motor_id_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeMotorConfigRequest
    // Serialize message field [can_required_motor_id_list]
    bufferOffset = _arraySerializer.int32(obj.can_required_motor_id_list, buffer, bufferOffset, null);
    // Serialize message field [dxl_required_motor_id_list]
    bufferOffset = _arraySerializer.int32(obj.dxl_required_motor_id_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeMotorConfigRequest
    let len;
    let data = new ChangeMotorConfigRequest(null);
    // Deserialize message field [can_required_motor_id_list]
    data.can_required_motor_id_list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [dxl_required_motor_id_list]
    data.dxl_required_motor_id_list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.can_required_motor_id_list.length;
    length += 4 * object.dxl_required_motor_id_list.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/ChangeMotorConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e2ce6fc69b92fe327fc570d69342705';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] can_required_motor_id_list
    int32[] dxl_required_motor_id_list
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeMotorConfigRequest(null);
    if (msg.can_required_motor_id_list !== undefined) {
      resolved.can_required_motor_id_list = msg.can_required_motor_id_list;
    }
    else {
      resolved.can_required_motor_id_list = []
    }

    if (msg.dxl_required_motor_id_list !== undefined) {
      resolved.dxl_required_motor_id_list = msg.dxl_required_motor_id_list;
    }
    else {
      resolved.dxl_required_motor_id_list = []
    }

    return resolved;
    }
};

class ChangeMotorConfigResponse {
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
    // Serializes a message object of type ChangeMotorConfigResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeMotorConfigResponse
    let len;
    let data = new ChangeMotorConfigResponse(null);
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
    return 'niryo_one_msgs/ChangeMotorConfigResponse';
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
    const resolved = new ChangeMotorConfigResponse(null);
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
  Request: ChangeMotorConfigRequest,
  Response: ChangeMotorConfigResponse,
  md5sum() { return '4656a66d9c8c003dc0f8aa40d5770162'; },
  datatype() { return 'niryo_one_msgs/ChangeMotorConfig'; }
};
