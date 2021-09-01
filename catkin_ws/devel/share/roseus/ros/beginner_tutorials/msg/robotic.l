;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::robotic)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'robotic (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ROBOTIC")
  (make-package "BEGINNER_TUTORIALS::ROBOTIC"))

(in-package "ROS")
;;//! \htmlinclude robotic.msg.html


(defclass beginner_tutorials::robotic
  :super ros::object
  :slots (_dec_24 ))

(defmethod beginner_tutorials::robotic
  (:init
   (&key
    ((:dec_24 __dec_24) "")
    )
   (send-super :init)
   (setq _dec_24 (string __dec_24))
   self)
  (:dec_24
   (&optional __dec_24)
   (if __dec_24 (setq _dec_24 __dec_24)) _dec_24)
  (:serialization-length
   ()
   (+
    ;; string _dec_24
    4 (length _dec_24)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _dec_24
       (write-long (length _dec_24) s) (princ _dec_24 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _dec_24
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dec_24 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::robotic :md5sum-) "a38a98ef76cf71c32b00d0be3e9374eb")
(setf (get beginner_tutorials::robotic :datatype-) "beginner_tutorials/robotic")
(setf (get beginner_tutorials::robotic :definition-)
      "string dec_24

")



(provide :beginner_tutorials/robotic "a38a98ef76cf71c32b00d0be3e9374eb")


