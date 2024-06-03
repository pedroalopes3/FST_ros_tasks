
(cl:in-package :asdf)

(defsystem "task2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
    (:file "coords_2d" :depends-on ("_package_coords_2d"))
    (:file "_package_coords_2d" :depends-on ("_package"))
    (:file "coords_2d_array" :depends-on ("_package_coords_2d_array"))
    (:file "_package_coords_2d_array" :depends-on ("_package"))
  ))