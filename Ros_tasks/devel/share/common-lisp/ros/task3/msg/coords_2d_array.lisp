; Auto-generated. Do not edit!


(cl:in-package task3-msg)


;//! \htmlinclude coords_2d_array.msg.html

(cl:defclass <coords_2d_array> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector task3-msg:coords_2d)
   :initform (cl:make-array 0 :element-type 'task3-msg:coords_2d :initial-element (cl:make-instance 'task3-msg:coords_2d))))
)

(cl:defclass coords_2d_array (<coords_2d_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <coords_2d_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'coords_2d_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task3-msg:<coords_2d_array> is deprecated: use task3-msg:coords_2d_array instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <coords_2d_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task3-msg:points-val is deprecated.  Use task3-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <coords_2d_array>) ostream)
  "Serializes a message object of type '<coords_2d_array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <coords_2d_array>) istream)
  "Deserializes a message object of type '<coords_2d_array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'task3-msg:coords_2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<coords_2d_array>)))
  "Returns string type for a message object of type '<coords_2d_array>"
  "task3/coords_2d_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'coords_2d_array)))
  "Returns string type for a message object of type 'coords_2d_array"
  "task3/coords_2d_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<coords_2d_array>)))
  "Returns md5sum for a message object of type '<coords_2d_array>"
  "0083ddac30f807eeef29c66ffedb79c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'coords_2d_array)))
  "Returns md5sum for a message object of type 'coords_2d_array"
  "0083ddac30f807eeef29c66ffedb79c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<coords_2d_array>)))
  "Returns full string definition for message of type '<coords_2d_array>"
  (cl:format cl:nil "task3/coords_2d[] points~%================================================================================~%MSG: task3/coords_2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'coords_2d_array)))
  "Returns full string definition for message of type 'coords_2d_array"
  (cl:format cl:nil "task3/coords_2d[] points~%================================================================================~%MSG: task3/coords_2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <coords_2d_array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <coords_2d_array>))
  "Converts a ROS message object to a list"
  (cl:list 'coords_2d_array
    (cl:cons ':points (points msg))
))
