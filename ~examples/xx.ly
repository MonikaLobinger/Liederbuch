\version "2.19.63"
\language "DE" % ML
% \include "../layout/midi.ily"
   MidiVoice = "english horn"
%END "../layout/midi.ily"
   
% \include "../layout/sheetA4.ily"
   %% The default staff size is 20 points, which corresponds to a staff height of 7.03mm 
   %%(one point is equal to 100/7227 of an inch, or 2540/7227 mm). 
   %% Following sets the global default staff size to 14pt (4.92mm) and scales all fonts accordingly.
   %% #(set-global-staff-size 14) % ML   %11.22 12.60 14.14 15.87 17.82 20 22.45 25.2
   #(set-global-staff-size 20) % ML   %11.22 12.60 14.14 15.87 17.82 20 22.45 25.2
   % \include "../layout/paperA4.ily"
      IsAFive = ##f
      IsAFour = ##t
      \paper {
         #(set-paper-size "a4")
         check-consistency = ##t
         top-margin = 13\mm
         bottom-margin = 10\mm
         ragged-bottom = ##t % ##f: Füllt die Seite bis unten
         print-page-number = ##t
         print-first-page-number = ##f
      
         print-all-headers = ##t
         oddHeaderMarkup = \markup \null
         evenHeaderMarkup = \markup \null
      
         oddFooterMarkup = \markup {
            \fill-line {
               \on-the-fly #print-page-number-check-first
                  \fromproperty #'page:page-number-string
               \on-the-fly #print-page-number-check-first
                  \fromproperty #'header:myTitle
             }
          }
          evenFooterMarkup = \oddFooterMarkup
      }
      % END "../layout/paperA4.ily"
    
   % ML \paper {      
   % ML    #(layout-set-staff-size 20 ) %11.22 12.60 14.14 15.87 17.82 20 22.45 25.2
   % ML }
   % \include "../layout/sheet.ily"
      % \include "../switches.ily"
         InBook = ##f
         StrophesAsLyrics = ##f
         ShowTempo = ##f
         ShowChords = ##f     
      % END "../switches.ily"
      
      % \include "../layout/layout.ily"
         % \include "..\layout\system.ily"
            fontNameLyrics = "Narkisim"
            fontSizeLyrics = #+0        
         % END "..\layout\system.ily"
         
         \paper {
            two-sided = ##f
         }
         
         \layout {
           \context { \ChordNames
               \germanChords
               \override ChordName.font-size = #-0.5
         } }
         
         \layout {
           \context { \Score
               \override MetronomeMark.X-offset = #3
               \override MetronomeMark.Y-offset = #-2
               \override MetronomeMark.font-size = #-2
         } }
         
         \layout {
           \context { \Score
               \override BarNumber.X-offset = #0.1
               \override BarNumber.Y-offset = #3
         } }
         \layout {
             \context { \Lyrics
                 \override LyricText.self-alignment-X = #LEFT
                 \override LyricText.font-size = \fontSizeLyrics
                 \override LyricText.font-name = \fontNameLyrics
         } }
         
         \layout {
             \context { \Lyrics
                 \override VerticalAxisGroup.staff-affinity = #DOWN
         } }
         
         \paper {
           system-system-spacing.padding = #1.1
         }      
      % END "../layout/layout.ily"
      InBook = ##f
      StrophesAsLyrics = ##t
      
      \layout {
      }  
   % END "../layout/sheet.ily"        
   \paper {
      left-margin = 30.0\mm
      right-margin = 20.0\mm
      indent = 0
   }
   SONGLINEWIDTH = #160 % ML
   
   
   \layout {
    \override NoteHead.font-size = #+1
   }
%END "../layout/sheetA4.ily"
  
ShowTempo  = ##f
ShowChords = ##t


