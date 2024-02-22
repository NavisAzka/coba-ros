;; Auto-generated. Do not edit!


(when (boundp 'iris24::server2bs)
  (if (not (find-package "IRIS24"))
    (make-package "IRIS24"))
  (shadow 'server2bs (find-package "IRIS24")))
(unless (find-package "IRIS24::SERVER2BS")
  (make-package "IRIS24::SERVER2BS"))

(in-package "ROS")
;;//! \htmlinclude server2bs.msg.html


(defclass iris24::server2bs
  :super ros::object
  :slots (_angka ))

(defmethod iris24::server2bs
  (:init
   (&key
    ((:angka __angka) 0)
    )
   (send-super :init)
   (setq _angka (round __angka))
   self)
  (:angka
   (&optional __angka)
   (if __angka (setq _angka __angka)) _angka)
  (:serialization-length
   ()
   (+
    ;; uint8 _angka
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _angka
       (write-byte _angka s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _angka
     (setq _angka (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get iris24::server2bs :md5sum-) "265bbafc8b4e42052cff29ebcf353552")
(setf (get iris24::server2bs :datatype-) "iris24/server2bs")
(setf (get iris24::server2bs :definition-)
      "uint8 angka
")



(provide :iris24/server2bs "265bbafc8b4e42052cff29ebcf353552")


