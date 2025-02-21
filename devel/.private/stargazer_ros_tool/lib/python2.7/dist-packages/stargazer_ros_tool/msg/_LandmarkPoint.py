# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from stargazer_ros_tool/LandmarkPoint.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LandmarkPoint(genpy.Message):
  _md5sum = "40b0802ec1ab1d1b341c706f76acdd9a"
  _type = "stargazer_ros_tool/LandmarkPoint"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 row
uint8 col

uint16 u
uint16 v
"""
  __slots__ = ['row','col','u','v']
  _slot_types = ['uint8','uint8','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       row,col,u,v

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LandmarkPoint, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.row is None:
        self.row = 0
      if self.col is None:
        self.col = 0
      if self.u is None:
        self.u = 0
      if self.v is None:
        self.v = 0
    else:
      self.row = 0
      self.col = 0
      self.u = 0
      self.v = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2B2H().pack(_x.row, _x.col, _x.u, _x.v))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.row, _x.col, _x.u, _x.v,) = _get_struct_2B2H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2B2H().pack(_x.row, _x.col, _x.u, _x.v))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.row, _x.col, _x.u, _x.v,) = _get_struct_2B2H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B2H = None
def _get_struct_2B2H():
    global _struct_2B2H
    if _struct_2B2H is None:
        _struct_2B2H = struct.Struct("<2B2H")
    return _struct_2B2H
