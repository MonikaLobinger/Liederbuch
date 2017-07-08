\version "2.19.63"

#(define-markup-command  (stanza layout props strophe)     (markup?)   "Comment"
   ;(display strophe)
   (interpret-markup layout props `(,fontsize-markup -1 ,strophe))
)

#(define-markup-list-command  (paragraph layout props lines)    (markup-list?) 
   ;(display lines)  
   (interpret-markup-list layout props
     #{ \markuplist \justified-lines { 
            \hspace #2 #lines } 
     #}
   )  
)


§§StanzaOne = \markup {  \stanza {
    "1. Bunt sind schon die Wälder,"    "gelb die Soppelfelder"
    "und der Herbst beginnt."    "Rote Blätter fallen"
    "graue Nebel wallen"    "kühler weht der Wind."
}} 
§§StanzaTwo = \markup {  \stanza {
  2. Wie die volle Traube  aus der Rebenlaube
  purpurfarbig strahlt!  Am Geländer reifen
  Pfirsiche, mit Streifen  rot und weiß bemalt.
}}
§§POne = \markuplist {  \paragraph {
    "1. Bunt sind schon die Wälder,"    "gelb die Soppelfelder"
    "und der Herbst beginnt."    "Rote Blätter fallen"
    "graue Nebel wallen"    "kühler weht der Wind."
} }
§§PTwo = \markuplist {  \paragraph {
  2. Wie die volle Traube  aus der Rebenlaube
  purpurfarbig strahlt!  Am Geländer reifen
  Pfirsiche, mit Streifen  rot und weiß bemalt.
}}

§StanzaTrailing = \markup  {
   { \column { \§§StanzaOne } \column { \§§StanzaTwo } 
} }

§PTrailing = \markup {
   { \column { \§§POne } \column { \§§PTwo } 
} }



§StropheOne = \markuplist {  
   "1. In dem Kerker sassen zu Frankfurt an dem Main"
   "schon seit vielen Jahren sechs Studenten ein"
   "||: Die für die Freiheit fochten und für das Bürgerglück"
   "und für die Menschenrechte der freien Republik. :||"
}
§StropheTwo = \markuplist {
   "2. Und der Kerkermeister_  sprach es täglich aus:"
   "Sie, Herr Bürgermeister s'kommt mir keiner aus. "
   "||: Und doch sind sie entkommen_ aus dem hohen Turm_"
   "um die neunte Stunde_  bei dem großen Sturm. :||"
}
§StropheThree = \markuplist {
   "3. Und am nächsten Morgen_  hört man den Alarm"
   "Oh es war entsetzlich der Soldatenschwarm. "
   "||: Sie suchten auf und nieder, sie suchten hin und her "
   "sie suchten sechs Studenten und fanden sie nicht mehr. :||"
}
§StropheFour = \markuplist {
   "4. Wenn die Leute fragen_ wo ist Absolom"
   "könnt ihr ihnen sagen ach, der hänget schon."
   "||: Der hängt an keinem Baume, der hängt an keinem Strick_"
   "sondern an dem Traume der freien Republik. :||"
}
{ c'2 }
\markup { \vspace #2 "StanzaTrailing" }
\§StanzaTrailing
\markup { \vspace #2 "PTrailing" }
\§PTrailing
\markup { \vspace #2 "StanzaOne StanzaTwo" }
\§§StanzaOne
\§§StanzaTwo
\markup { \vspace #2 "POne PTwo" }
\§§POne
\§§PTwo


cc = \markup { \column  {
    a
    "b c"
    "d e f"
  }
}

%\vspace #0.4 
\markup { \vspace #2
  \fill-line {
    \hspace #1
    \column {
       \§StropheOne
       \§StropheTwo
    } 
    \hspace #2
    \column \italic {
      \§StropheThree
      \§StropheFour
    }
  }
}


\markup { \vspace #2
  \fill-line {
    \hspace #1
    \column {
      \line { O sacrum convivium }
      \line { in quo Christus sumitur, }
      \line { recolitur memoria passionis ejus, }
      \line { mens impletur gratia, }
      \line { futurae gloriae nobis pignus datur. }
      \line { Amen. }
    }
    \hspace #2
    \column \italic {
      \line { O sacred feast }
      \line { in which Christ is received, }
      \line { the memory of His Passion is renewed, }
      \line { the mind is filled with grace, }
      \line { and a pledge of future glory is given to us. }
      \line { Amen. }
    }
    \hspace #1
  }
}
\header {
  title = "My title"
  myText = "Lorem ipsum dolor sit amet, consectetur adipisicing
    elit, sed do eiusmod tempor incididunt ut labore et dolore magna
    aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco
    laboris nisi ut aliquip ex ea commodo consequat."
}

\paper {
  bookTitleMarkup = \markup {
    \column {
      \fill-line { \fromproperty #'header:title }
      \null
      \justify-field #'header:myText
    }
  }
}

\markup {
  \null
}

mymyText = "Lorem ipsum dolor sit amet, 
consectetur adipisicing
    elit, sed do eiusmod 

tempor incididunt ut labore et dolore magna
    aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco
    laboris nisi ut aliquip ex ea commodo consequat."
\markup {
  \override #'(line-width . 60)
  \justify-string #mymyText
}

\cc
\markup {
  \draw-circle #5 #0.5 ##f
  \hspace #6
  \draw-circle #5 #0 ##t
}

anfang = ANFANG 
ende = ENDE 
manfang = \markup \with-color #darkmagenta { ANFANG }
mende = \markup { \with-color #darkmagenta ENDE }


fontNameLyrics = "Narkisim"
fontSizeLyrics = #+1


#(define-markup-command (stanza layout props text) (markup?)
   "Stanza"
   (interpret-markup layout props
     #{\markup \override #`(font-name . ,fontNameLyrics )
               \override #`(font-size . ,(- fontSizeLyrics 1) )
               \column { \vspace #0.4
                  { #text }
                }
      #}
  )
)

StanzaOne = \markup  \stanza {
   "1. Drei Zigeuner fand ich einmal
   liegen an einer Weide
   als mein Fuhrwerk mit müder Qual
   schlich durch die sandige Heide"
}

StanzaOneStr = 
   "1. Drei Zigeuner fand ich einmal
   liegen an einer Weide
   als mein Fuhrwerk mit müder Qual
   schlich durch die sandige Heide"


StanzaTwo = \markup \stanza {
   "2. Hielt der eine für sich allein
   in den Händen die Fiedel
   spielte umglüht vom Abendschein
   sich ein feuriges Liedel"
}

StanzaTwoStr = 
   "2. Hielt der eine für sich allein
   in den Händen die Fiedel
   spielte umglüht vom Abendschein
   sich ein feuriges Liedel"


#(define (nl2_2nl arg)
   (define resultString (string) )
   (define lineList (string-split arg #\newline))
   (for-each
       (lambda (line)
                (set! resultString
                      (string-append resultString line (string #\newline  #\newline))
                )
       )
       lineList
   )
   resultString
)

\markup { ANFANG ENDE }
\markup { \anfang \ende }
\markup { \manfang \mende }
\markup { \column { ANFANG } \column { ENDE } }
\markup { \column { \anfang } \column { \ende } }
\markup { \column { \manfang } \column { \mende } }

\markup { ANFANG \StanzaTwo }

\markup { \wordwrap-string #(nl2_2nl StanzaOneStr) }
\markup { \wordwrap-string #(nl2_2nl StanzaTwoStr) }

 
\markup  \stanza { #(nl2_2nl StanzaOneStr) }

minorChordModifier = #(make-simple-markup "m")
\markup \minorChordModifier
 
