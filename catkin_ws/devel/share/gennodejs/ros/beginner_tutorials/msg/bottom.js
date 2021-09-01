// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bottom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dec_16 = null;
    }
    else {
      if (initObj.hasOwnProperty('dec_16')) {
        this.dec_16 = initObj.dec_16
      }
      else {
        this.dec_16 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bottom
    // Serialize message field [dec_16]
    bufferOffset = _serializer.string(obj.dec_16, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bottom
    let len;
    let data = new bottom(null);
    // Deserialize message field [dec_16]
    data.dec_16 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.dec_16.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/bottom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a569087f646e4f1ea9df66c6efd925f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string dec_16
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bottom(null);
    if (msg.dec_16 !== undefined) {
      resolved.dec_16 = msg.dec_16;
    }
    else {
      resolved.dec_16 = ''
    }

    return resolved;
    }
};

module.exports = bottom;
