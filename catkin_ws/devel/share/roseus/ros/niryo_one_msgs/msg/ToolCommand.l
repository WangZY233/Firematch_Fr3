;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::ToolCommand)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'ToolCommand (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::TOOLCOMMAND")
  (make-package "NIRYO_ONE_MSGS::TOOLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ToolCommand.msg.html


(defclass niryo_one_msgs::ToolCommand
  :super ros::object
  :slots (_tool_id _cmd_type _gripper_close_speed _gripper_open_speed _activate _gpio ))

(defmethod niryo_one_msgs::ToolCommand
  (:init
   (&key
    ((:tool_id __tool_id) 0)
    ((:cmd_type __cmd_type) 0)
    ((:gripper_close_speed __gripper_close_speed) 0)
    ((:gripper_open_speed __gripper_open_speed) 0)
    ((:activate __activate) nil)
    ((:gpio __gpio) 0)
    )
   (send-super :init)
   (setq _tool_id (round __tool_id))
   (setq _cmd_type (round __cmd_type))
   (setq _gripper_close_speed (round __gripper_close_speed))
   (setq _gripper_open_speed (round __gripper_open_speed))
   (setq _activate __activate)
   (setq _gpio (round __gpio))
   self)
  (:tool_id
   (&optional __tool_id)
   (if __tool_id (setq _tool_id __tool_id)) _tool_id)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:gripper_close_speed
   (&optional __gripper_close_speed)
   (if __gripper_close_speed (setq _gripper_close_speed __gripper_close_speed)) _gripper_close_speed)
  (:gripper_open_speed
   (&optional __gripper_open_speed)
   (if __gripper_open_speed (setq _gripper_open_speed __gripper_open_speed)) _gripper_open_speed)
  (:activate
   (&optional (__activate :null))
   (if (not (eq __activate :null)) (setq _activate __activate)) _activate)
  (:gpio
   (&optional __gpio)
   (if __gpio (setq _gpio __gpio)) _gpio)
  (:serialization-length
   ()
   (+
    ;; uint8 _tool_id
    1
    ;; uint8 _cmd_type
    1
    ;; uint16 _gripper_close_speed
    2
    ;; uint16 _gripper_open_speed
    2
    ;; bool _activate
    1
    ;; uint8 _gpio
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _tool_id
       (write-byte _tool_id s)
     ;; uint8 _cmd_type
       (write-byte _cmd_type s)
     ;; uint16 _gripper_close_speed
       (write-word _gripper_close_speed s)
     ;; uint16 _gripper_open_speed
       (write-word _gripper_open_speed s)
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _gpio
       (write-byte _gpio s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _tool_id
     (setq _tool_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_type
     (setq _cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _gripper_close_speed
     (setq _gripper_close_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _gripper_open_speed
     (setq _gripper_open_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _gpio
     (setq _gpio (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get niryo_one_msgs::ToolCommand :md5sum-) "8f7e2396c11f11b006af359f471f8457")
(setf (get niryo_one_msgs::ToolCommand :datatype-) "niryo_one_msgs/ToolCommand")
(setf (get niryo_one_msgs::ToolCommand :definition-)
      "
uint8 tool_id
uint8 cmd_type

# if gripper close
uint16 gripper_close_speed

# if gripper open
uint16 gripper_open_speed

# if vacuum pump or electromagnet grove
bool activate

# if tool is set by digital outputs (electromagnet)
uint8 gpio


")



(provide :niryo_one_msgs/ToolCommand "8f7e2396c11f11b006af359f471f8457")


