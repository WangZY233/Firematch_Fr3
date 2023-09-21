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

class Sequence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.description = null;
      this.created = null;
      this.updated = null;
      this.blockly_xml = null;
      this.python_code = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('created')) {
        this.created = initObj.created
      }
      else {
        this.created = 0;
      }
      if (initObj.hasOwnProperty('updated')) {
        this.updated = initObj.updated
      }
      else {
        this.updated = 0;
      }
      if (initObj.hasOwnProperty('blockly_xml')) {
        this.blockly_xml = initObj.blockly_xml
      }
      else {
        this.blockly_xml = '';
      }
      if (initObj.hasOwnProperty('python_code')) {
        this.python_code = initObj.python_code
      }
      else {
        this.python_code = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sequence
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [created]
    bufferOffset = _serializer.int32(obj.created, buffer, bufferOffset);
    // Serialize message field [updated]
    bufferOffset = _serializer.int32(obj.updated, buffer, bufferOffset);
    // Serialize message field [blockly_xml]
    bufferOffset = _serializer.string(obj.blockly_xml, buffer, bufferOffset);
    // Serialize message field [python_code]
    bufferOffset = _serializer.string(obj.python_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sequence
    let len;
    let data = new Sequence(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [created]
    data.created = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [updated]
    data.updated = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [blockly_xml]
    data.blockly_xml = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [python_code]
    data.python_code = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.description);
    length += _getByteLength(object.blockly_xml);
    length += _getByteLength(object.python_code);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_one_msgs/Sequence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6a77265c058342138b72e566370ac7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    string name
    string description
    
    int32 created
    int32 updated
    
    string blockly_xml
    string python_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sequence(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.created !== undefined) {
      resolved.created = msg.created;
    }
    else {
      resolved.created = 0
    }

    if (msg.updated !== undefined) {
      resolved.updated = msg.updated;
    }
    else {
      resolved.updated = 0
    }

    if (msg.blockly_xml !== undefined) {
      resolved.blockly_xml = msg.blockly_xml;
    }
    else {
      resolved.blockly_xml = ''
    }

    if (msg.python_code !== undefined) {
      resolved.python_code = msg.python_code;
    }
    else {
      resolved.python_code = ''
    }

    return resolved;
    }
};

module.exports = Sequence;
