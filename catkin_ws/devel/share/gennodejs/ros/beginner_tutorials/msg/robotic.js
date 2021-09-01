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

class robotic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dec_24 = null;
    }
    else {
      if (initObj.hasOwnProperty('dec_24')) {
        this.dec_24 = initObj.dec_24
      }
      else {
        this.dec_24 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotic
    // Serialize message field [dec_24]
    bufferOffset = _serializer.string(obj.dec_24, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotic
    let len;
    let data = new robotic(null);
    // Deserialize message field [dec_24]
    data.dec_24 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.dec_24.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/robotic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a38a98ef76cf71c32b00d0be3e9374eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string dec_24
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robotic(null);
    if (msg.dec_24 !== undefined) {
      resolved.dec_24 = msg.dec_24;
    }
    else {
      resolved.dec_24 = ''
    }

    return resolved;
    }
};

module.exports = robotic;
