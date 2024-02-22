; Auto-generated. Do not edit!


(cl:in-package iris24-msg)


;//! \htmlinclude server2bs.msg.html

(cl:defclass <server2bs> (roslisp-msg-protocol:ros-message)
  ((angka
    :reader angka
    :initarg :angka
    :type cl:fixnum
    :initform 0))
)

(cl:defclass server2bs (<server2bs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <server2bs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'server2bs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iris24-msg:<server2bs> is deprecated: use iris24-msg:server2bs instead.")))

(cl:ensure-generic-function 'angka-val :lambda-list '(m))
(cl:defmethod angka-val ((m <server2bs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iris24-msg:angka-val is deprecated.  Use iris24-msg:angka instead.")
  (angka m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <server2bs>) ostream)
  "Serializes a message object of type '<server2bs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'angka)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <server2bs>) istream)
  "Deserializes a message object of type '<server2bs>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'angka)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<server2bs>)))
  "Returns string type for a message object of type '<server2bs>"
  "iris24/server2bs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'server2bs)))
  "Returns string type for a message object of type 'server2bs"
  "iris24/server2bs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<server2bs>)))
  "Returns md5sum for a message object of type '<server2bs>"
  "265bbafc8b4e42052cff29ebcf353552")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'server2bs)))
  "Returns md5sum for a message object of type 'server2bs"
  "265bbafc8b4e42052cff29ebcf353552")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<server2bs>)))
  "Returns full string definition for message of type '<server2bs>"
  (cl:format cl:nil "uint8 angka~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'server2bs)))
  "Returns full string definition for message of type 'server2bs"
  (cl:format cl:nil "uint8 angka~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <server2bs>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <server2bs>))
  "Converts a ROS message object to a list"
  (cl:list 'server2bs
    (cl:cons ':angka (angka msg))
))
