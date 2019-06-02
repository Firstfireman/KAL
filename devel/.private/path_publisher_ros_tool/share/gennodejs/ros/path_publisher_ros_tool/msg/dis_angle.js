// Auto-generated. Do not edit!

// (in-package path_publisher_ros_tool.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class dis_angle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dis = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('dis')) {
        this.dis = initObj.dis
      }
      else {
        this.dis = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dis_angle
    // Serialize message field [dis]
    bufferOffset = _serializer.float32(obj.dis, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dis_angle
    let len;
    let data = new dis_angle(null);
    // Deserialize message field [dis]
    data.dis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path_publisher_ros_tool/dis_angle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f06074cb14290372c4f2d255313c323';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 dis
    float32 angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dis_angle(null);
    if (msg.dis !== undefined) {
      resolved.dis = msg.dis;
    }
    else {
      resolved.dis = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    return resolved;
    }
};

module.exports = dis_angle;
