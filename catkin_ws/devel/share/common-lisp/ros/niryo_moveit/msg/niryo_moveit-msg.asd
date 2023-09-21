
(cl:in-package :asdf)

(defsystem "niryo_moveit-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :moveit_msgs-msg
)
  :components ((:file "_package")
    (:file "NiryoMoveitJoints" :depends-on ("_package_NiryoMoveitJoints"))
    (:file "_package_NiryoMoveitJoints" :depends-on ("_package"))
    (:file "NiryoTrajectory" :depends-on ("_package_NiryoTrajectory"))
    (:file "_package_NiryoTrajectory" :depends-on ("_package"))
  ))