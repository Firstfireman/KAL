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

class rl_control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
      this.speed = null;
      this.steering = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = false;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rl_control
    // Serialize message field [done]
    bufferOffset = _serializer.bool(obj.done, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [steering]
    bufferOffset = _serializer.float32(obj.steering, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rl_control
    let len;
    let data = new rl_control(null);
    // Deserialize message field [done]
    data.done = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering]
    data.steering = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path_publisher_ros_tool/rl_control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c0bd438638c70e9a1199a629bb169b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool done
    float32 speed
    float32 steering
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rl_control(null);
    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = false
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0.0
    }

    return resolved;
    }
};

module.exports = rl_control;
