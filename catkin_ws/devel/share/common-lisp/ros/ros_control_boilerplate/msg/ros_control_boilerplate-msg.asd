
(cl:in-package :asdf)

(defsystem "ros_control_boilerplate-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "poscmd" :depends-on ("_package_poscmd"))
    (:file "_package_poscmd" :depends-on ("_package"))
    (:file "statefb" :depends-on ("_package_statefb"))
    (:file "_package_statefb" :depends-on ("_package"))
  ))