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

let ObjectPose = require('../msg/ObjectPose.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class ObjDetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_type = null;
      this.obj_color = null;
      this.workspace_ratio = null;
      this.ret_image = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_type')) {
        this.obj_type = initObj.obj_type
      }
      else {
        this.obj_type = '';
      }
      if (initObj.hasOwnProperty('obj_color')) {
        this.obj_color = initObj.obj_color
      }
      else {
        this.obj_color = '';
      }
      if (initObj.hasOwnProperty('workspace_ratio')) {
        this.workspace_ratio = initObj.workspace_ratio
      }
      else {
        this.workspace_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('ret_image')) {
        this.ret_image = initObj.ret_image
      }
      else {
        this.ret_image = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjDetectionRequest
    // Serialize message field [obj_type]
    bufferOffset = _serializer.string(obj.obj_type, buffer, bufferOffset);
    // Serialize message field [obj_color]
    bufferOffset = _serializer.string(obj.obj_color, buffer, bufferOffset);
    // Serialize message field [workspace_ratio]
    bufferOffset = _serializer.float32(obj.workspace_ratio, buffer, bufferOffset);
    // Serialize message field [ret_image]
    bufferOffset = _serializer.bool(obj.ret_image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjDetectionRequest
    let len;
    let data = new ObjDetectionRequest(null);
    // Deserialize message field [obj_type]
    data.obj_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [obj_color]
    data.obj_color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [workspace_ratio]
    data.workspace_ratio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ret_image]
    data.ret_image = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.obj_type);
    length += _getByteLength(object.obj_color);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/ObjDetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7af8c917a587a5527345a87ab0262fe5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string obj_type
    string obj_color
    float32 workspace_ratio
    bool ret_image
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjDetectionRequest(null);
    if (msg.obj_type !== undefined) {
      resolved.obj_type = msg.obj_type;
    }
    else {
      resolved.obj_type = ''
    }

    if (msg.obj_color !== undefined) {
      resolved.obj_color = msg.obj_color;
    }
    else {
      resolved.obj_color = ''
    }

    if (msg.workspace_ratio !== undefined) {
      resolved.workspace_ratio = msg.workspace_ratio;
    }
    else {
      resolved.workspace_ratio = 0.0
    }

    if (msg.ret_image !== undefined) {
      resolved.ret_image = msg.ret_image;
    }
    else {
      resolved.ret_image = false
    }

    return resolved;
    }
};

class ObjDetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.obj_pose = null;
      this.obj_type = null;
      this.obj_color = null;
      this.img = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('obj_pose')) {
        this.obj_pose = initObj.obj_pose
      }
      else {
        this.obj_pose = new ObjectPose();
      }
      if (initObj.hasOwnProperty('obj_type')) {
        this.obj_type = initObj.obj_type
      }
      else {
        this.obj_type = '';
      }
      if (initObj.hasOwnProperty('obj_color')) {
        this.obj_color = initObj.obj_color
      }
      else {
        this.obj_color = '';
      }
      if (initObj.hasOwnProperty('img')) {
        this.img = initObj.img
      }
      else {
        this.img = new sensor_msgs.msg.CompressedImage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjDetectionResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [obj_pose]
    bufferOffset = ObjectPose.serialize(obj.obj_pose, buffer, bufferOffset);
    // Serialize message field [obj_type]
    bufferOffset = _serializer.string(obj.obj_type, buffer, bufferOffset);
    // Serialize message field [obj_color]
    bufferOffset = _serializer.string(obj.obj_color, buffer, bufferOffset);
    // Serialize message field [img]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.img, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjDetectionResponse
    let len;
    let data = new ObjDetectionResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [obj_pose]
    data.obj_pose = ObjectPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_type]
    data.obj_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [obj_color]
    data.obj_color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [img]
    data.img = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.obj_type);
    length += _getByteLength(object.obj_color);
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.img);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/ObjDetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b91b10d20d54e39c0903545ec757c896';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    int32 SUCCESSFUL = 1
    int32 VIDEO_STREAM_NOT_RUNNING = -1
    int32 OBJECT_NOT_FOUND = -2
    int32 MARKERS_NOT_FOUND = -3
    
    niryo_one_msgs/ObjectPose obj_pose
    
    string obj_type
    string obj_color
    
    sensor_msgs/CompressedImage img
    
    
    ================================================================================
    MSG: niryo_one_msgs/ObjectPose
    float64 x
    float64 y
    float64 z
    
    float64 roll
    float64 pitch
    float64 yaw
    
    ================================================================================
    MSG: sensor_msgs/CompressedImage
    # This message contains a compressed image
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
    
    string format        # Specifies the format of the data
                         #   Acceptable values:
                         #     jpeg, png
    uint8[] data         # Compressed image buffer
    
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
    const resolved = new ObjDetectionResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.obj_pose !== undefined) {
      resolved.obj_pose = ObjectPose.Resolve(msg.obj_pose)
    }
    else {
      resolved.obj_pose = new ObjectPose()
    }

    if (msg.obj_type !== undefined) {
      resolved.obj_type = msg.obj_type;
    }
    else {
      resolved.obj_type = ''
    }

    if (msg.obj_color !== undefined) {
      resolved.obj_color = msg.obj_color;
    }
    else {
      resolved.obj_color = ''
    }

    if (msg.img !== undefined) {
      resolved.img = sensor_msgs.msg.CompressedImage.Resolve(msg.img)
    }
    else {
      resolved.img = new sensor_msgs.msg.CompressedImage()
    }

    return resolved;
    }
};

// Constants for message
ObjDetectionResponse.Constants = {
  SUCCESSFUL: 1,
  VIDEO_STREAM_NOT_RUNNING: -1,
  OBJECT_NOT_FOUND: -2,
  MARKERS_NOT_FOUND: -3,
}

module.exports = {
  Request: ObjDetectionRequest,
  Response: ObjDetectionResponse,
  md5sum() { return 'a5f6ca6e7d76ce99e6a8b77d055a7a4a'; },
  datatype() { return 'niryo_one_msgs/ObjDetection'; }
};