% \include "../scores/Score Xyz.ily"
   % \include "../code/procs.ily"
      % \include "../basedir.ily"
         #(set! %load-path (cons "E:/Daten/Projekte/Box Sync/Schwesinenlieder/" %load-path))
      %END "../basedir.ily"
      #(load-from-path "code/procedures.scm")
      
      % \include "../code/procedures.ily"        
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
      %END "../code/procedures.ily"
      
      % \include "../code/macros.ily"
         voicesopranoverrides = \override NoteHead.color = #color-notehead
         voicealtoverrides = \override NoteHead.color = #color-notehead
         voicetenoroverrides = \override NoteHead.color = #color-notehead
         voicebassoverrides = \override NoteHead.color = #color-notehead
         pieceseparator = #separate-pieces
      %END "../code/macros.ily"
   
   % END "../code/procs.ily"

   % \include "../_in/begin.ily"
      §§Title = ""                   %{ Song title                                                    %} 
      §§Subtitle = ##f               %{ Subtitle for the song                                         %} 
      §§ScoreKey = { \key c \major } %{ score key                                                     %} 
      §§ScoreMeter = { \time 4/4 }   %{ score meter                                                   %} 
      §§ScoreTempo = { }             %{ overall tempo                                                 %} 
      §§HiddenVoice = { s1 }         %{ Hidden parallel voice for markings, breaking, ...             %} 
      §§NotesSopranoI = { s1 }       %{ Notes for Soprano 1                                           %} 
      §§NotesSopranoII = { s1 }      %{ Notes for Soprano 2                                           %} 
      §§Chords = \chordmode {  }     %{ Guitar chords                                                 %} 
      §§VerseOneSI = \lyricmode { }  %{ text for 1. verse to be written in staff for Soprano I and II %} 
      §§VerseTwoSI = \lyricmode { }  %{ text for 2. verse to be written in staff for Soprano I and II %} 
      §§VerseThrSI = \lyricmode { }  %{ text for 3. verse to be written in staff for Soprano I and II %} 
      §§VerseFouSI = \lyricmode { }  %{ text for 4. verse to be written in staff for Soprano I and II %} 
      §§VerseFivSI = \lyricmode { }  %{ text for 5. verse to be written in staff for Soprano I and II %} 
      §§VerseSixSI = \lyricmode { }  %{ text for 6. verse to be written in staff for Soprano I and II %} 
      §§VerseSevSI = \lyricmode { }  %{ text for 7. verse to be written in staff for Soprano I and II %} 
      §§VerseEigSI = \lyricmode { }  %{ text for 8. verse to be written in staff for Soprano I and II %} 
      §§VerseNinSI = \lyricmode { }  %{ text for 9. verse to be written in staff for Soprano I and II %} 
      §§VerseTenSI = \lyricmode { }  %{ text for 10.verse to be written in staff for Soprano I and II %} 
      §§VerseEleSI = \lyricmode { }  %{ text for 11.verse to be written in staff for Soprano I and II %} 
      §§VerseTweSI = \lyricmode { }  %{ text for 12.verse to be written in staff for Soprano I and II %} 
      §§VerseThiSI = \lyricmode { }  %{ text for 13.verse to be written in staff for Soprano I and II %} 
      §§VerseFoTSI = \lyricmode { }  %{ text for 14.verse to be written in staff for Soprano I and II %} 
      §§VerseFiTSI = \lyricmode { }  %{ text for 15.verse to be written in staff for Soprano I and II %} 
      §§VerseSiTSI = \lyricmode { }  %{ text for 16.verse to be written in staff for Soprano I and II %} 
      §§VerseSeTSI = \lyricmode { }  %{ text for 17.verse to be written in staff for Soprano I and II %} 
      §§VerseEiTSI = \lyricmode { }  %{ text for 18.verse to be written in staff for Soprano I and II %} 
      §§VerseNiTSI = \lyricmode { }  %{ text for 19.verse to be written in staff for Soprano I and II %} 
      §§VerseTWeSI = \lyricmode { }  %{ text for 20.verse to be written in staff for Soprano I and II %} 
      §§VerseTOnSI = \lyricmode { }  %{ text for 21.verse to be written in staff for Soprano I and II %} 
      §§VerseTTwSI = \lyricmode { }  %{ text for 22.verse to be written in staff for Soprano I and II %} 
      §§VerseTThSI = \lyricmode { }  %{ text for 23.verse to be written in staff for Soprano I and II %} 
      §§VerseTFoSI = \lyricmode { }  %{ text for 24.verse to be written in staff for Soprano I and II %} 
      §§VerseTFiSI = \lyricmode { }  %{ text for 25.verse to be written in staff for Soprano I and II %} 
      §§VerseTSiSI = \lyricmode { }  %{ text for 26.verse to be written in staff for Soprano I and II %} 
      §§VerseTSeSI = \lyricmode { }  %{ text for 27.verse to be written in staff for Soprano I and II %} 
      §§VerseTEiSI = \lyricmode { }  %{ text for 28.verse to be written in staff for Soprano I and II %} 
      §§VerseTNiSI = \lyricmode { }  %{ text for 29.verse to be written in staff for Soprano I and II %} 
      §§StanzaOne = ""               %{ 1. verse to be written outside score                          %}  
      §§StanzaTwo = ""               %{ 2. verse to be written outside score                          %}  
      §§StanzaThr = ""               %{ 3. verse to be written outside score                          %}  
      §§StanzaFou = ""               %{ 4. verse to be written outside score                          %}  
      §§StanzaFiv = ""               %{ 5. verse to be written outside score                          %}  
      §§StanzaSix = ""               %{ 6. verse to be written outside score                          %}  
      §§StanzaSev = ""               %{ 7. verse to be written outside score                          %}  
      §§StanzaEig = ""               %{ 8. verse to be written outside score                          %}  
      §§StanzaNin = ""               %{ 9. verse to be written outside score                          %}  
      §§StanzaTen = ""               %{ 10. verse to be written outside score                         %}  
      §§StanzaEle = ""               %{ 11. verse to be written outside score                         %}  
      §§StanzaTwe = ""               %{ 12. verse to be written outside score                         %}  
      §§StanzaThi = ""               %{ 13. verse to be written outside score                         %}  
      §§StanzaFoT = ""               %{ 14. verse to be written outside score                         %}  
      §§StanzaFiT = ""               %{ 15. verse to be written outside score                         %}  
      §§StanzaSiT = ""               %{ 16. verse to be written outside score                         %}  
      §§StanzaSeT = ""               %{ 17. verse to be written outside score                         %}  
      §§StanzaEiT = ""               %{ 18. verse to be written outside score                         %}  
      §§StanzaNiT = ""               %{ 19. verse to be written outside score                         %}  
      §§StanzaTWe = ""               %{ 20. verse to be written outside score                         %}  
      §§StanzaTOn = ""               %{ 21. verse to be written outside score                         %}  
      §§StanzaTTw = ""               %{ 22. verse to be written outside score                         %}  
      §§StanzaTTh = ""               %{ 23. verse to be written outside score                         %}  
      §§StanzaTFo = ""               %{ 24. verse to be written outside score                         %}  
      §§StanzaTFi = ""               %{ 25. verse to be written outside score                         %}  
      §§StanzaTSi = ""               %{ 26. verse to be written outside score                         %}  
      §§StanzaTSe = ""               %{ 27. verse to be written outside score                         %}  
      §§StanzaTEi = ""               %{ 28. verse to be written outside score                         %}  
      §§StanzaTNi = ""               %{ 29. verse to be written outside score                         %}  
   %END "../_in/begin.ily"
   
   % \include "../_in/Input Mariechen sass weinend im Garten.ly"     
      % \include "begin.ily"
      %END "begin.ily
      
      §§Title = "Mariechen saß weinend im Garten"
      
      §§ScoreKey =   { \key c \major }
      §§ScoreMeter = { \time 3/4 \numericTimeSignature }
      §§ScoreTempo = { \tempo 4 = 140 }
      
      §§HiddenVoice = { %                                   -8-
        \partial 4 s4 | s2. | s | s | s | s  | s | s \noBreak |
        s | s | s | s | s | s | s | s | s2
        \repeat volta 2 { s4 | s2. | s | s | s | s | s |
        s \noBreak | s | s | s | s | s | s | s | s2
        }
      }
      
      §§NotesSopranoI = \relative c'' {
         %         ODER: g g g                        -5-                     -8-
         \partial 4 g4 | e e e | a a a | g g r | r2 g4 | e e e | g g g | f2 r4 |
         r2 g4 | g g g | b2 b4 | a a2~ | a4 r a | f f f | a2 a4 | g2.~ | g4 r
         %               ODER: g2 c4
         \repeat volta 2 { g | e2 g4 | e'2 d4 | d4 c2~ | c4 r c | c2 c4 | b2 c4 |
         d2.~ | d4 r c | b2 a4 | a2 g4 | b b r | r2 a4 | g2 a4 | f2 g4 | e2
         }
      }
      
      §§Chords = \chordmode {
          s4 c2. f c s s s g:7 s s s s s s s c s2
          \repeat volta 2 { s4 e2. a:m s s s f s g:7 s s s s s s c2  }
      }
      
      
