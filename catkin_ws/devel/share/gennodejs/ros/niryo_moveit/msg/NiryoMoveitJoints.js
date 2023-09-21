// Auto-generated. Do not edit!

// (in-package niryo_moveit.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NiryoMoveitJoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
      this.pick_pose = null;
      this.place_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('pick_pose')) {
        this.pick_pose = initObj.pick_pose
      }
      else {
        this.pick_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('place_pose')) {
        this.place_pose = initObj.place_pose
      }
      else {
        this.place_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NiryoMoveitJoints
    // Check that the constant length array field [joints] has the right length
    if (obj.joints.length !== 6) {
      throw new Error('Unable to serialize array field joints - length must be 6')
    }
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float64(obj.joints, buffer, bufferOffset, 6);
    // Serialize message field [pick_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pick_pose, buffer, bufferOffset);
    // Serialize message field [place_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.place_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NiryoMoveitJoints
    let len;
    let data = new NiryoMoveitJoints(null);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [pick_pose]
    data.pick_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [place_pose]
    data.place_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 160;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_moveit/NiryoMoveitJoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3894bb7ef9fbb4e54ec5ad55d9a45d5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[6] joints
    geometry_msgs/Pose pick_pose
    geometry_msgs/Pose place_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
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
    const resolved = new NiryoMoveitJoints(null);
    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = new Array(6).fill(0)
    }

    if (msg.pick_pose !== undefined) {
      resolved.pick_pose = geometry_msgs.msg.Pose.Resolve(msg.pick_pose)
    }
    else {
      resolved.pick_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.place_pose !== undefined) {
      resolved.place_pose = geometry_msgs.msg.Pose.Resolve(msg.place_pose)
    }
    else {
      resolved.place_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = NiryoMoveitJoints;
