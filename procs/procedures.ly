\version "2.18.2"

#(define (IsInBook layout props arg)
   (if InBook
      (interpret-markup layout props arg)
      empty-stencil
   )
 )

#(define (IsOneScore layout props arg)
   (if (not InBook)
      (interpret-markup layout props arg)
      empty-stencil
   )
 )

#(define separate-pieces
   (if InBook
      pageBreak
      (markup #:column (" " " " " " " " " "))
   )
 )

#(define (color-notehead grob)
   "Color the notehead according to its position on the staff."
   (if InBook
      (let ((mod-position (modulo (ly:grob-property grob 'staff-position)
                                  7
                           )
            ))
         (case mod-position
            ;;   Return rainbow colors
            ((1) (x11-color 'red    ))  ; for C
            ((2) (x11-color 'orange ))  ; for D
            ((3) (x11-color 'yellow ))  ; for E
            ((4) (x11-color 'green  ))  ; for F
            ((5) (x11-color 'blue   ))  ; for G
            ((6) (x11-color 'purple ))  ; for A
            ((0) (x11-color 'violet ))  ; for B
         )
      )
   )
 )
