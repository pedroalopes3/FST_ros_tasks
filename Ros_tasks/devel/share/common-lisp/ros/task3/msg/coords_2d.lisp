; Auto-generated. Do not edit!


(cl:in-package task3-msg)


;//! \htmlinclude coords_2d.msg.html

(cl:defclass <coords_2d> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass coords_2d (<coords_2d>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <coords_2d>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'coords_2d)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task3-msg:<coords_2d> is deprecated: use task3-msg:coords_2d instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <coords_2d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3-msg:x-val is deprecated.  Use task3-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <coords_2d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3-msg:y-val is deprecated.  Use task3-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <coords_2d>) ostream)
  "Serializes a message object of type '<coords_2d>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <coords_2d>) istream)
  "Deserializes a message object of type '<coords_2d>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<coords_2d>)))
  "Returns string type for a message object of type '<coords_2d>"
  "task3/coords_2d")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'coords_2d)))
  "Returns string type for a message object of type 'coords_2d"
  "task3/coords_2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<coords_2d>)))
  "Returns md5sum for a message object of type '<coords_2d>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'coords_2d)))
  "Returns md5sum for a message object of type 'coords_2d"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<coords_2d>)))
  "Returns full string definition for message of type '<coords_2d>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'coords_2d)))
  "Returns full string definition for message of type 'coords_2d"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <coords_2d>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <coords_2d>))
  "Converts a ROS message object to a list"
  (cl:list 'coords_2d
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
