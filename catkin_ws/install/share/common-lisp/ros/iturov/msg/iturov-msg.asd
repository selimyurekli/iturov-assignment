
(cl:in-package :asdf)

(defsystem "iturov-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "bottom" :depends-on ("_package_bottom"))
    (:file "_package_bottom" :depends-on ("_package"))
    (:file "robotic" :depends-on ("_package_robotic"))
    (:file "_package_robotic" :depends-on ("_package"))
  ))