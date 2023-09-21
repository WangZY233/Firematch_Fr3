;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::DigitalIOState)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'DigitalIOState (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::DIGITALIOSTATE")
  (make-package "NIRYO_ONE_MSGS::DIGITALIOSTATE"))

(in-package "ROS")
;;//! \htmlinclude DigitalIOState.msg.html


(defclass niryo_one_msgs::DigitalIOState
  :super ros::object
  :slots (_pins _names _modes _states ))

(defmethod niryo_one_msgs::DigitalIOState
  (:init
   (&key
    ((:pins __pins) (make-array 0 :initial-element 0 :element-type :integer))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:modes __modes) (make-array 0 :initial-element 0 :element-type :integer))
    ((:states __states) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _pins __pins)
   (setq _names __names)
   (setq _modes __modes)
   (setq _states __states)
   self)
  (:pins
   (&optional __pins)
   (if __pins (setq _pins __pins)) _pins)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:modes
   (&optional __modes)
   (if __modes (setq _modes __modes)) _modes)
  (:states
   (&optional __states)
   (if __states (setq _states __states)) _states)
  (:serialization-length
   ()
   (+
    ;; int32[] _pins
    (* 4    (length _pins)) 4
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; int32[] _modes
    (* 4    (length _modes)) 4
    ;; int32[] _states
    (* 4    (length _states)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _pins
     (write-long (length _pins) s)
     (dotimes (i (length _pins))
       (write-long (elt _pins i) s)
       )
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _modes
     (write-long (length _modes) s)
     (dotimes (i (length _modes))
       (write-long (elt _modes i) s)
       )
     ;; int32[] _states
     (write-long (length _states) s)
     (dotimes (i (length _states))
       (write-long (elt _states i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _pins
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pins (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pins i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _modes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _modes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _modes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _states i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get niryo_one_msgs::DigitalIOState :md5sum-) "bfb33e3a012d1027925934dc7f71fdc3")
(setf (get niryo_one_msgs::DigitalIOState :datatype-) "niryo_one_msgs/DigitalIOState")
(setf (get niryo_one_msgs::DigitalIOState :definition-)
      "# GPIO pin
int32[] pins
# PIN names seen by user to make it simpler
string[] names
# IN/OUT
int32[] modes
# HIGH/LOW
int32[] states

")



(provide :niryo_one_msgs/DigitalIOState "bfb33e3a012d1027925934dc7f71fdc3")


