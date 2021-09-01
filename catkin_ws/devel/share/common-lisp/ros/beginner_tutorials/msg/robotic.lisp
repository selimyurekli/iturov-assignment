; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude robotic.msg.html

(cl:defclass <robotic> (roslisp-msg-protocol:ros-message)
  ((dec_24
    :reader dec_24
    :initarg :dec_24
    :type cl:string
    :initform ""))
)

(cl:defclass robotic (<robotic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<robotic> is deprecated: use beginner_tutorials-msg:robotic instead.")))

(cl:ensure-generic-function 'dec_24-val :lambda-list '(m))
(cl:defmethod dec_24-val ((m <robotic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:dec_24-val is deprecated.  Use beginner_tutorials-msg:dec_24 instead.")
  (dec_24 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotic>) ostream)
  "Serializes a message object of type '<robotic>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dec_24))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dec_24))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotic>) istream)
  "Deserializes a message object of type '<robotic>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dec_24) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dec_24) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotic>)))
  "Returns string type for a message object of type '<robotic>"
  "beginner_tutorials/robotic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotic)))
  "Returns string type for a message object of type 'robotic"
  "beginner_tutorials/robotic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotic>)))
  "Returns md5sum for a message object of type '<robotic>"
  "a38a98ef76cf71c32b00d0be3e9374eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotic)))
  "Returns md5sum for a message object of type 'robotic"
  "a38a98ef76cf71c32b00d0be3e9374eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotic>)))
  "Returns full string definition for message of type '<robotic>"
  (cl:format cl:nil "string dec_24~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotic)))
  "Returns full string definition for message of type 'robotic"
  (cl:format cl:nil "string dec_24~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotic>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dec_24))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotic>))
  "Converts a ROS message object to a list"
  (cl:list 'robotic
    (cl:cons ':dec_24 (dec_24 msg))
))
