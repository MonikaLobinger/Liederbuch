\version "2.19.63"

soprano = { a b c' d' }
varStrophe =
    "2. Neun kleine Kinderlein, die gingen auf die Jagd,
    da hat sich eines totgeschoss'n, da waren's nur noch acht.
    Ein klein , zwei klien, drei klein, vier klein, fünf Klein Kinderlein
    sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"


#(define (strfu arg)
   (define splitString (string-split arg #\newline))
   (define result (string) )
   
  
   
   (for-each (lambda (x)
                (set! result (string-append  result x (string #\newline  #\newline)) ))
              splitString  
   )
   result
 )

\book {
   \header {
      title = "My title"
   }
   \score {
       \new Staff {
          \new Voice \soprano
       }
       \layout {
       }
       \midi {
       }
   }
   \paper {
      left-margin = 20\mm
      right-margin = 20\mm
   }
   \markup { \with-color #darkmagenta { \wordwrap-string #(strfu varStrophe)  } }
}