§§VerseOneSI = \lyricmode {
  \set stanza = "1."
  Ma -- | rie -- chen saß | wei -- nend im | Gar -- ten,
  im | Gra -- se lag | schlum -- mernd ihr | Kind.
  Mit | ih -- ren schwarz -- | brau -- nen | Lock -- en __
  spielt | lei -- se der | A -- bend -- | wind. __
  \repeat volta 2 { Sie | saß so | still und | trau -- rig, __
  so | ein -- sam | gei -- ster -- | bleich.
  Die | dunk -- len | Wol -- ken | zo -- gen
  und | Wel -- len | schlug der | Teich. }
}
§§StanzaOne =
  "1. Mariechen saß weinend im Garten,
  im Grase lag schlummernd ihr Kind.
  Mit ihren schwarzbraunen Locken
  spielt leise der Abendwind.
  ||:Sie saß so still und traurig,
  So einsam geisterbleich.
  Die dunklen Wolken zogen
  Und Wellen schlug der Teich. :||"


§§VerseTwoSI = \lyricmode {
  \set stanza = "2."
  Der | Rei -- her steigt | ü -- ber die | Ber -- ge,
  die | Mö -- ve zieht | stolz __ _ ein -- her,
  in | der Luft singt | munter die | Ler -- che, __
  es | wir -- belt der | Sand am | Meer. __
  \repeat volta 2 { Und | über  Ma -- | rie -- chens | Wan -- gen __
  "ei -- ne" | hei -- ße | Trä -- ne | rinnt.
  "Sie hält" | schluch -- zend | in den | Ar -- men
  ihr | fried -- lich | schlum -- mernd | Kind. }
}
§§StanzaTwo =
  "2. Der Reiher steigt über die Berge,
  die Möve zeiht stolz einher,
  in der Luft singt munter die Lerche,
  es wirbelt der Sand am Meer.
  ||: Und über Mariechens Wangen
  eine heiße Träne rinnt.
  Sie hält schluchzend in den Armen
  ihr friedlich schlummernd Kind. :||"


