;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::PushAirVacuumPump)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'PushAirVacuumPump (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::PUSHAIRVACUUMPUMP")
  (make-package "NIRYO_ONE_MSGS::PUSHAIRVACUUMPUMP"))
(unless (find-package "NIRYO_ONE_MSGS::PUSHAIRVACUUMPUMPREQUEST")
  (make-package "NIRYO_ONE_MSGS::PUSHAIRVACUUMPUMPREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::PUSHAIRVACUUMPUMPRESPONSE")
  (make-package "NIRYO_ONE_MSGS::PUSHAIRVACUUMPUMPRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::PushAirVacuumPumpRequest
  :super ros::object
  :slots (_id _push_air_position ))

(defmethod niryo_one_msgs::PushAirVacuumPumpRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:push_air_position __push_air_position) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _push_air_position (round __push_air_position))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:push_air_position
   (&optional __push_air_position)
   (if __push_air_position (setq _push_air_position __push_air_position)) _push_air_position)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int16 _push_air_position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _push_air_position
       (write-word _push_air_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _push_air_position
     (setq _push_air_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass niryo_one_msgs::PushAirVacuumPumpResponse
  :super ros::object
  :slots (_state ))

(defmethod niryo_one_msgs::PushAirVacuumPumpResponse
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

(defclass niryo_one_msgs::PushAirVacuumPump
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::PushAirVacuumPump :md5sum-) "41cc870230024f471ead928a5e8205a0")
(setf (get niryo_one_msgs::PushAirVacuumPump :datatype-) "niryo_one_msgs/PushAirVacuumPump")
(setf (get niryo_one_msgs::PushAirVacuumPump :request) niryo_one_msgs::PushAirVacuumPumpRequest)
(setf (get niryo_one_msgs::PushAirVacuumPump :response) niryo_one_msgs::PushAirVacuumPumpResponse)

(defmethod niryo_one_msgs::PushAirVacuumPumpRequest
  (:response () (instance niryo_one_msgs::PushAirVacuumPumpResponse :init)))

(setf (get niryo_one_msgs::PushAirVacuumPumpRequest :md5sum-) "41cc870230024f471ead928a5e8205a0")
(setf (get niryo_one_msgs::PushAirVacuumPumpRequest :datatype-) "niryo_one_msgs/PushAirVacuumPumpRequest")
(setf (get niryo_one_msgs::PushAirVacuumPumpRequest :definition-)
      "uint8 id

int16 push_air_position
---
uint8 state

")

(setf (get niryo_one_msgs::PushAirVacuumPumpResponse :md5sum-) "41cc870230024f471ead928a5e8205a0")
(setf (get niryo_one_msgs::PushAirVacuumPumpResponse :datatype-) "niryo_one_msgs/PushAirVacuumPumpResponse")
(setf (get niryo_one_msgs::PushAirVacuumPumpResponse :definition-)
      "uint8 id

int16 push_air_position
---
uint8 state

")



(provide :niryo_one_msgs/PushAirVacuumPump "41cc870230024f471ead928a5e8205a0")


