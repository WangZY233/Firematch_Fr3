;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ProcessState)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ProcessState (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::PROCESSSTATE")
  (make-package "NIRYO_ONE_MSGS::PROCESSSTATE"))

(in-package "ROS")
;;//! \htmlinclude ProcessState.msg.html


(defclass niryo_one_msgs::ProcessState
  :super ros::object
  :slots (_name _is_active ))

(defmethod niryo_one_msgs::ProcessState
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:is_active __is_active) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _name __name)
   (setq _is_active __is_active)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:is_active
   (&optional __is_active)
   (if __is_active (setq _is_active __is_active)) _is_active)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; bool[] _is_active
    (* 1    (length _is_active)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _is_active
     (write-long (length _is_active) s)
     (dotimes (i (length _is_active))
       (if (elt _is_active i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _is_active
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _is_active (make-list n))
     (dotimes (i n)
     (setf (elt _is_active i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get niryo_one_msgs::ProcessState :md5sum-) "ea4d2ab332d89d84ef08a4d6fe541702")
(setf (get niryo_one_msgs::ProcessState :datatype-) "niryo_one_msgs/ProcessState")
(setf (get niryo_one_msgs::ProcessState :definition-)
      "
string[] name
bool[] is_active


")



(provide :niryo_one_msgs/ProcessState "ea4d2ab332d89d84ef08a4d6fe541702")


