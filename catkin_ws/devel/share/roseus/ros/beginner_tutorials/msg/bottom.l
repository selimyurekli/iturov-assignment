;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::bottom)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'bottom (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::BOTTOM")
  (make-package "BEGINNER_TUTORIALS::BOTTOM"))

(in-package "ROS")
;;//! \htmlinclude bottom.msg.html


(defclass beginner_tutorials::bottom
  :super ros::object
  :slots (_dec_16 ))

(defmethod beginner_tutorials::bottom
  (:init
   (&key
    ((:dec_16 __dec_16) "")
    )
   (send-super :init)
   (setq _dec_16 (string __dec_16))
   self)
  (:dec_16
   (&optional __dec_16)
   (if __dec_16 (setq _dec_16 __dec_16)) _dec_16)
  (:serialization-length
   ()
   (+
    ;; string _dec_16
    4 (length _dec_16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _dec_16
       (write-long (length _dec_16) s) (princ _dec_16 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _dec_16
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dec_16 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::bottom :md5sum-) "a569087f646e4f1ea9df66c6efd925f2")
(setf (get beginner_tutorials::bottom :datatype-) "beginner_tutorials/bottom")
(setf (get beginner_tutorials::bottom :definition-)
      "string dec_16

")



(provide :beginner_tutorials/bottom "a569087f646e4f1ea9df66c6efd925f2")


