;; Auto-generated. Do not edit!


(when (boundp 'task2::coords_2d_array)
  (if (not (find-package "TASK2"))
    (make-package "TASK2"))
  (shadow 'coords_2d_array (find-package "TASK2")))
(unless (find-package "TASK2::COORDS_2D_ARRAY")
  (make-package "TASK2::COORDS_2D_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude coords_2d_array.msg.html


(defclass task2::coords_2d_array
  :super ros::object
  :slots (_points ))

(defmethod task2::coords_2d_array
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
    ;; task2/coords_2d[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; task2/coords_2d[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; task2/coords_2d[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance task2::coords_2d :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get task2::coords_2d_array :md5sum-) "0083ddac30f807eeef29c66ffedb79c7")
(setf (get task2::coords_2d_array :datatype-) "task2/coords_2d_array")
(setf (get task2::coords_2d_array :definition-)
      "task2/coords_2d[] points
================================================================================
MSG: task2/coords_2d
float32 x
float32 y

")



(provide :task2/coords_2d_array "0083ddac30f807eeef29c66ffedb79c7")


