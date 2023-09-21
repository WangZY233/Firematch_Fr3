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

class ToolCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tool_id = null;
      this.cmd_type = null;
      this.gripper_close_speed = null;
      this.gripper_open_speed = null;
      this.activate = null;
      this.gpio = null;
    }
    else {
      if (initObj.hasOwnProperty('tool_id')) {
        this.tool_id = initObj.tool_id
      }
      else {
        this.tool_id = 0;
      }
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('gripper_close_speed')) {
        this.gripper_close_speed = initObj.gripper_close_speed
      }
      else {
        this.gripper_close_speed = 0;
      }
      if (initObj.hasOwnProperty('gripper_open_speed')) {
        this.gripper_open_speed = initObj.gripper_open_speed
      }
      else {
        this.gripper_open_speed = 0;
      }
      if (initObj.hasOwnProperty('activate')) {
        this.activate = initObj.activate
      }
      else {
        this.activate = false;
      }
      if (initObj.hasOwnProperty('gpio')) {
        this.gpio = initObj.gpio
      }
      else {
        this.gpio = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToolCommand
    // Serialize message field [tool_id]
    bufferOffset = _serializer.uint8(obj.tool_id, buffer, bufferOffset);
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.uint8(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [gripper_close_speed]
    bufferOffset = _serializer.uint16(obj.gripper_close_speed, buffer, bufferOffset);
    // Serialize message field [gripper_open_speed]
    bufferOffset = _serializer.uint16(obj.gripper_open_speed, buffer, bufferOffset);
    // Serialize message field [activate]
    bufferOffset = _serializer.bool(obj.activate, buffer, bufferOffset);
    // Serialize message field [gpio]
    bufferOffset = _serializer.uint8(obj.gpio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToolCommand
    let len;
    let data = new ToolCommand(null);
    // Deserialize message field [tool_id]
    data.tool_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gripper_close_speed]
    data.gripper_close_speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gripper_open_speed]
    data.gripper_open_speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [activate]
    data.activate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gpio]
    data.gpio = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_one_msgs/ToolCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f7e2396c11f11b006af359f471f8457';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 tool_id
    uint8 cmd_type
    
    # if gripper close
    uint16 gripper_close_speed
    
    # if gripper open
    uint16 gripper_open_speed
    
    # if vacuum pump or electromagnet grove
    bool activate
    
    # if tool is set by digital outputs (electromagnet)
    uint8 gpio
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToolCommand(null);
    if (msg.tool_id !== undefined) {
      resolved.tool_id = msg.tool_id;
    }
    else {
      resolved.tool_id = 0
    }

    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.gripper_close_speed !== undefined) {
      resolved.gripper_close_speed = msg.gripper_close_speed;
    }
    else {
      resolved.gripper_close_speed = 0
    }

    if (msg.gripper_open_speed !== undefined) {
      resolved.gripper_open_speed = msg.gripper_open_speed;
    }
    else {
      resolved.gripper_open_speed = 0
    }

    if (msg.activate !== undefined) {
      resolved.activate = msg.activate;
    }
    else {
      resolved.activate = false
    }

    if (msg.gpio !== undefined) {
      resolved.gpio = msg.gpio;
    }
    else {
      resolved.gpio = 0
    }

    return resolved;
    }
};

module.exports = ToolCommand;
