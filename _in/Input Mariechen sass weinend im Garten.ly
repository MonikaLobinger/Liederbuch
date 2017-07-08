\version "2.19.63"

\include "begin.ily"

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


\include "end.ily"
