// Auto-generated. Do not edit!

// (in-package niryo_one_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LogStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.log_size = null;
      this.available_disk_size = null;
      this.purge_log_on_startup = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('log_size')) {
        this.log_size = initObj.log_size
      }
      else {
        this.log_size = 0;
      }
      if (initObj.hasOwnProperty('available_disk_size')) {
        this.available_disk_size = initObj.available_disk_size
      }
      else {
        this.available_disk_size = 0;
      }
      if (initObj.hasOwnProperty('purge_log_on_startup')) {
        this.purge_log_on_startup = initObj.purge_log_on_startup
      }
      else {
        this.purge_log_on_startup = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [log_size]
    bufferOffset = _serializer.int32(obj.log_size, buffer, bufferOffset);
    // Serialize message field [available_disk_size]
    bufferOffset = _serializer.int32(obj.available_disk_size, buffer, bufferOffset);
    // Serialize message field [purge_log_on_startup]
    bufferOffset = _serializer.bool(obj.purge_log_on_startup, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogStatus
    let len;
    let data = new LogStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [log_size]
    data.log_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [available_disk_size]
    data.available_disk_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [purge_log_on_startup]
    data.purge_log_on_startup = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_one_msgs/LogStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37de8006fbbed6f8e3b23a8291bb9bf7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Header header
    
    # in MB
    int32 log_size 
    int32 available_disk_size
    bool purge_log_on_startup
    
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
    const resolved = new LogStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.log_size !== undefined) {
      resolved.log_size = msg.log_size;
    }
    else {
      resolved.log_size = 0
    }

    if (msg.available_disk_size !== undefined) {
      resolved.available_disk_size = msg.available_disk_size;
    }
    else {
      resolved.available_disk_size = 0
    }

    if (msg.purge_log_on_startup !== undefined) {
      resolved.purge_log_on_startup = msg.purge_log_on_startup;
    }
    else {
      resolved.purge_log_on_startup = false
    }

    return resolved;
    }
};

module.exports = LogStatus;
