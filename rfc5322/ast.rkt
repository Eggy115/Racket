#lang racket/base

(provide (all-defined-out))

(struct message (headers body) #:prefab)
(struct address (display-name spec) #:prefab)
(struct routed-addr (route address) #:prefab)
(struct group (display-name mailboxes) #:prefab)

(struct date-time (day-of-week date time) #:prefab)
(struct date (year month day) #:prefab)
(struct time (hour minute second zone) #:prefab)

(struct header (key value) #:prefab)
(define-syntax-rule (def-header name (field ...))
  (struct name header (field ...) #:prefab))

(def-header from (mailboxes))
(def-header sender (mailbox))
(def-header to (addresses))
(def-header cc (addresses))
(def-header bcc (addresses))
(def-header subject ())
(def-header comments ())
(def-header return (path))
(def-header generic-header ())
(def-header reply-to (addresses))
(def-header message-id (id))
(def-header in-reply-to (ids))
(def-header references (ids))
(def-header orig-date (stamp))
(def-header received (tokens date-time))
(def-header resent-date (stamp))
(def-header resent-from (mailboxes))
(def-header resent-sender (mailbox))
(def-header resent-to (addresses))
(def-header resent-cc (addresses))
(def-header resent-bcc (addresses))
(def-header resent-msg-id (id))