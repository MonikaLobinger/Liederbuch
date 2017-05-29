\version "2.18.2"

\include "../procs/procedures.ly"

§VerseOne = \lyricmode {
   \set stanza = "1."
   In dem Ker- ker | sas- sen zu | Frank- furt an dem | Main |
   schon seit vie- len | Jah- ren | sechs Stu- den- ten | ein
   Die | \repeat volta 2 { für die Frei- heit | foch- ten und | für das Bür- ger- | glück
   und | für die Men- schen- | rech- te der | frei- en Re- pu- | blik. }
   \alternative { { Die } { } }
}
§StropheOne = \markuplist {
   \vspace #0.4
   "1. In dem Kerker sassen zu Frankfurt an dem Main"
   "schon seit vielen Jahren sechs Studenten ein"
   "||: Die für die Freiheit fochten und für das Bürgerglück"
   "und für die Menschenrechte der freien Republik. :||"
}
§VerseTwo = \lyricmode {
   \set stanza = "2."
   Und der Ker- ker- | mei- ster _  | sprach es täg- lich | aus: |
   Sie, Herr Bür- ger- | meis- ter | s'kommt mir kei- ner | aus.
   Und  | \repeat volta 2 { doch sind sie ent- | kom- men _ | aus dem ho- hen | Turm _ |
   um die neun- te | Stun- de _ | bei dem gro- ßen | Sturm. }
   \alternative { { Und } { } }
}
§StropheTwo = \markuplist {
   \vspace #0.4
   "2. Und der Kerkermeister_  sprach es täglich aus:"
   "Sie, Herr Bürgermeister s'kommt mir keiner aus. "
   "||: Und doch sind sie entkommen_ aus dem hohen Turm_"
   "um die neunte Stunde_  bei dem großen Sturm. :||"
}
§VerseThree = \lyricmode {
   \set stanza = "3."
   Und am näch- sten | Mor- gen _ | hört man den A- | larm |
   Oh es war ent- | setz- lich | der Sol- da- ten- | schwarm.
   Sie | \repeat volta 2 { such- ten auf und | nie- der, sie | such- ten hin und | her
   sie | such- ten sechs Stu- | den- ten und | fan- den sie nicht | mehr. }
   \alternative { { Sie } { } }
}
§StropheThree = \markuplist {
   \vspace #0.4
   "3. Und am nächsten Morgen_  hört man den Alarm"
   "Oh es war entsetzlich der Soldatenschwarm. "
   "||: Sie suchten auf und nieder, sie suchten hin und her "
   "sie suchten sechs Studenten und fanden sie nicht mehr. :||"
}
§VerseFour = \lyricmode {
   \set stanza = "4."
   Wenn die Leu- te | fra- gen _ | wo ist Ab- so- | lom |
   könnt ihr ih- nen | sa- gen | ach, der hän- get | schon.
   Der | \repeat volta 2 { hängt an kei- nem | Bau- me, der | hängt an kei- nem | Strick _ |
   son- dern an dem | Trau- me der | frei- en Re- pu- | blik. }
   \alternative { { Der } { } }
}
§StropheFour = \markuplist {
   \vspace #0.4
   "4. Wenn die Leute fragen_ wo ist Absolom"
   "könnt ihr ihnen sagen ach, der hänget schon."
   "||: Der hängt an keinem Baume, der hängt an keinem Strick_"
   "sondern an dem Traume der freien Republik. :||"
}

§ScoreKey = {
   \key d \major
}
§ScoreMeter = {
   \time 2/4 \numericTimeSignature
}

§NotesSopran = \relative c' {
   d8 a d fis | a4 a8 fis | e g fis e | d2 |
   d8 a d fis | a4 a  | e8 g fis e | d4. d8 |
   \repeat volta 2 {b' g g g | g4 g8 g | g b d b | a4. a8 |
   d, d d fis | a4 a8 a | e g fis e | d4.}
   \alternative { { d8 } { r8 } } \bar "|."
}
§VoiceSopran = {
   \§ScoreKey \§ScoreMeter
   \dynamicUp
   \override NoteHead.color = #color-notehead
   \§NotesSopran
}

Title = "In dem Kerker saßen"
Subtitle = "Die freie Republik"
Song =
<<
   \new Staff \with {
         midiInstrument = \MidiVoice
      } {
      \new Voice = "Sopran" \§VoiceSopran
   } % staff
   \new Lyrics \lyricsto "Sopran" \§VerseOne
   \new Lyrics \lyricsto "Sopran" \§VerseTwo
   \new Lyrics \lyricsto "Sopran" \§VerseThree
   \new Lyrics \lyricsto "Sopran" \§VerseFour
>>

ScoreInDemKerkerSassen = \score {
   \Song
   \header {
      title = \Title
      subtitle = \markup { \column { \Subtitle \vspace #1 } }
   }
} % score

StrophenInDemKerkerSassen = \markup \on-the-fly #IsInBook { \column {
   \§StropheTwo
   \§StropheThree
   \§StropheFour
} } % markup

§VerseOne = ERROR
§StropheOne = ERROR
§VerseTwo = ERROR
§StropheTwo = ERROR
§VerseThree = ERROR
§StropheThree = ERROR
§VerseFour = ERROR
§StropheFour = ERROR
§ScoreKey = ERROR
§ScoreMeter = ERROR
§NotesSopran = ERROR
§VoiceSopran = ERROR
