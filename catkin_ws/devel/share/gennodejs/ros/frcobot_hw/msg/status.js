// Auto-generated. Do not edit!

// (in-package frcobot_hw.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frame_count = null;
      this.program_state = null;
      this.error_code = null;
      this.robot_mode = null;
      this.cur_joints_pose = null;
      this.cur_tcp_pose = null;
      this.cur_joints_torque = null;
      this.tool_num = null;
      this.cl_dgt_output_h = null;
      this.cl_dgt_output_l = null;
      this.tl_dgt_output_l = null;
      this.robot_motion_done = null;
      this.gripper_motion_done = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frame_count')) {
        this.frame_count = initObj.frame_count
      }
      else {
        this.frame_count = 0;
      }
      if (initObj.hasOwnProperty('program_state')) {
        this.program_state = initObj.program_state
      }
      else {
        this.program_state = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('robot_mode')) {
        this.robot_mode = initObj.robot_mode
      }
      else {
        this.robot_mode = 0;
      }
      if (initObj.hasOwnProperty('cur_joints_pose')) {
        this.cur_joints_pose = initObj.cur_joints_pose
      }
      else {
        this.cur_joints_pose = [];
      }
      if (initObj.hasOwnProperty('cur_tcp_pose')) {
        this.cur_tcp_pose = initObj.cur_tcp_pose
      }
      else {
        this.cur_tcp_pose = [];
      }
      if (initObj.hasOwnProperty('cur_joints_torque')) {
        this.cur_joints_torque = initObj.cur_joints_torque
      }
      else {
        this.cur_joints_torque = [];
      }
      if (initObj.hasOwnProperty('tool_num')) {
        this.tool_num = initObj.tool_num
      }
      else {
        this.tool_num = 0;
      }
      if (initObj.hasOwnProperty('cl_dgt_output_h')) {
        this.cl_dgt_output_h = initObj.cl_dgt_output_h
      }
      else {
        this.cl_dgt_output_h = [];
      }
      if (initObj.hasOwnProperty('cl_dgt_output_l')) {
        this.cl_dgt_output_l = initObj.cl_dgt_output_l
      }
      else {
        this.cl_dgt_output_l = [];
      }
      if (initObj.hasOwnProperty('tl_dgt_output_l')) {
        this.tl_dgt_output_l = initObj.tl_dgt_output_l
      }
      else {
        this.tl_dgt_output_l = [];
      }
      if (initObj.hasOwnProperty('robot_motion_done')) {
        this.robot_motion_done = initObj.robot_motion_done
      }
      else {
        this.robot_motion_done = 0;
      }
      if (initObj.hasOwnProperty('gripper_motion_done')) {
        this.gripper_motion_done = initObj.gripper_motion_done
      }
      else {
        this.gripper_motion_done = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frame_count]
    bufferOffset = _serializer.uint8(obj.frame_count, buffer, bufferOffset);
    // Serialize message field [program_state]
    bufferOffset = _serializer.uint8(obj.program_state, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [robot_mode]
    bufferOffset = _serializer.uint8(obj.robot_mode, buffer, bufferOffset);
    // Serialize message field [cur_joints_pose]
    bufferOffset = _arraySerializer.float64(obj.cur_joints_pose, buffer, bufferOffset, null);
    // Serialize message field [cur_tcp_pose]
    bufferOffset = _arraySerializer.float64(obj.cur_tcp_pose, buffer, bufferOffset, null);
    // Serialize message field [cur_joints_torque]
    bufferOffset = _arraySerializer.float64(obj.cur_joints_torque, buffer, bufferOffset, null);
    // Serialize message field [tool_num]
    bufferOffset = _serializer.uint8(obj.tool_num, buffer, bufferOffset);
    // Serialize message field [cl_dgt_output_h]
    bufferOffset = _arraySerializer.uint8(obj.cl_dgt_output_h, buffer, bufferOffset, null);
    // Serialize message field [cl_dgt_output_l]
    bufferOffset = _arraySerializer.uint8(obj.cl_dgt_output_l, buffer, bufferOffset, null);
    // Serialize message field [tl_dgt_output_l]
    bufferOffset = _arraySerializer.uint8(obj.tl_dgt_output_l, buffer, bufferOffset, null);
    // Serialize message field [robot_motion_done]
    bufferOffset = _serializer.uint8(obj.robot_motion_done, buffer, bufferOffset);
    // Serialize message field [gripper_motion_done]
    bufferOffset = _serializer.uint8(obj.gripper_motion_done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type status
    let len;
    let data = new status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_count]
    data.frame_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [program_state]
    data.program_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [robot_mode]
    data.robot_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cur_joints_pose]
    data.cur_joints_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [cur_tcp_pose]
    data.cur_tcp_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [cur_joints_torque]
    data.cur_joints_torque = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tool_num]
    data.tool_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cl_dgt_output_h]
    data.cl_dgt_output_h = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [cl_dgt_output_l]
    data.cl_dgt_output_l = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [tl_dgt_output_l]
    data.tl_dgt_output_l = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [robot_motion_done]
    data.robot_motion_done = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gripper_motion_done]
    data.gripper_motion_done = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.cur_joints_pose.length;
    length += 8 * object.cur_tcp_pose.length;
    length += 8 * object.cur_joints_torque.length;
    length += object.cl_dgt_output_h.length;
    length += object.cl_dgt_output_l.length;
    length += object.tl_dgt_output_l.length;
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frcobot_hw/status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e57754ebead024561f206770f4ce276';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint8 frame_count
    uint8 program_state
    uint8 error_code
    uint8 robot_mode
    float64[] cur_joints_pose
    float64[] cur_tcp_pose
    float64[] cur_joints_torque
    uint8 tool_num
    uint8[] cl_dgt_output_h
    uint8[] cl_dgt_output_l
    uint8[] tl_dgt_output_l
    uint8 robot_motion_done
    uint8 gripper_motion_done
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frame_count !== undefined) {
      resolved.frame_count = msg.frame_count;
    }
    else {
      resolved.frame_count = 0
    }

    if (msg.program_state !== undefined) {
      resolved.program_state = msg.program_state;
    }
    else {
      resolved.program_state = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.robot_mode !== undefined) {
      resolved.robot_mode = msg.robot_mode;
    }
    else {
      resolved.robot_mode = 0
    }

    if (msg.cur_joints_pose !== undefined) {
      resolved.cur_joints_pose = msg.cur_joints_pose;
    }
    else {
      resolved.cur_joints_pose = []
    }

    if (msg.cur_tcp_pose !== undefined) {
      resolved.cur_tcp_pose = msg.cur_tcp_pose;
    }
    else {
      resolved.cur_tcp_pose = []
    }

    if (msg.cur_joints_torque !== undefined) {
      resolved.cur_joints_torque = msg.cur_joints_torque;
    }
    else {
      resolved.cur_joints_torque = []
    }

    if (msg.tool_num !== undefined) {
      resolved.tool_num = msg.tool_num;
    }
    else {
      resolved.tool_num = 0
    }

    if (msg.cl_dgt_output_h !== undefined) {
      resolved.cl_dgt_output_h = msg.cl_dgt_output_h;
    }
    else {
      resolved.cl_dgt_output_h = []
    }

    if (msg.cl_dgt_output_l !== undefined) {
      resolved.cl_dgt_output_l = msg.cl_dgt_output_l;
    }
    else {
      resolved.cl_dgt_output_l = []
    }

    if (msg.tl_dgt_output_l !== undefined) {
      resolved.tl_dgt_output_l = msg.tl_dgt_output_l;
    }
    else {
      resolved.tl_dgt_output_l = []
    }

    if (msg.robot_motion_done !== undefined) {
      resolved.robot_motion_done = msg.robot_motion_done;
    }
    else {
      resolved.robot_motion_done = 0
    }

    if (msg.gripper_motion_done !== undefined) {
      resolved.gripper_motion_done = msg.gripper_motion_done;
    }
    else {
      resolved.gripper_motion_done = 0
    }

    return resolved;
    }
};

module.exports = status;
