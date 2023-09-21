;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::GetWorkspaceList)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'GetWorkspaceList (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::GETWORKSPACELIST")
  (make-package "NIRYO_ONE_MSGS::GETWORKSPACELIST"))
(unless (find-package "NIRYO_ONE_MSGS::GETWORKSPACELISTREQUEST")
  (make-package "NIRYO_ONE_MSGS::GETWORKSPACELISTREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::GETWORKSPACELISTRESPONSE")
  (make-package "NIRYO_ONE_MSGS::GETWORKSPACELISTRESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::GetWorkspaceListRequest
  :super ros::object
  :slots ())

(defmethod niryo_one_msgs::GetWorkspaceListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass niryo_one_msgs::GetWorkspaceListResponse
  :super ros::object
  :slots (_workspaces ))

(defmethod niryo_one_msgs::GetWorkspaceListResponse
  (:init
   (&key
    ((:workspaces __workspaces) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _workspaces __workspaces)
   self)
  (:workspaces
   (&optional __workspaces)
   (if __workspaces (setq _workspaces __workspaces)) _workspaces)
  (:serialization-length
   ()
   (+
    ;; string[] _workspaces
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _workspaces)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _workspaces
     (write-long (length _workspaces) s)
     (dolist (elem _workspaces)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _workspaces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _workspaces (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _workspaces i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass niryo_one_msgs::GetWorkspaceList
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::GetWorkspaceList :md5sum-) "8b36c598e23fd962676550874c6879f7")
(setf (get niryo_one_msgs::GetWorkspaceList :datatype-) "niryo_one_msgs/GetWorkspaceList")
(setf (get niryo_one_msgs::GetWorkspaceList :request) niryo_one_msgs::GetWorkspaceListRequest)
(setf (get niryo_one_msgs::GetWorkspaceList :response) niryo_one_msgs::GetWorkspaceListResponse)

(defmethod niryo_one_msgs::GetWorkspaceListRequest
  (:response () (instance niryo_one_msgs::GetWorkspaceListResponse :init)))

(setf (get niryo_one_msgs::GetWorkspaceListRequest :md5sum-) "8b36c598e23fd962676550874c6879f7")
(setf (get niryo_one_msgs::GetWorkspaceListRequest :datatype-) "niryo_one_msgs/GetWorkspaceListRequest")
(setf (get niryo_one_msgs::GetWorkspaceListRequest :definition-)
      "
---
string[] workspaces

")

(setf (get niryo_one_msgs::GetWorkspaceListResponse :md5sum-) "8b36c598e23fd962676550874c6879f7")
(setf (get niryo_one_msgs::GetWorkspaceListResponse :datatype-) "niryo_one_msgs/GetWorkspaceListResponse")
(setf (get niryo_one_msgs::GetWorkspaceListResponse :definition-)
      "
---
string[] workspaces

")



(provide :niryo_one_msgs/GetWorkspaceList "8b36c598e23fd962676550874c6879f7")


