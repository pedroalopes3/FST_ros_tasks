;; Auto-generated. Do not edit!


(when (boundp 'task3::coords_2d)
  (if (not (find-package "TASK3"))
    (make-package "TASK3"))
  (shadow 'coords_2d (find-package "TASK3")))
(unless (find-package "TASK3::COORDS_2D")
  (make-package "TASK3::COORDS_2D"))

(in-package "ROS")
;;//! \htmlinclude coords_2d.msg.html


(defclass task3::coords_2d
  :super ros::object
  :slots (_x _y ))

(defmethod task3::coords_2d
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get task3::coords_2d :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get task3::coords_2d :datatype-) "task3/coords_2d")
(setf (get task3::coords_2d :definition-)
      "float32 x
float32 y

")



(provide :task3/coords_2d "ff8d7d66dd3e4b731ef14a45d38888b6")


