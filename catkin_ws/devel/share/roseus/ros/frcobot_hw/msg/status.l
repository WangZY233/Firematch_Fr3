;; Auto-generated. Do not edit!


(when (boundp 'frcobot_hw::status)
  (if (not (find-package "FRCOBOT_HW"))
    (make-package "FRCOBOT_HW"))
  (shadow 'status (find-package "FRCOBOT_HW")))
(unless (find-package "FRCOBOT_HW::STATUS")
  (make-package "FRCOBOT_HW::STATUS"))

(in-package "ROS")
;;//! \htmlinclude status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass frcobot_hw::status
  :super ros::object
  :slots (_header _frame_count _program_state _error_code _robot_mode _cur_joints_pose _cur_tcp_pose _cur_joints_torque _tool_num _cl_dgt_output_h _cl_dgt_output_l _tl_dgt_output_l _robot_motion_done _gripper_motion_done ))

(defmethod frcobot_hw::status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_count __frame_count) 0)
    ((:program_state __program_state) 0)
    ((:error_code __error_code) 0)
    ((:robot_mode __robot_mode) 0)
    ((:cur_joints_pose __cur_joints_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cur_tcp_pose __cur_tcp_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cur_joints_torque __cur_joints_torque) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tool_num __tool_num) 0)
    ((:cl_dgt_output_h __cl_dgt_output_h) (make-array 0 :initial-element 0 :element-type :char))
    ((:cl_dgt_output_l __cl_dgt_output_l) (make-array 0 :initial-element 0 :element-type :char))
    ((:tl_dgt_output_l __tl_dgt_output_l) (make-array 0 :initial-element 0 :element-type :char))
    ((:robot_motion_done __robot_motion_done) 0)
    ((:gripper_motion_done __gripper_motion_done) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_count (round __frame_count))
   (setq _program_state (round __program_state))
   (setq _error_code (round __error_code))
   (setq _robot_mode (round __robot_mode))
   (setq _cur_joints_pose __cur_joints_pose)
   (setq _cur_tcp_pose __cur_tcp_pose)
   (setq _cur_joints_torque __cur_joints_torque)
   (setq _tool_num (round __tool_num))
   (setq _cl_dgt_output_h __cl_dgt_output_h)
   (setq _cl_dgt_output_l __cl_dgt_output_l)
   (setq _tl_dgt_output_l __tl_dgt_output_l)
   (setq _robot_motion_done (round __robot_motion_done))
   (setq _gripper_motion_done (round __gripper_motion_done))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frame_count
   (&optional __frame_count)
   (if __frame_count (setq _frame_count __frame_count)) _frame_count)
  (:program_state
   (&optional __program_state)
   (if __program_state (setq _program_state __program_state)) _program_state)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:robot_mode
   (&optional __robot_mode)
   (if __robot_mode (setq _robot_mode __robot_mode)) _robot_mode)
  (:cur_joints_pose
   (&optional __cur_joints_pose)
   (if __cur_joints_pose (setq _cur_joints_pose __cur_joints_pose)) _cur_joints_pose)
  (:cur_tcp_pose
   (&optional __cur_tcp_pose)
   (if __cur_tcp_pose (setq _cur_tcp_pose __cur_tcp_pose)) _cur_tcp_pose)
  (:cur_joints_torque
   (&optional __cur_joints_torque)
   (if __cur_joints_torque (setq _cur_joints_torque __cur_joints_torque)) _cur_joints_torque)
  (:tool_num
   (&optional __tool_num)
   (if __tool_num (setq _tool_num __tool_num)) _tool_num)
  (:cl_dgt_output_h
   (&optional __cl_dgt_output_h)
   (if __cl_dgt_output_h (setq _cl_dgt_output_h __cl_dgt_output_h)) _cl_dgt_output_h)
  (:cl_dgt_output_l
   (&optional __cl_dgt_output_l)
   (if __cl_dgt_output_l (setq _cl_dgt_output_l __cl_dgt_output_l)) _cl_dgt_output_l)
  (:tl_dgt_output_l
   (&optional __tl_dgt_output_l)
   (if __tl_dgt_output_l (setq _tl_dgt_output_l __tl_dgt_output_l)) _tl_dgt_output_l)
  (:robot_motion_done
   (&optional __robot_motion_done)
   (if __robot_motion_done (setq _robot_motion_done __robot_motion_done)) _robot_motion_done)
  (:gripper_motion_done
   (&optional __gripper_motion_done)
   (if __gripper_motion_done (setq _gripper_motion_done __gripper_motion_done)) _gripper_motion_done)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _frame_count
    1
    ;; uint8 _program_state
    1
    ;; uint8 _error_code
    1
    ;; uint8 _robot_mode
    1
    ;; float64[] _cur_joints_pose
    (* 8    (length _cur_joints_pose)) 4
    ;; float64[] _cur_tcp_pose
    (* 8    (length _cur_tcp_pose)) 4
    ;; float64[] _cur_joints_torque
    (* 8    (length _cur_joints_torque)) 4
    ;; uint8 _tool_num
    1
    ;; uint8[] _cl_dgt_output_h
    (* 1    (length _cl_dgt_output_h)) 4
    ;; uint8[] _cl_dgt_output_l
    (* 1    (length _cl_dgt_output_l)) 4
    ;; uint8[] _tl_dgt_output_l
    (* 1    (length _tl_dgt_output_l)) 4
    ;; uint8 _robot_motion_done
    1
    ;; uint8 _gripper_motion_done
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _frame_count
       (write-byte _frame_count s)
     ;; uint8 _program_state
       (write-byte _program_state s)
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; uint8 _robot_mode
       (write-byte _robot_mode s)
     ;; float64[] _cur_joints_pose
     (write-long (length _cur_joints_pose) s)
     (dotimes (i (length _cur_joints_pose))
       (sys::poke (elt _cur_joints_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _cur_tcp_pose
     (write-long (length _cur_tcp_pose) s)
     (dotimes (i (length _cur_tcp_pose))
       (sys::poke (elt _cur_tcp_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _cur_joints_torque
     (write-long (length _cur_joints_torque) s)
     (dotimes (i (length _cur_joints_torque))
       (sys::poke (elt _cur_joints_torque i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _tool_num
       (write-byte _tool_num s)
     ;; uint8[] _cl_dgt_output_h
     (write-long (length _cl_dgt_output_h) s)
     (princ _cl_dgt_output_h s)
     ;; uint8[] _cl_dgt_output_l
     (write-long (length _cl_dgt_output_l) s)
     (princ _cl_dgt_output_l s)
     ;; uint8[] _tl_dgt_output_l
     (write-long (length _tl_dgt_output_l) s)
     (princ _tl_dgt_output_l s)
     ;; uint8 _robot_motion_done
       (write-byte _robot_motion_done s)
     ;; uint8 _gripper_motion_done
       (write-byte _gripper_motion_done s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _frame_count
     (setq _frame_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _program_state
     (setq _program_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _robot_mode
     (setq _robot_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _cur_joints_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cur_joints_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cur_joints_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _cur_tcp_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cur_tcp_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cur_tcp_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _cur_joints_torque
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cur_joints_torque (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cur_joints_torque i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8 _tool_num
     (setq _tool_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _cl_dgt_output_h
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _cl_dgt_output_h (make-array n :element-type :char))
     (replace _cl_dgt_output_h buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _cl_dgt_output_l
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _cl_dgt_output_l (make-array n :element-type :char))
     (replace _cl_dgt_output_l buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _tl_dgt_output_l
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _tl_dgt_output_l (make-array n :element-type :char))
     (replace _tl_dgt_output_l buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _robot_motion_done
     (setq _robot_motion_done (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gripper_motion_done
     (setq _gripper_motion_done (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get frcobot_hw::status :md5sum-) "4e57754ebead024561f206770f4ce276")
(setf (get frcobot_hw::status :datatype-) "frcobot_hw/status")
(setf (get frcobot_hw::status :definition-)
      "std_msgs/Header header
uint8 frame_count
uint8 program_state
uint8 error_code
uint8 robot_mode
float64[] cur_joints_pose
float64[] cur_tcp_pose
float64[] cur_joints_torque
uint8 tool_num
uint8[] cl_dgt_output_h
uint8[] cl_dgt_output_l
uint8[] tl_dgt_output_l
uint8 robot_motion_done
uint8 gripper_motion_done
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :frcobot_hw/status "4e57754ebead024561f206770f4ce276")


