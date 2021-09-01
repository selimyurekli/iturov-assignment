; Auto-generated. Do not edit!


(cl:in-package iturov-msg)


;//! \htmlinclude bottom.msg.html

(cl:defclass <bottom> (roslisp-msg-protocol:ros-message)
  ((dec_16
    :reader dec_16
    :initarg :dec_16
    :type cl:string
    :initform ""))
)

(cl:defclass bottom (<bottom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bottom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bottom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iturov-msg:<bottom> is deprecated: use iturov-msg:bottom instead.")))

(cl:ensure-generic-function 'dec_16-val :lambda-list '(m))
(cl:defmethod dec_16-val ((m <bottom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iturov-msg:dec_16-val is deprecated.  Use iturov-msg:dec_16 instead.")
  (dec_16 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bottom>) ostream)
  "Serializes a message object of type '<bottom>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dec_16))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dec_16))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bottom>) istream)
  "Deserializes a message object of type '<bottom>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dec_16) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dec_16) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bottom>)))
  "Returns string type for a message object of type '<bottom>"
  "iturov/bottom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bottom)))
  "Returns string type for a message object of type 'bottom"
  "iturov/bottom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bottom>)))
  "Returns md5sum for a message object of type '<bottom>"
  "a569087f646e4f1ea9df66c6efd925f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bottom)))
  "Returns md5sum for a message object of type 'bottom"
  "a569087f646e4f1ea9df66c6efd925f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bottom>)))
  "Returns full string definition for message of type '<bottom>"
  (cl:format cl:nil "string dec_16~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bottom)))
  "Returns full string definition for message of type 'bottom"
  (cl:format cl:nil "string dec_16~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bottom>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dec_16))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bottom>))
  "Converts a ROS message object to a list"
  (cl:list 'bottom
    (cl:cons ':dec_16 (dec_16 msg))
))