§§VerseThrSI = \lyricmode {
  \set  stanza = "3."
  Hier | liegst du so | ru -- hig von | Sin -- nen
  du | ar -- mer ver -- | las -- sen -- er | Wurm.
  Du | träumst von künf -- | ti -- gen | Sor --  gen,__
  die | Bäu -- me be -- | wegt der | Sturm. __
  \repeat volta 2 { Dein | Va_ter hat | dich ver -- | las -- sen,
  dich | und die | Mut -- ter | dein,
  drum | sind wir | ar -- me | We -- sen
  auf | die -- ser | Welt al -- | lein. }
}
§§StanzaThr =
  "3. Hier liegst du so ruhig von Sinnen
  du armer verlassener Wurm.
  Du träumst von künftigen Sorgen,
  die Bäume bewegt der Sturm.
  ||: Dein Vater hat dich ver lassen,
  dich und die Mutter dein,
  drum sind wir arme Wesen
  auf dieser Welt allein. :||"


§§VerseFouSI = \lyricmode {
  \set  stanza = "4."
  Dein | Va -- ter lebt | lus -- tig in | Freu -- den,
  Gott | laß es ihm | wohl __  _ er -- | gehn.
  Er | denkt  __  _  nicht | an uns | bei --  de, __
  will | dich  __  _ und | mich nicht | sehn. __
  \repeat volta 2 { Drum | wol -- len | wir uns | bei -- de __
  hier | stür -- zen | in den | See.
  Dort | sind wir | dann ge -- | bor -- gen
  vor | Kum -- mer, | Ach und | Weh. }
}
§§StanzaFou =
  "4. Dein Vater lebt lustig in Freuden,
  Gott laß es ihm wohl ergehn.
  Er denkt nicht an uns beide,
  will dich und mich nicht sehn
  ||: Dum wollen wir uns beide
  hier stürzen in den See.
  Dort sind wir dann geborgen
  vor Kummer, Ach und Weh. :||"


