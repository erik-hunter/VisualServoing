/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/srv/SwitchController.srv
 *
 */


#ifndef CONTROLLER_MANAGER_MSGS_MESSAGE_SWITCHCONTROLLERRESPONSE_H
#define CONTROLLER_MANAGER_MSGS_MESSAGE_SWITCHCONTROLLERRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace controller_manager_msgs
{
template <class ContainerAllocator>
struct SwitchControllerResponse_
{
  typedef SwitchControllerResponse_<ContainerAllocator> Type;

  SwitchControllerResponse_()
    : ok(false)  {
    }
  SwitchControllerResponse_(const ContainerAllocator& _alloc)
    : ok(false)  {
    }



   typedef uint8_t _ok_type;
  _ok_type ok;




  typedef boost::shared_ptr< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct SwitchControllerResponse_

typedef ::controller_manager_msgs::SwitchControllerResponse_<std::allocator<void> > SwitchControllerResponse;

typedef boost::shared_ptr< ::controller_manager_msgs::SwitchControllerResponse > SwitchControllerResponsePtr;
typedef boost::shared_ptr< ::controller_manager_msgs::SwitchControllerResponse const> SwitchControllerResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace controller_manager_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'controller_manager_msgs': ['/home/visual-servoing/ros/ws_baxter/src/ros_control/controller_manager_msgs/msg'], 'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f6da3883749771fac40d6deb24a8c02";
  }

  static const char* value(const ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f6da3883749771fULL;
  static const uint64_t static_value2 = 0xac40d6deb24a8c02ULL;
};

template<class ContainerAllocator>
struct DataType< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "controller_manager_msgs/SwitchControllerResponse";
  }

  static const char* value(const ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ok\n\
\n\
";
  }

  static const char* value(const ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SwitchControllerResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::controller_manager_msgs::SwitchControllerResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROLLER_MANAGER_MSGS_MESSAGE_SWITCHCONTROLLERRESPONSE_H
