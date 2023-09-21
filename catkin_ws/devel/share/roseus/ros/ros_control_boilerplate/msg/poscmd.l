;; Auto-generated. Do not edit!


(when (boundp 'ros_control_boilerplate::poscmd)
  (if (not (find-package "ROS_CONTROL_BOILERPLATE"))
    (make-package "ROS_CONTROL_BOILERPLATE"))
  (shadow 'poscmd (find-package "ROS_CONTROL_BOILERPLATE")))
(unless (find-package "ROS_CONTROL_BOILERPLATE::POSCMD")
  (make-package "ROS_CONTROL_BOILERPLATE::POSCMD"))

(in-package "ROS")
;;//! \htmlinclude poscmd.msg.html


(defclass ros_control_boilerplate::poscmd
  :super ros::object
  :slots (_cmd _cntlwd _tarpos _tolerant ))

(defmethod ros_control_boilerplate::poscmd
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:cntlwd __cntlwd) (make-array 6 :initial-element 0 :element-type :integer))
    ((:tarpos __tarpos) (make-array 6 :initial-element 0 :element-type :integer))
    ((:tolerant __tolerant) (make-array 6 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _cntlwd __cntlwd)
   (setq _tarpos __tarpos)
   (setq _tolerant __tolerant)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:cntlwd
   (&optional __cntlwd)
   (if __cntlwd (setq _cntlwd __cntlwd)) _cntlwd)
  (:tarpos
   (&optional __tarpos)
   (if __tarpos (setq _tarpos __tarpos)) _tarpos)
  (:tolerant
   (&optional __tolerant)
   (if __tolerant (setq _tolerant __tolerant)) _tolerant)
  (:serialization-length
   ()
   (+
    ;; uint16 _cmd
    2
    ;; uint16[6] _cntlwd
    (* 2    6)
    ;; int32[6] _tarpos
    (* 4    6)
    ;; uint16[6] _tolerant
    (* 2    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _cmd
       (write-word _cmd s)
     ;; uint16[6] _cntlwd
     (dotimes (i 6)
       (write-word (elt _cntlwd i) s)
       )
     ;; int32[6] _tarpos
     (dotimes (i 6)
       (write-long (elt _tarpos i) s)
       )
     ;; uint16[6] _tolerant
     (dotimes (i 6)
       (write-word (elt _tolerant i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _cmd
     (setq _cmd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16[6] _cntlwd
   (dotimes (i (length _cntlwd))
     (setf (elt _cntlwd i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; int32[6] _tarpos
   (dotimes (i (length _tarpos))
     (setf (elt _tarpos i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint16[6] _tolerant
   (dotimes (i (length _tolerant))
     (setf (elt _tolerant i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get ros_control_boilerplate::poscmd :md5sum-) "d52264d0965d62e7c180d35534e09146")
(setf (get ros_control_boilerplate::poscmd :datatype-) "ros_control_boilerplate/poscmd")
(setf (get ros_control_boilerplate::poscmd :definition-)
      "uint16 cmd
uint16[6] cntlwd
int32[6] tarpos
uint16[6] tolerant
")



(provide :ros_control_boilerplate/poscmd "d52264d0965d62e7c180d35534e09146")


