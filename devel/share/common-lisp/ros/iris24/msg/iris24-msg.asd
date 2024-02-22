
(cl:in-package :asdf)

(defsystem "iris24-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "server2bs" :depends-on ("_package_server2bs"))
    (:file "_package_server2bs" :depends-on ("_package"))
  ))