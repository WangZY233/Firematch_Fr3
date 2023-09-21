;; Auto-generated. Do not edit!


(when (boundp 'ros_control_boilerplate::statefb)
  (if (not (find-package "ROS_CONTROL_BOILERPLATE"))
    (make-package "ROS_CONTROL_BOILERPLATE"))
  (shadow 'statefb (find-package "ROS_CONTROL_BOILERPLATE")))
(unless (find-package "ROS_CONTROL_BOILERPLATE::STATEFB")
  (make-package "ROS_CONTROL_BOILERPLATE::STATEFB"))

(in-package "ROS")
;;//! \htmlinclude statefb.msg.html


(defclass ros_control_boilerplate::statefb
  :super ros::object
  :slots (_statuswd _actpos _err _torque ))

(defmethod ros_control_boilerplate::statefb
  (:init
   (&key
    ((:statuswd __statuswd) (make-array 6 :initial-element 0 :element-type :integer))
    ((:actpos __actpos) (make-array 6 :initial-element 0 :element-type :integer))
    ((:err __err) (make-array 6 :initial-element 0 :element-type :integer))
    ((:torque __torque) (make-array 6 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _statuswd __statuswd)
   (setq _actpos __actpos)
   (setq _err __err)
   (setq _torque __torque)
   self)
  (:statuswd
   (&optional __statuswd)
   (if __statuswd (setq _statuswd __statuswd)) _statuswd)
  (:actpos
   (&optional __actpos)
   (if __actpos (setq _actpos __actpos)) _actpos)
  (:err
   (&optional __err)
   (if __err (setq _err __err)) _err)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; uint16[6] _statuswd
    (* 2    6)
    ;; int32[6] _actpos
    (* 4    6)
    ;; uint16[6] _err
    (* 2    6)
    ;; int16[6] _torque
    (* 2    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[6] _statuswd
     (dotimes (i 6)
       (write-word (elt _statuswd i) s)
       )
     ;; int32[6] _actpos
     (dotimes (i 6)
       (write-long (elt _actpos i) s)
       )
     ;; uint16[6] _err
     (dotimes (i 6)
       (write-word (elt _err i) s)
       )
     ;; int16[6] _torque
     (dotimes (i 6)
       (write-word (elt _torque i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[6] _statuswd
   (dotimes (i (length _statuswd))
     (setf (elt _statuswd i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; int32[6] _actpos
   (dotimes (i (length _actpos))
     (setf (elt _actpos i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint16[6] _err
   (dotimes (i (length _err))
     (setf (elt _err i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; int16[6] _torque
   (dotimes (i (length _torque))
     (setf (elt _torque i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get ros_control_boilerplate::statefb :md5sum-) "2ea94b11d87b20693912a0151f6e0d36")
(setf (get ros_control_boilerplate::statefb :datatype-) "ros_control_boilerplate/statefb")
(setf (get ros_control_boilerplate::statefb :definition-)
      "uint16[6] statuswd
int32[6] actpos
uint16[6] err
int16[6] torque
")



(provide :ros_control_boilerplate/statefb "2ea94b11d87b20693912a0151f6e0d36")


