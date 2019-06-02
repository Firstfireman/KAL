// Auto-generated. Do not edit!

// (in-package path_publisher_ros_tool.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class rl_measurement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_image = null;
      this.dis = null;
      this.angle = null;
      this.switcher = null;
    }
    else {
      if (initObj.hasOwnProperty('path_image')) {
        this.path_image = initObj.path_image
      }
      else {
        this.path_image = new sensor_msgs.msg.Image();
      }
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
      if (initObj.hasOwnProperty('switcher')) {
        this.switcher = initObj.switcher
      }
      else {
        this.switcher = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rl_measurement
    // Serialize message field [path_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.path_image, buffer, bufferOffset);
    // Serialize message field [dis]
    bufferOffset = _serializer.float32(obj.dis, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [switcher]
    bufferOffset = _serializer.int8(obj.switcher, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rl_measurement
    let len;
    let data = new rl_measurement(null);
    // Deserialize message field [path_image]
    data.path_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [dis]
    data.dis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [switcher]
    data.switcher = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.path_image);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path_publisher_ros_tool/rl_measurement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e7d7db386b9b06d0acdb0486e461fb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image path_image
    float32 dis
    float32 angle
    int8 switcher
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rl_measurement(null);
    if (msg.path_image !== undefined) {
      resolved.path_image = sensor_msgs.msg.Image.Resolve(msg.path_image)
    }
    else {
      resolved.path_image = new sensor_msgs.msg.Image()
    }

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

    if (msg.switcher !== undefined) {
      resolved.switcher = msg.switcher;
    }
    else {
      resolved.switcher = 0
    }

    return resolved;
    }
};

module.exports = rl_measurement;
