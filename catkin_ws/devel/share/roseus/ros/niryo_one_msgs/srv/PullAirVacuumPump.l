;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::PullAirVacuumPump)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'PullAirVacuumPump (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::PULLAIRVACUUMPUMP")
  (make-package "NIRYO_ONE_MSGS::PULLAIRVACUUMPUMP"))
(unless (find-package "NIRYO_ONE_MSGS::PULLAIRVACUUMPUMPREQUEST")
  (make-package "NIRYO_ONE_MSGS::PULLAIRVACUUMPUMPREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::PULLAIRVACUUMPUMPRESPONSE")
  (make-package "NIRYO_ONE_MSGS::PULLAIRVACUUMPUMPRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::PullAirVacuumPumpRequest
  :super ros::object
  :slots (_id _pull_air_position _pull_air_hold_torque ))

(defmethod niryo_one_msgs::PullAirVacuumPumpRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:pull_air_position __pull_air_position) 0)
    ((:pull_air_hold_torque __pull_air_hold_torque) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _pull_air_position (round __pull_air_position))
   (setq _pull_air_hold_torque (round __pull_air_hold_torque))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pull_air_position
   (&optional __pull_air_position)
   (if __pull_air_position (setq _pull_air_position __pull_air_position)) _pull_air_position)
  (:pull_air_hold_torque
   (&optional __pull_air_hold_torque)
   (if __pull_air_hold_torque (setq _pull_air_hold_torque __pull_air_hold_torque)) _pull_air_hold_torque)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int16 _pull_air_position
    2
    ;; int16 _pull_air_hold_torque
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _pull_air_position
       (write-word _pull_air_position s)
     ;; int16 _pull_air_hold_torque
       (write-word _pull_air_hold_torque s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _pull_air_position
     (setq _pull_air_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pull_air_hold_torque
     (setq _pull_air_hold_torque (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass niryo_one_msgs::PullAirVacuumPumpResponse
  :super ros::object
  :slots (_state ))

(defmethod niryo_one_msgs::PullAirVacuumPumpResponse
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_one_msgs::PullAirVacuumPump
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::PullAirVacuumPump :md5sum-) "fdd48b46d71dd8ff507dc76750227fa6")
(setf (get niryo_one_msgs::PullAirVacuumPump :datatype-) "niryo_one_msgs/PullAirVacuumPump")
(setf (get niryo_one_msgs::PullAirVacuumPump :request) niryo_one_msgs::PullAirVacuumPumpRequest)
(setf (get niryo_one_msgs::PullAirVacuumPump :response) niryo_one_msgs::PullAirVacuumPumpResponse)

(defmethod niryo_one_msgs::PullAirVacuumPumpRequest
  (:response () (instance niryo_one_msgs::PullAirVacuumPumpResponse :init)))

(setf (get niryo_one_msgs::PullAirVacuumPumpRequest :md5sum-) "fdd48b46d71dd8ff507dc76750227fa6")
(setf (get niryo_one_msgs::PullAirVacuumPumpRequest :datatype-) "niryo_one_msgs/PullAirVacuumPumpRequest")
(setf (get niryo_one_msgs::PullAirVacuumPumpRequest :definition-)
      "uint8 id

int16 pull_air_position
int16 pull_air_hold_torque
---
uint8 state

")

(setf (get niryo_one_msgs::PullAirVacuumPumpResponse :md5sum-) "fdd48b46d71dd8ff507dc76750227fa6")
(setf (get niryo_one_msgs::PullAirVacuumPumpResponse :datatype-) "niryo_one_msgs/PullAirVacuumPumpResponse")
(setf (get niryo_one_msgs::PullAirVacuumPumpResponse :definition-)
      "uint8 id

int16 pull_air_position
int16 pull_air_hold_torque
---
uint8 state

")



(provide :niryo_one_msgs/PullAirVacuumPump "fdd48b46d71dd8ff507dc76750227fa6")


