\version "2.19.63"

§§StanzaOne =
    "1. Bunt sind schon die Wälder,
    gelb die Soppelfelder
    und der Herbst beginnt.
    Rote Blätter fallen
    graue Nebel wallen
    kühler weht der Wind."


#(define (nl2_2nl arg)
   (define resultString (string))
   (define lineList (string-split arg #\newline))
   (for-each
       (lambda (line)
               (set! resultString
                     (string-append resultString line (string #\newline  #\newline))))                    
       lineList)   
   resultString)

#(define (str2m arg)
   (define resultMarkup (make-simple-markup  arg) )   
   resultMarkup)

%(make-simple-markup  arg) (make-simple-markup  arg) )   
#(define (str2mlist arg)
   (define resultMarkupList (list ))
   (define lineList (string-split arg #\newline))
   (for-each
       (lambda (line)
               (set! resultMarkupList
                     (append resultMarkupList (list (make-simple-markup line)) )))
       lineList)   
   resultMarkupList)

x = #(str2m  "m")
xlist = #(str2mlist  §§StanzaOne)

{ c }

\markup \x
\markuplist \xlist