§§VerseFivSI = \lyricmode {
  \set stanza = "5."
  Da | öff -- net das | Kind -- lein die | Au -- gen,
  blickt | freund -- lich sie | an __ _ und | lacht.
  Die | Mut -- ter wei -- | net vor | Freu -- de __
  und | drückt's an ihr | Herz mit | Macht. __
  \repeat volta 2 { Ja, | ja wir | wol -- len | le -- ben, __
  wir | bei -- de | du und | ich.
  Dem | Va -- ter | sei's ver -- | ge -- ben,
  so | glück -- lich | machst du | mich. }
}
§§StanzaFiv =
  "5. Da öffnet das Kindlein die Augen,
  blickt freundlich sie an und lacht.
  Die Mutter weinet vor Freude
  Und drückt's an ihr Herz mit Macht.
  ||: Ja, ja wir wollen leben,
  wir beide du und ich.
  Dem Vater sei's vergeben,
  so glücklich machst du mich. :||"
      
      
      % \include "end.ily"
      %END "end.ily"  
   %END "../_in/Input Mariechen sass weinend im Garten.ly"

   % \include "../scores/Score.ily"
      % \include "../scores/Strophes.ily"
         % \include "../scores/beginStrophes.ily"
            §§LyricsOneSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseOneSI
            §§LyricsTwoSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTwoSI
            §§LyricsThrSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseThrSI
            §§LyricsFouSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseFouSI
            §§LyricsFivSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseFivSI
            §§LyricsSixSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseSixSI
            §§LyricsSevSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseSevSI
            §§LyricsEigSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseEigSI
            §§LyricsNinSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseNinSI
            §§LyricsTenSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTenSI
            §§LyricsEleSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseEleSI
            §§LyricsTweSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTweSI
            §§LyricsThiSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseThiSI
            §§LyricsFoTSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseFoTSI
            §§LyricsFiTSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseFiTSI
            §§LyricsSiTSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseSiTSI
            §§LyricsSeTSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseSeTSI
            §§LyricsEiTSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseEiTSI
            §§LyricsNiTSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseNiTSI
            §§LyricsTWeSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTWeSI
            §§LyricsTOnSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTOnSI
            §§LyricsTTwSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTTwSI
            §§LyricsTThSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTThSI
            §§LyricsTFoSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTFoSI
            §§LyricsTFiSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTFiSI
            §§LyricsTSiSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTSiSI
            §§LyricsTSeSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTSeSI
            §§LyricsTEiSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTEiSI
            §§LyricsTNiSI =  \new Lyrics \lyricsto "SopranoI" \§§VerseTNiSI       
            §§StanzaFouMarkupList = #(str2mlist §§StanzaFou)
            
         %END "../scores/beginStrophes.ily"
         
         §LyricsLeadingSI  = <<  \§§LyricsOneSI  >>
         §LyricsTrailingSI = <<  \§§LyricsTwoSI   \§§LyricsThrSI
                             >>
         
         §StanzaLeading = #(str2mlist  §§StanzaOne)
         
         §StanzaTrailingI = \markup  { \vspace #1.2
            \on-the-fly #MarkupStrophesAsLyrics
               {
                 \stanza \column { 
                   #(str2mlist §§StanzaFou) #(str2mlist §§StanzaFiv) #(str2mlist §§StanzaSix) #(str2mlist §§StanzaSev)
                   #(str2mlist §§StanzaEig) #(str2mlist §§StanzaNin) #(str2mlist §§StanzaTen) #(str2mlist §§StanzaEle)
                   #(str2mlist §§StanzaTwe) #(str2mlist §§StanzaThi) #(str2mlist §§StanzaFoT) #(str2mlist §§StanzaFiT)
                   #(str2mlist §§StanzaSiT) #(str2mlist §§StanzaSeT) #(str2mlist §§StanzaEiT) #(str2mlist §§StanzaNiT)
                   #(str2mlist §§StanzaTWe) #(str2mlist §§StanzaTOn) #(str2mlist §§StanzaTTw) #(str2mlist §§StanzaTTh)
                   #(str2mlist §§StanzaTFo) #(str2mlist §§StanzaTFi) #(str2mlist §§StanzaTSi) #(str2mlist §§StanzaTSe)
                   #(str2mlist §§StanzaTEi) #(str2mlist §§StanzaTNi)
                  }
               }
            \on-the-fly #MarkupStrophesAsStanza
               {
                 \stanza \column { 
                   #(str2mlist §§StanzaTwo) #(str2mlist §§StanzaThr)
                   #(str2mlist §§StanzaFou) #(str2mlist §§StanzaFiv) #(str2mlist §§StanzaSix) #(str2mlist §§StanzaSev)
                   #(str2mlist §§StanzaEig) #(str2mlist §§StanzaNin) #(str2mlist §§StanzaTen) #(str2mlist §§StanzaEle)
                   #(str2mlist §§StanzaTwe) #(str2mlist §§StanzaThi) #(str2mlist §§StanzaFoT) #(str2mlist §§StanzaFiT)
                   #(str2mlist §§StanzaSiT) #(str2mlist §§StanzaSeT) #(str2mlist §§StanzaEiT) #(str2mlist §§StanzaNiT)
                   #(str2mlist §§StanzaTWe) #(str2mlist §§StanzaTOn) #(str2mlist §§StanzaTTw) #(str2mlist §§StanzaTTh)
                   #(str2mlist §§StanzaTFo) #(str2mlist §§StanzaTFi) #(str2mlist §§StanzaTSi) #(str2mlist §§StanzaTSe)
                   #(str2mlist §§StanzaTEi) #(str2mlist §§StanzaTNi)
                  }
               }
         }
         
         §StanzaTrailingII = \markup   { \vspace #1.2
            \on-the-fly #MarkupStrophesAsLyrics {            
                 \stanza \column { % \§§StanzaFouMarkupList
                   #(str2mlist §§StanzaFou) #(str2mlist §§StanzaSix) #(str2mlist §§StanzaEig) #(str2mlist §§StanzaTen)
                   #(str2mlist §§StanzaTwe) #(str2mlist §§StanzaFoT) #(str2mlist §§StanzaSiT) #(str2mlist §§StanzaEiT)
                   #(str2mlist §§StanzaTWe) #(str2mlist §§StanzaTTw) #(str2mlist §§StanzaTFo) #(str2mlist §§StanzaTSi)
                   #(str2mlist §§StanzaTEi)
                  }
                  \column { "   " }
                  \stanza \column { 
                   #(str2mlist §§StanzaFiv) #(str2mlist §§StanzaSev) #(str2mlist §§StanzaNin) #(str2mlist §§StanzaEle)
                   #(str2mlist §§StanzaThi) #(str2mlist §§StanzaFiT) #(str2mlist §§StanzaSeT) #(str2mlist §§StanzaNiT)
                   #(str2mlist §§StanzaTOn) #(str2mlist §§StanzaTTh) #(str2mlist §§StanzaTFi) #(str2mlist §§StanzaTSe)
                   #(str2mlist §§StanzaTNi)
                   }
               }
            \on-the-fly #MarkupStrophesAsStanza { 
                 \stanza \column { %\§§StanzaFouMarkupList 
                   #(str2mlist §§StanzaTwo)
                   #(str2mlist §§StanzaFou) #(str2mlist §§StanzaSix) #(str2mlist §§StanzaEig) #(str2mlist §§StanzaTen)
                   #(str2mlist §§StanzaTwe) #(str2mlist §§StanzaFoT) #(str2mlist §§StanzaSiT) #(str2mlist §§StanzaEiT)
                   #(str2mlist §§StanzaTWe) #(str2mlist §§StanzaTTw) #(str2mlist §§StanzaTFo) #(str2mlist §§StanzaTSi)
                   #(str2mlist §§StanzaTEi)
                  }
                  \column { "   " }
                  \stanza \column { #(str2mlist §§StanzaThr)
                   #(str2mlist §§StanzaFiv) #(str2mlist §§StanzaSev) #(str2mlist §§StanzaNin) #(str2mlist §§StanzaEle)
                   #(str2mlist §§StanzaThi) #(str2mlist §§StanzaFiT) #(str2mlist §§StanzaSeT) #(str2mlist §§StanzaNiT)
                   #(str2mlist §§StanzaTOn) #(str2mlist §§StanzaTTh) #(str2mlist §§StanzaTFi) #(str2mlist §§StanzaTSe)
                   #(str2mlist §§StanzaTNi)
                   }
               }
         }
         
         
         % \include "../scores/endStrophes.ily"
            % §§LyricsOneSI = ##f
            % §§LyricsTwoSI = ##f
            % §§LyricsThrSI = ##f
            % §§LyricsFouSI = ##f
            % §§LyricsFivSI = ##f
            % §§LyricsSixSI = ##f
            % §§LyricsSevSI = ##f
            % §§LyricsEigSI = ##f
            % §§LyricsNinSI = ##f
            % §§LyricsTenSI = ##f
            % §§LyricsEleSI = ##f
            % §§LyricsTweSI = ##f
            % §§LyricsThiSI = ##f
            % §§LyricsFoTSI = ##f
            % §§LyricsFiTSI = ##f
            % §§LyricsSiTSI = ##f
            % §§LyricsSeTSI = ##f
            % §§LyricsEiTSI = ##f
            % §§LyricsNiTSI = ##f
            % §§LyricsTWeSI = ##f
            % §§LyricsTOnSI = ##f
            % §§LyricsTTwSI = ##f
            % §§LyricsTThSI = ##f
            % §§LyricsTFoSI = ##f
            % §§LyricsTFiSI = ##f
            % §§LyricsTSiSI = ##f
            % §§LyricsTSeSI = ##f
            % §§LyricsTEiSI = ##f
            % §§LyricsTNiSI = ##f         
            §§StanzaFouMarkupList = \markup { }
            
         %END "../scores/endStrophes.ily"
      %END "../scores/Strophes.ily"
      
      % \include "../scores/Voices.ily"
         §Chords = \§§Chords
         
         §VoiceSopranoI = {
            \clef "treble"
            \§§ScoreKey \§§ScoreMeter
            #(if ShowTempo #{ \§§ScoreTempo #} )
            \dynamicUp
            \autoBeamOff
            \voicesopranoverrides
            <<
              \§§HiddenVoice
              \§§NotesSopranoI
            >>
         }
         
         §VoiceSopranoII = {
            \clef "treble"
            \§§ScoreKey \§§ScoreMeter
            \dynamicUp
            \autoBeamOff
            \voicesopranoverrides
            \§§NotesSopranoII
         }     
      %END "../scores/Voices.ily"
      
      §Title = \§§Title
      §Subtitle = \§§Subtitle
      
      §MusicExpressionBook =
      <<
         #(if ShowChords #{
          \new ChordNames {
            \set chordChanges = ##t
            \§Chords
            }
          #} )
         \new Staff \with { midiInstrument = \MidiVoice }
         <<
            \new Voice = "SopranoI" \§VoiceSopranoI
            \new Voice = "SopranoII" \§VoiceSopranoII
            \§LyricsLeadingSI
         >>
      >>
      
      §MusicExpressionSheet =
      <<
         #(if ShowChords #{
          \new ChordNames {
            \set chordChanges = ##t
            \§Chords
            }
          #} )
         \new Staff \with { midiInstrument = \MidiVoice }
         <<
            \new Voice = "SopranoI" \§VoiceSopranoI
            \new Voice = "SopranoII" \§VoiceSopranoII
            \§LyricsLeadingSI
            \§LyricsTrailingSI
         >>
      >>

   %END "../scores/Score.ily"
   
   SongFileName = "Mariechen sass weinend im Garten" %NotYetUsed
   SongStringName = "MariechenSassWeinendImGarten"   %NotYetUsed
   
   ScoreBookMariechenSassWeinendImGarten = \score {
      \header {
         title =    \§Title
         subtitle = \§Subtitle
      }
      \§MusicExpressionBook
   } % score
   
   ScoreSheetMariechenSassWeinendImGarten = \score {
      \header {
         title =    \§Title
         subtitle = \§Subtitle
      }
      \midi { }   \layout { }
      \§MusicExpressionSheet
   } % score
   
   StanzaTrailingMariechenSassWeinendImGartenI = \§StanzaTrailingI
   StanzaTrailingMariechenSassWeinendImGartenII = \§StanzaTrailingII
   
   % \include "../scores/endScore.ily"
      %{ The first verse to be written in staff for Soprano I         %} §LyricsLeadingSI = ##f
      %{ All verses besides the first to be written in staff for S I  %} §LyricsTrailingSI = ##f
      %{ The first verse to be written outside the score              %} §StanzaLeading =##f
      %{ All verses to be written outside the score, one column       %} §StanzaTrailingI =##f
      %{ All verses to be written outside the score, two columns      %} §StanzaTrailingII =##f
      %{ Soprano I as voice - id est notes, key, meter, overrides     %} §VoiceSopranoI = ##f
      %{ Song title                                                   %} §Title = ##f
      %{ Song subtitle                                                %} §Subtitle = ##f
      %{ Notes and verses in score assembled for a sheet              %} §MusicExpressionSheet = ##f
      %{ Notes and verses in score assembled for a book               %} §MusicExpressionBook = ##f
      %{ chords                                                       %} §Chords = ##f  
   %END "../scores/endScore.ily"
%END "../score/Score Xyz.ily"

\layout {
   \bookOutputName  "../_out/Mariechen sass weinend im Garten"
}

\ScoreSheetMariechenSassWeinendImGarten
\StanzaTrailingMariechenSassWeinendImGartenII
%fromproperty #'paper:line-width
%ll = #(ly:output-def-lookup layout 'line-width)
\markuplist \override-lines #'(line-width . 20) 
   {  \wordwrap-string  #"123456789 223456789 323456789 423456789 523456789 623456789 723456789 823456789 923456789 023456789"  }
\markuplist \override-lines #'(line-width . 45) 
   { \wordwrap-string \§§StanzaOne }
%\pieceseparator
\markup { \fromproperty #'header:title  }
