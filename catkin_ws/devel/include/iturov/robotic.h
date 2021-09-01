// Generated by gencpp from file iturov/robotic.msg
// DO NOT EDIT!


#ifndef ITUROV_MESSAGE_ROBOTIC_H
#define ITUROV_MESSAGE_ROBOTIC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iturov
{
template <class ContainerAllocator>
struct robotic_
{
  typedef robotic_<ContainerAllocator> Type;

  robotic_()
    : dec_24()  {
    }
  robotic_(const ContainerAllocator& _alloc)
    : dec_24(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _dec_24_type;
  _dec_24_type dec_24;





  typedef boost::shared_ptr< ::iturov::robotic_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iturov::robotic_<ContainerAllocator> const> ConstPtr;

}; // struct robotic_

typedef ::iturov::robotic_<std::allocator<void> > robotic;

typedef boost::shared_ptr< ::iturov::robotic > roboticPtr;
typedef boost::shared_ptr< ::iturov::robotic const> roboticConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iturov::robotic_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iturov::robotic_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iturov::robotic_<ContainerAllocator1> & lhs, const ::iturov::robotic_<ContainerAllocator2> & rhs)
{
  return lhs.dec_24 == rhs.dec_24;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iturov::robotic_<ContainerAllocator1> & lhs, const ::iturov::robotic_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iturov

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iturov::robotic_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iturov::robotic_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iturov::robotic_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iturov::robotic_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iturov::robotic_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iturov::robotic_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iturov::robotic_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a38a98ef76cf71c32b00d0be3e9374eb";
  }

  static const char* value(const ::iturov::robotic_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa38a98ef76cf71c3ULL;
  static const uint64_t static_value2 = 0x2b00d0be3e9374ebULL;
};

template<class ContainerAllocator>
struct DataType< ::iturov::robotic_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iturov/robotic";
  }

  static const char* value(const ::iturov::robotic_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iturov::robotic_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string dec_24\n"
;
  }

  static const char* value(const ::iturov::robotic_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iturov::robotic_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dec_24);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robotic_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iturov::robotic_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iturov::robotic_<ContainerAllocator>& v)
  {
    s << indent << "dec_24: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.dec_24);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ITUROV_MESSAGE_ROBOTIC_H