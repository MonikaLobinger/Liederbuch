\version "2.19.63"

\include "begin.ily"

§§Title = "In dem Kerker saßen"
§§Subtitle = "Die freie Republik"


§§ScoreKey =   { \key d \major }
§§ScoreMeter = { \time 2/4 \numericTimeSignature }
§§ScoreTempo = { \tempo 4 = 80 }

§§HiddenVoice = {
  s2 | s2  | s2  | s2 |
  s2 | s2  | s2  | s2 |
  \repeat volta 2 { s2 | s2  | s2  | s2 |
  s2 | s2  | s2  | s4. }
  \alternative { { s8 } { s8 } }
}

§§NotesSopranoI = \relative c' {
   d8 a d fis | a4 a8 fis | e g fis e | d2 |
   d8 a d fis | a4 a  | e8 g fis e | d4. d8 |
   \repeat volta 2 { b' g g g | g4 g8 g | g b d b | a4. a8 |
   d, d d fis | a4 a8 a | e g fis e | d4. }
   \alternative { { d8 } { r8 } } \bar "|."
}

§§Chords = \chordmode {
    d2 d a:7 d d d a:7 d
    \repeat volta 2 { g g g d d d a:7 d
    }
}

§§VerseOneSI = \lyricmode {
  \set stanza = "1."
  In dem Ker -- ker | sas -- sen zu | Frank -- furt an dem | Main |
  schon seit vie -- len | Jah -- ren | sechs Stu -- den -- ten | ein
  Die | \repeat volta 2 { für die Frei -- heit | foch -- ten und | für das Bür -- ger -- | glück
  und | für die Men -- schen -- | rech -- te der | frei -- en Re -- pu -- | blik. }
  \alternative { { Die } { } }
}
§§StanzaOne = 
  "1. In dem Kerker sassen zu Frankfurt an dem Main
  schon seit vielen Jahren sechs Studenten ein
  ||: Die für die Freiheit fochten und für das Bürgerglück
  und für die Menschenrechte der freien Republik. :||"


§§VerseTwoSI = \lyricmode {
  \set stanza = "2."
  Und der Ker -- ker -- | mei -- ster sprach __ | _ es täg -- lich | aus: |
  Sie, Herr Bür -- ger -- | meis -- ter | s'kommt mir kei -- ner | aus.
  Und  | \repeat volta 2 { doch sind sie ent -- | kom -- men _ | aus dem ho -- hen | Turm __ _ |
  um die neun -- te | Stun -- de _ | bei dem gro -- ßen | Sturm. }
  \alternative { { Und } { } }
}
§§StanzaTwo = 
  "2. Und der Kerkermeister  spra-ach es täglich aus:
  Sie, Herr Bürgermeister s'kommt mir keiner aus. 
  ||: Und doch sind sie entkommen aus dem hohen Tu_urm
  um die neunte Stunde  bei dem großen Sturm. :||"


§§VerseThrSI = \lyricmode {
  \set stanza = "3."
  Und am näch -- sten | Mor -- gen hört __ |  _ man den A -- | larm |
  Oh es war ent -- | setz -- lich | der Sol -- da -- ten -- | schwarm.
  Sie | \repeat volta 2 { such -- ten auf und | nie -- der, sie | such -- ten hin und | her
  sie | such -- ten sechs Stu -- | den -- ten und | fan -- den sie nicht | mehr. }
  \alternative { { Sie } { } }
}
§§StanzaThr = 
  "3. Und am nächsten Morgen hö-ört man den Alarm
  Oh es war entsetzlich der Soldatenschwarm. 
  ||: Sie suchten auf und nieder, sie suchten hin und her 
  sie suchten sechs Studenten und fanden sie nicht mehr. :||"


§§VerseFouSI = \lyricmode {
  \set stanza = "4."
  Wenn die Leu -- te | fra -- gen wo __ | _ ist Ab -- so -- | lom |
  könnt ihr ih -- nen | sa -- gen | ach, der hän -- get | schon.
  Der | \repeat volta 2 { hängt an kei -- nem | Bau -- me, der | hängt an kei -- nem | Strick __ _ |
  son -- dern an dem | Trau -- me der | frei -- en Re -- pu -- | blik. }
  \alternative { { Der } { } }
}
§§StanzaFou = 
  "4. Wenn die Leute fragen wo-o ist Absolom
  könnt ihr ihnen sagen ach, der hänget schon.
  ||: Der hängt an keinem Baume, der hängt an keinem Stri_ick
  sondern an dem Traume der freien Republik. :||"


\include "end.ily"
