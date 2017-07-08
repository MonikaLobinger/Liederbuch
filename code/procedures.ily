\version "2.19.63"

#(define (MarkupStrophesAsLyrics layout props arg)
    (if StrophesAsLyrics
       (interpret-markup layout props arg)
        empty-stencil
    )
  )

#(define (MarkupStrophesAsStanza layout props arg)
   (if (not StrophesAsLyrics)
      (interpret-markup layout props arg)
      empty-stencil
   )
 )

#(define separate-pieces
   (if InBook
      pageBreak
      (markup #:column (" " ))
   )
 )

#(define-markup-command (stanza layout props text) (markup?)
   "Stanza"
   (interpret-markup layout props

     #{\markup \override #`(font-name . ,fontNameLyrics)
               \override #`(font-size . ,(- fontSizeLyrics 0) )
               \column { \vspace #0.5
                  { #text }
                }
      #}
  )
)

#(define-markup-list-command (paragraph layout props args) (markup-list?)
  #:properties ((par-indent 2))
  (interpret-markup-list layout props
    #{\markuplist \justified-lines { \hspace #par-indent #args } #}))


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

 #(define (color-notehead grob)
 "No colering."
  )
