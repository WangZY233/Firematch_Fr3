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

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class DebugMarkersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DebugMarkersRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugMarkersRequest
    let len;
    let data = new DebugMarkersRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/DebugMarkersRequest';
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
    const resolved = new DebugMarkersRequest(null);
    return resolved;
    }
};

class DebugMarkersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.markers_detected = null;
      this.img = null;
    }
    else {
      if (initObj.hasOwnProperty('markers_detected')) {
        this.markers_detected = initObj.markers_detected
      }
      else {
        this.markers_detected = false;
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
    // Serializes a message object of type DebugMarkersResponse
    // Serialize message field [markers_detected]
    bufferOffset = _serializer.bool(obj.markers_detected, buffer, bufferOffset);
    // Serialize message field [img]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.img, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugMarkersResponse
    let len;
    let data = new DebugMarkersResponse(null);
    // Deserialize message field [markers_detected]
    data.markers_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [img]
    data.img = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.img);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_one_msgs/DebugMarkersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63758d5125879b809b9c2ee90cbc28ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool markers_detected
    sensor_msgs/CompressedImage img
    
    
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
    const resolved = new DebugMarkersResponse(null);
    if (msg.markers_detected !== undefined) {
      resolved.markers_detected = msg.markers_detected;
    }
    else {
      resolved.markers_detected = false
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

module.exports = {
  Request: DebugMarkersRequest,
  Response: DebugMarkersResponse,
  md5sum() { return '63758d5125879b809b9c2ee90cbc28ff'; },
  datatype() { return 'niryo_one_msgs/DebugMarkers'; }
};
