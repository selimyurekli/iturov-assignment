;; Auto-generated. Do not edit!


(when (boundp 'iturov::robotic)
  (if (not (find-package "ITUROV"))
    (make-package "ITUROV"))
  (shadow 'robotic (find-package "ITUROV")))
(unless (find-package "ITUROV::ROBOTIC")
  (make-package "ITUROV::ROBOTIC"))

(in-package "ROS")
;;//! \htmlinclude robotic.msg.html


(defclass iturov::robotic
  :super ros::object
  :slots (_dec_24 ))

(defmethod iturov::robotic
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

(setf (get iturov::robotic :md5sum-) "a38a98ef76cf71c32b00d0be3e9374eb")
(setf (get iturov::robotic :datatype-) "iturov/robotic")
(setf (get iturov::robotic :definition-)
      "string dec_24

")



(provide :iturov/robotic "a38a98ef76cf71c32b00d0be3e9374eb")


