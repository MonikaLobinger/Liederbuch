\version "2.19.63"
addAccent = 
#(define-music-function 
   (parser location arg-note-event)
   (ly:music?)
   "Add an accent ArticulationEvent to the articulations-prop-key of `arg-note-event',
   which is supposed to be a NoteEvent expression."
   (define propname "-----------------\n")
   (define propartvalue #f)
   (define propdurvalue #f)
   (display "\n")
   (display arg-note-event)
   (display "\n")
   (display  (ly:music-property arg-note-event 'articulations-prop-key))
   (display "\n")
   ;(define articulationsValue (assoc 'articulations-prop-key arg-note-event)) 
   (set! propname (ly:music-property arg-note-event 'articulations-prop-key))
   (set! propartvalue 
         (cons 
            (make-music 'ArticulationEvent 'articulation-type "accent")
            ; ly:music-property is a procedure with setter 
            ; arg-note-event is the maplike structure, 'articulations-prop-key is the key
            (ly:music-property arg-note-event 'articulations #! prop-key !# )
         )
   )
   ; local variables in let
   (let ((x 1) (y 2)(propname "abc")(propvalue 12))  (+ x y))
   (set! (ly:music-property arg-note-event 'articulations #! prop-key !# ) 
         propartvalue
   )
   (set! propdurvalue 
         (cons 
            (make-music 'ArticulationEvent 'articulation-type "accent")
            ; ly:music-property is a procedure with setter 
            ; arg-note-event is the maplike structure, 'articulations-prop-key is the key
            (ly:music-property arg-note-event 'duration #! prop-key !# )
         )
   )
   ; (set! (ly:music-property arg-note-event 'duration #! prop-key !# ) 
   ;       propdurvalue
   ; )
   arg-note-event
   #!
   There exists some procuedures like                                                  
      (ly:music-property-ref map key)                                                  
      (ly:music-property--set! map key val)                                            
   Out of theme procedure with setter is generated:                                    
   (define ly:music-property                                                           
      (make-procedure-with-setter ly:music-property-ref ly:music-property-set!         
      )                                                                                
   )                                                                                   
                                                                                       
   the resulting function ly:music-property can from now on be used to either          
   read from the data structure stored in f, or to write into the structure.           
   (set! (ly:music-property map key) val)                                              
   (ly:music-property map key)     ⇒ val                                              
   !#
)

printout = 
#(define-music-function 
   (parser location arg-note-event)
   (ly:music?)
   ""
   (display "\n")
   (display arg-note-event)
   arg-note-event
)


\displayMusic \printout { c'2\pp^4^>_"legato"( deses'4..^2) e'16^3~ \<  e'1 <c' e' g'>1^^\! }


