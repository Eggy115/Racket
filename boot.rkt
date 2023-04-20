#lang racket
;; Generated by abnf/private/genboot-self-hosting.rkt.
(require abnf/lang)
(_define-and-provide-abnf
 #s(rulelist
    (#s(rule
        rulelist
        #f
        #s(repetition
           #t
           1
           #f
           #s(alternation
              (#s(reference rule)
               #s(reference meta)
               #s(concatenation
                  (#s(repetition #t 0 #f #s(reference c-wsp))
                   #s(reference c-nl)))))))
     #s(rule
        rule
        #f
        #s(concatenation
           (#s(reference rulename)
            #s(reference defined-as)
            #s(reference elements)
            #s(reference c-nl))))
     #s(rule
        rulename
        #f
        #s(concatenation
           (#s(reference ALPHA)
            #s(repetition
               #t
               0
               #f
               #s(alternation
                  (#s(reference ALPHA)
                   #s(reference DIGIT)
                   #s(char-val "-")))))))
     #s(rule
        defined-as
        #f
        #s(concatenation
           (#s(repetition #t 0 #f #s(reference c-wsp))
            #s(alternation (#s(char-val "=") #s(char-val "=/")))
            #s(repetition #t 0 #f #s(reference c-wsp)))))
     #s(rule
        elements
        #f
        #s(concatenation
           (#s(reference biased-choice)
            #s(repetition #t 0 #f #s(reference c-wsp)))))
     #s(rule
        c-wsp
        #f
        #s(alternation
           (#s(reference WSP)
            #s(concatenation (#s(reference c-nl) #s(reference WSP))))))
     #s(rule
        c-nl
        #f
        #s(alternation
           (#s(reference comment) #s(reference CRLF) #s(reference LF))))
     #s(rule
        comment
        #f
        #s(concatenation
           (#s(alternation (#s(char-val ";") #s(char-val "#")))
            #s(repetition
               #t
               0
               #f
               #s(alternation (#s(reference WSP) #s(reference VCHAR))))
            #s(alternation (#s(reference CRLF) #s(reference LF))))))
     #s(rule
        biased-choice
        #f
        #s(concatenation
           (#s(reference alternation)
            #s(repetition
               #t
               0
               #f
               #s(concatenation
                  (#s(repetition #t 0 #f #s(reference c-wsp))
                   #s(char-val "//")
                   #s(repetition #t 0 #f #s(reference c-wsp))
                   #s(reference alternation)))))))
     #s(rule
        alternation
        #f
        #s(concatenation
           (#s(reference concatenation)
            #s(repetition
               #t
               0
               #f
               #s(concatenation
                  (#s(repetition #t 0 #f #s(reference c-wsp))
                   #s(char-val "/")
                   #s(repetition #t 0 #f #s(reference c-wsp))
                   #s(reference concatenation)))))))
     #s(rule
        concatenation
        #f
        #s(concatenation
           (#s(reference repetition)
            #s(repetition
               #t
               0
               #f
               #s(concatenation
                  (#s(repetition #t 1 #f #s(reference c-wsp))
                   #s(reference repetition)))))))
     #s(rule
        repetition
        #f
        #s(concatenation
           (#s(repetition #t 0 1 #s(reference repeat)) #s(reference element))))
     #s(rule
        repeat
        #f
        #s(alternation
           (#s(repetition #t 1 #f #s(reference DIGIT))
            #s(concatenation
               (#s(repetition #t 0 #f #s(reference DIGIT))
                #s(char-val "*")
                #s(repetition #t 0 #f #s(reference DIGIT)))))))
     #s(rule
        element
        #f
        #s(alternation
           (#s(reference rulename)
            #s(reference group)
            #s(reference option)
            #s(reference char-val)
            #s(reference num-val)
            #s(reference prose-val))))
     #s(rule
        group
        #f
        #s(concatenation
           (#s(char-val "(")
            #s(repetition #t 0 #f #s(reference c-wsp))
            #s(reference biased-choice)
            #s(repetition #t 0 #f #s(reference c-wsp))
            #s(char-val ")"))))
     #s(rule
        option
        #f
        #s(concatenation
           (#s(char-val "[")
            #s(repetition #t 0 #f #s(reference c-wsp))
            #s(reference biased-choice)
            #s(repetition #t 0 #f #s(reference c-wsp))
            #s(char-val "]"))))
     #s(rule
        char-val
        #f
        #s(concatenation
           (#s(reference DQUOTE)
            #s(repetition
               #t
               0
               #f
               #s(alternation (#s(range 32 33) #s(range 35 126))))
            #s(reference DQUOTE))))
     #s(rule
        num-val
        #f
        #s(concatenation
           (#s(char-val "%")
            #s(alternation
               (#s(reference bin-val)
                #s(reference dec-val)
                #s(reference hex-val))))))
     #s(rule
        bin-val
        #f
        #s(concatenation
           (#s(char-val "b")
            #s(repetition #t 1 #f #s(reference BIT))
            #s(repetition
               #t
               0
               1
               #s(alternation
                  (#s(repetition
                      #t
                      1
                      #f
                      #s(concatenation
                         (#s(char-val ".")
                          #s(repetition #t 1 #f #s(reference BIT)))))
                   #s(concatenation
                      (#s(char-val "-")
                       #s(repetition #t 1 #f #s(reference BIT))))))))))
     #s(rule
        dec-val
        #f
        #s(concatenation
           (#s(char-val "d")
            #s(repetition #t 1 #f #s(reference DIGIT))
            #s(repetition
               #t
               0
               1
               #s(alternation
                  (#s(repetition
                      #t
                      1
                      #f
                      #s(concatenation
                         (#s(char-val ".")
                          #s(repetition #t 1 #f #s(reference DIGIT)))))
                   #s(concatenation
                      (#s(char-val "-")
                       #s(repetition #t 1 #f #s(reference DIGIT))))))))))
     #s(rule
        hex-val
        #f
        #s(concatenation
           (#s(char-val "x")
            #s(repetition #t 1 #f #s(reference HEXDIG))
            #s(repetition
               #t
               0
               1
               #s(alternation
                  (#s(repetition
                      #t
                      1
                      #f
                      #s(concatenation
                         (#s(char-val ".")
                          #s(repetition #t 1 #f #s(reference HEXDIG)))))
                   #s(concatenation
                      (#s(char-val "-")
                       #s(repetition #t 1 #f #s(reference HEXDIG))))))))))
     #s(rule
        prose-val
        #f
        #s(concatenation
           (#s(char-val "<")
            #s(repetition
               #t
               0
               #f
               #s(alternation (#s(range 32 61) #s(range 63 126))))
            #s(char-val ">"))))
     #s(rule
        meta
        #f
        #s(concatenation
           (#s(char-val "@")
            #s(repetition
               #t
               0
               #f
               #s(alternation (#s(reference WSP) #s(reference VCHAR))))
            #s(alternation (#s(reference CRLF) #s(reference LF))))))
     #s(rule ALPHA #f #s(alternation (#s(range 65 90) #s(range 97 122))))
     #s(rule BIT #f #s(alternation (#s(char-val "0") #s(char-val "1"))))
     #s(rule CHAR #f #s(range 1 127))
     #s(rule CR #f #s(range 13 13))
     #s(rule CRLF #f #s(concatenation (#s(reference CR) #s(reference LF))))
     #s(rule CTL #f #s(alternation (#s(range 0 31) #s(range 127 127))))
     #s(rule DIGIT #f #s(range 48 57))
     #s(rule DQUOTE #f #s(range 34 34))
     #s(rule
        HEXDIG
        #f
        #s(alternation
           (#s(reference DIGIT)
            #s(char-val "A")
            #s(char-val "B")
            #s(char-val "C")
            #s(char-val "D")
            #s(char-val "E")
            #s(char-val "F"))))
     #s(rule HTAB #f #s(range 9 9))
     #s(rule LF #f #s(range 10 10))
     #s(rule
        LWSP
        #f
        #s(repetition
           #t
           0
           #f
           #s(alternation
              (#s(reference WSP)
               #s(concatenation (#s(reference CRLF) #s(reference WSP)))))))
     #s(rule OCTET #f #s(range 0 255))
     #s(rule SP #f #s(range 32 32))
     #s(rule VCHAR #f #s(range 33 126))
     #s(rule WSP #f #s(alternation (#s(reference SP) #s(reference HTAB)))))))