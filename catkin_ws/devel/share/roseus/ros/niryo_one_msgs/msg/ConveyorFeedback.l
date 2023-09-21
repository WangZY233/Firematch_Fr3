;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ConveyorFeedback)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ConveyorFeedback (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::CONVEYORFEEDBACK")
  (make-package "NIRYO_ONE_MSGS::CONVEYORFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ConveyorFeedback.msg.html


(defclass niryo_one_msgs::ConveyorFeedback
  :super ros::object
  :slots (_conveyor_id _connection_state _running _speed _direction ))

(defmethod niryo_one_msgs::ConveyorFeedback
  (:init
   (&key
    ((:conveyor_id __conveyor_id) 0)
    ((:connection_state __connection_state) nil)
    ((:running __running) nil)
    ((:speed __speed) 0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _conveyor_id (round __conveyor_id))
   (setq _connection_state __connection_state)
   (setq _running __running)
   (setq _speed (round __speed))
   (setq _direction (round __direction))
   self)
  (:conveyor_id
   (&optional __conveyor_id)
   (if __conveyor_id (setq _conveyor_id __conveyor_id)) _conveyor_id)
  (:connection_state
   (&optional (__connection_state :null))
   (if (not (eq __connection_state :null)) (setq _connection_state __connection_state)) _connection_state)
  (:running
   (&optional (__running :null))
   (if (not (eq __running :null)) (setq _running __running)) _running)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; uint8 _conveyor_id
    1
    ;; bool _connection_state
    1
    ;; bool _running
    1
    ;; int16 _speed
    2
    ;; int8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _conveyor_id
       (write-byte _conveyor_id s)
     ;; bool _connection_state
       (if _connection_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _running
       (if _running (write-byte -1 s) (write-byte 0 s))
     ;; int16 _speed
       (write-word _speed s)
     ;; int8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _conveyor_id
     (setq _conveyor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _connection_state
     (setq _connection_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _running
     (setq _running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _direction 127) (setq _direction (- _direction 256)))
   ;;
   self)
  )

(setf (get niryo_one_msgs::ConveyorFeedback :md5sum-) "1e7764cd998f86f936c67fc5b79bd288")
(setf (get niryo_one_msgs::ConveyorFeedback :datatype-) "niryo_one_msgs/ConveyorFeedback")
(setf (get niryo_one_msgs::ConveyorFeedback :definition-)
      "
#Conveyor id ( either 6 or 7) 
uint8 conveyor_id
#Conveyor Connection state ( if it is enabled) 
bool connection_state
# Conveyor Controls state : ON or OFF
bool running
# Conveyor Speed ( 1-> 100 %)
int16 speed
# Conveyor direction ( backward or forward)
int8 direction
")



(provide :niryo_one_msgs/ConveyorFeedback "1e7764cd998f86f936c67fc5b79bd288")


