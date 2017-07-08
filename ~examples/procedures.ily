\version "2.19.63"

#(define (add-accentfu arg-note-event)
   "Add an accent ArticulationEvent to the articulations-prop-key of `arg-note-event',
   which is supposed to be a NoteEvent expression."
   (set! propname (ly:music-property arg-note-event 'articulations-prop-key))
   (set! propvalue 
         (cons 
            (make-music 'ArticulationEvent 'articulation-type "accent")
            (ly:music-property arg-note-event 'articulations-prop-key)
         )
   )
   (set! propname propvalue)          
   arg-note-event
)

  

addAccent = 
#(define-music-function 
   (parser location arg-note-event)     (ly:music?)
#!    arg-note-event
      #<Prob: Music C++:                                                                                 
        Music(                                                                                           
          (duration . #<Duration 8.. >) // or: (duration . #<Duration 1 >)                               
          (pitch . #<Pitch fes'' >)     // #<Pitch c >)                                                  
          (origin . #<location E:/Daten/Projekte/Box Sync/Schwesinenlieder/_Examples/display.ly:48:26>)  
        )                                                                                                
        (                                                                                                
          (display-methods #<procedure #f (note)>)                                                       
          (name . NoteEvent)                                                                             
          (iterator-ctor . #<primitive-procedure ly:rhythmic-music-iterator::constructor>)               
          (types event note-event rhythmic-event melodic-event)                                          
        )                                                                                                
      >                                                                                                  
!# 
   
   "Add an accent ArticulationEvent to the articulations-prop-key of `arg-note-event',
   which is supposed to be a NoteEvent expression."
   (define propname #f)
   (define propvalue #f)
   (set! propname "abc")
   (set! propvalue 12 )
   (set! propname (ly:music-property arg-note-event 'articulations-prop-key))
   (set! propvalue 
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
         propvalue
   )
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




xaddAccent = 
#(define-music-function 
   (parser location arg-note-event)
   (ly:music?)
   "Add an accent ArticulationEvent to the articulations-prop-key of `arg-note-event',
   which is supposed to be a NoteEvent expression."
   (set! (ly:music-property arg-note-event 'articulations #! prop-key !# )
      (cons 
         (make-music 'ArticulationEvent 'articulation-type "accent")
         (ly:music-property arg-note-event 'articulations #! prop-key !# )
      )
   )
   arg-note-event
)
