;; Auto-generated. Do not edit!


(when (boundp 'niryo_one_msgs::TakePicture)
  (if (not (find-package "NIRYO_ONE_MSGS"))
    (make-package "NIRYO_ONE_MSGS"))
  (shadow 'TakePicture (find-package "NIRYO_ONE_MSGS")))
(unless (find-package "NIRYO_ONE_MSGS::TAKEPICTURE")
  (make-package "NIRYO_ONE_MSGS::TAKEPICTURE"))
(unless (find-package "NIRYO_ONE_MSGS::TAKEPICTUREREQUEST")
  (make-package "NIRYO_ONE_MSGS::TAKEPICTUREREQUEST"))
(unless (find-package "NIRYO_ONE_MSGS::TAKEPICTURERESPONSE")
  (make-package "NIRYO_ONE_MSGS::TAKEPICTURERESPONSE"))

(in-package "ROS")





(defclass niryo_one_msgs::TakePictureRequest
  :super ros::object
  :slots (_path ))

(defmethod niryo_one_msgs::TakePictureRequest
  (:init
   (&key
    ((:path __path) "")
    )
   (send-super :init)
   (setq _path (string __path))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass niryo_one_msgs::TakePictureResponse
  :super ros::object
  :slots (_success ))

(defmethod niryo_one_msgs::TakePictureResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass niryo_one_msgs::TakePicture
  :super ros::object
  :slots ())

(setf (get niryo_one_msgs::TakePicture :md5sum-) "24518277da746ec8ade3d50c001c2adf")
(setf (get niryo_one_msgs::TakePicture :datatype-) "niryo_one_msgs/TakePicture")
(setf (get niryo_one_msgs::TakePicture :request) niryo_one_msgs::TakePictureRequest)
(setf (get niryo_one_msgs::TakePicture :response) niryo_one_msgs::TakePictureResponse)

(defmethod niryo_one_msgs::TakePictureRequest
  (:response () (instance niryo_one_msgs::TakePictureResponse :init)))

(setf (get niryo_one_msgs::TakePictureRequest :md5sum-) "24518277da746ec8ade3d50c001c2adf")
(setf (get niryo_one_msgs::TakePictureRequest :datatype-) "niryo_one_msgs/TakePictureRequest")
(setf (get niryo_one_msgs::TakePictureRequest :definition-)
      "string path
---
bool success

")

(setf (get niryo_one_msgs::TakePictureResponse :md5sum-) "24518277da746ec8ade3d50c001c2adf")
(setf (get niryo_one_msgs::TakePictureResponse :datatype-) "niryo_one_msgs/TakePictureResponse")
(setf (get niryo_one_msgs::TakePictureResponse :definition-)
      "string path
---
bool success

")



(provide :niryo_one_msgs/TakePicture "24518277da746ec8ade3d50c001c2adf")


