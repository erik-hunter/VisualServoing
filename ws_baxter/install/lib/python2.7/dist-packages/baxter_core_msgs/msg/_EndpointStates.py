"""autogenerated by genpy from baxter_core_msgs/EndpointStates.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import baxter_core_msgs.msg

class EndpointStates(genpy.Message):
  _md5sum = "7cbb426037403e3cf45e212c8804454d"
  _type = "baxter_core_msgs/EndpointStates"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string[] names
EndpointState[] states


================================================================================
MSG: baxter_core_msgs/EndpointState
geometry_msgs/Pose   pose
geometry_msgs/Twist  twist
geometry_msgs/Wrench wrench

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

"""
  __slots__ = ['names','states']
  _slot_types = ['string[]','baxter_core_msgs/EndpointState[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       names,states

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(EndpointStates, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.names is None:
        self.names = []
      if self.states is None:
        self.states = []
    else:
      self.names = []
      self.states = []

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
      length = len(self.names)
      buff.write(_struct_I.pack(length))
      for val1 in self.names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.states)
      buff.write(_struct_I.pack(length))
      for val1 in self.states:
        _v1 = val1.pose
        _v2 = _v1.position
        _x = _v2
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v3 = _v1.orientation
        _x = _v3
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        _v4 = val1.twist
        _v5 = _v4.linear
        _x = _v5
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v6 = _v4.angular
        _x = _v6
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v7 = val1.wrench
        _v8 = _v7.force
        _x = _v8
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v9 = _v7.torque
        _x = _v9
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.states is None:
        self.states = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.states = []
      for i in range(0, length):
        val1 = baxter_core_msgs.msg.EndpointState()
        _v10 = val1.pose
        _v11 = _v10.position
        _x = _v11
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v12 = _v10.orientation
        _x = _v12
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        _v13 = val1.twist
        _v14 = _v13.linear
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v15 = _v13.angular
        _x = _v15
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v16 = val1.wrench
        _v17 = _v16.force
        _x = _v17
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v18 = _v16.torque
        _x = _v18
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.states.append(val1)
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
      length = len(self.names)
      buff.write(_struct_I.pack(length))
      for val1 in self.names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.states)
      buff.write(_struct_I.pack(length))
      for val1 in self.states:
        _v19 = val1.pose
        _v20 = _v19.position
        _x = _v20
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v21 = _v19.orientation
        _x = _v21
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        _v22 = val1.twist
        _v23 = _v22.linear
        _x = _v23
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v24 = _v22.angular
        _x = _v24
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v25 = val1.wrench
        _v26 = _v25.force
        _x = _v26
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v27 = _v25.torque
        _x = _v27
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.states is None:
        self.states = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.states = []
      for i in range(0, length):
        val1 = baxter_core_msgs.msg.EndpointState()
        _v28 = val1.pose
        _v29 = _v28.position
        _x = _v29
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v30 = _v28.orientation
        _x = _v30
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        _v31 = val1.twist
        _v32 = _v31.linear
        _x = _v32
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v33 = _v31.angular
        _x = _v33
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v34 = val1.wrench
        _v35 = _v34.force
        _x = _v35
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v36 = _v34.torque
        _x = _v36
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.states.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4d = struct.Struct("<4d")
_struct_3d = struct.Struct("<3d")
