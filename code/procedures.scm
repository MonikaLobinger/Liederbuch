;
(define (nl2_2nl arg)
   (define resultString (string))
   (define lineList (string-split arg #\newline))
   (for-each
       (lambda (line)
               (set! resultString
                     (string-append resultString line (string #\newline  #\newline))))


       lineList)

   resultString)

(define (str2mlist argIn)
      (define resultMarkupList (list))
      (define arg (string))
      (define lineList (list))
      (set! arg argIn)
      (set! lineList (string-split arg #\newline))
      (for-each
          (lambda (line)
                  (set! resultMarkupList
                        (append resultMarkupList (list (make-simple-markup line)))))
          lineList)
      resultMarkupList)


(define (getPosition  charli char pos)
    (cond
        ((null? charli) 0)
        ((char=? char (car charli)) pos)
        (#t (getPosition (cdr charli) char ( +  1 pos)))))


(define (strchr str char)
    (getPosition (string->list str) char 1))
