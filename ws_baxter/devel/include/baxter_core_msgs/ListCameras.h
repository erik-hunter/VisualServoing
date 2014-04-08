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
 * Auto-generated by gensrv_cpp from file /home/visual-servoing/ros/ws_baxter/src/baxter_common/baxter_core_msgs/srv/ListCameras.srv
 *
 */


#ifndef BAXTER_CORE_MSGS_MESSAGE_LISTCAMERAS_H
#define BAXTER_CORE_MSGS_MESSAGE_LISTCAMERAS_H

#include <ros/service_traits.h>


#include <baxter_core_msgs/ListCamerasRequest.h>
#include <baxter_core_msgs/ListCamerasResponse.h>


namespace baxter_core_msgs
{

struct ListCameras
{

typedef ListCamerasRequest Request;
typedef ListCamerasResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ListCameras
} // namespace baxter_core_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::baxter_core_msgs::ListCameras > {
  static const char* value()
  {
    return "855b31192ab61744e7deb992d94db7ff";
  }

  static const char* value(const ::baxter_core_msgs::ListCameras&) { return value(); }
};

template<>
struct DataType< ::baxter_core_msgs::ListCameras > {
  static const char* value()
  {
    return "baxter_core_msgs/ListCameras";
  }

  static const char* value(const ::baxter_core_msgs::ListCameras&) { return value(); }
};


// service_traits::MD5Sum< ::baxter_core_msgs::ListCamerasRequest> should match 
// service_traits::MD5Sum< ::baxter_core_msgs::ListCameras > 
template<>
struct MD5Sum< ::baxter_core_msgs::ListCamerasRequest>
{
  static const char* value()
  {
    return MD5Sum< ::baxter_core_msgs::ListCameras >::value();
  }
  static const char* value(const ::baxter_core_msgs::ListCamerasRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::baxter_core_msgs::ListCamerasRequest> should match 
// service_traits::DataType< ::baxter_core_msgs::ListCameras > 
template<>
struct DataType< ::baxter_core_msgs::ListCamerasRequest>
{
  static const char* value()
  {
    return DataType< ::baxter_core_msgs::ListCameras >::value();
  }
  static const char* value(const ::baxter_core_msgs::ListCamerasRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::baxter_core_msgs::ListCamerasResponse> should match 
// service_traits::MD5Sum< ::baxter_core_msgs::ListCameras > 
template<>
struct MD5Sum< ::baxter_core_msgs::ListCamerasResponse>
{
  static const char* value()
  {
    return MD5Sum< ::baxter_core_msgs::ListCameras >::value();
  }
  static const char* value(const ::baxter_core_msgs::ListCamerasResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::baxter_core_msgs::ListCamerasResponse> should match 
// service_traits::DataType< ::baxter_core_msgs::ListCameras > 
template<>
struct DataType< ::baxter_core_msgs::ListCamerasResponse>
{
  static const char* value()
  {
    return DataType< ::baxter_core_msgs::ListCameras >::value();
  }
  static const char* value(const ::baxter_core_msgs::ListCamerasResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BAXTER_CORE_MSGS_MESSAGE_LISTCAMERAS_H
