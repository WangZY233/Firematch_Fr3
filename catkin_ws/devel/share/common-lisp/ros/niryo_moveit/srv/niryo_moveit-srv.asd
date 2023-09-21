
(cl:in-package :asdf)

(defsystem "niryo_moveit-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :moveit_msgs-msg
               :niryo_moveit-msg
)
  :components ((:file "_package")
    (:file "MoverService" :depends-on ("_package_MoverService"))
    (:file "_package_MoverService" :depends-on ("_package"))
  ))