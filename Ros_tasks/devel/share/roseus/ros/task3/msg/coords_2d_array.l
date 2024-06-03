;; Auto-generated. Do not edit!


(when (boundp 'task3::coords_2d_array)
  (if (not (find-package "TASK3"))
    (make-package "TASK3"))
  (shadow 'coords_2d_array (find-package "TASK3")))
(unless (find-package "TASK3::COORDS_2D_ARRAY")
  (make-package "TASK3::COORDS_2D_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude coords_2d_array.msg.html


(defclass task3::coords_2d_array
  :super ros::object
  :slots (_points ))

(defmethod task3::coords_2d_array
  (:init
   (&key
    ((:points __points) ())
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; task3/coords_2d[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; task3/coords_2d[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; task3/coords_2d[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance task3::coords_2d :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get task3::coords_2d_array :md5sum-) "0083ddac30f807eeef29c66ffedb79c7")
(setf (get task3::coords_2d_array :datatype-) "task3/coords_2d_array")
(setf (get task3::coords_2d_array :definition-)
      "task3/coords_2d[] points
================================================================================
MSG: task3/coords_2d
float32 x
float32 y

")



(provide :task3/coords_2d_array "0083ddac30f807eeef29c66ffedb79c7")


