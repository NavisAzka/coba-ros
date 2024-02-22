// Auto-generated. Do not edit!

// (in-package iris24.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class server2bs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angka = null;
    }
    else {
      if (initObj.hasOwnProperty('angka')) {
        this.angka = initObj.angka
      }
      else {
        this.angka = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type server2bs
    // Serialize message field [angka]
    bufferOffset = _serializer.uint8(obj.angka, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type server2bs
    let len;
    let data = new server2bs(null);
    // Deserialize message field [angka]
    data.angka = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iris24/server2bs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '265bbafc8b4e42052cff29ebcf353552';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 angka
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new server2bs(null);
    if (msg.angka !== undefined) {
      resolved.angka = msg.angka;
    }
    else {
      resolved.angka = 0
    }

    return resolved;
    }
};

module.exports = server2bs;
