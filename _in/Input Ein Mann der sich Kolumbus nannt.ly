\version "2.19.63"

\include "begin.ily"

§§Title = "Ein Mann, der sich Kolumbus nannt"

§§ScoreKey =   { \key g \major }
§§ScoreMeter = { \time 2/4 }
§§ScoreTempo = { \tempo 4 = 100 }


x§§HiddenVoice = {
\partial 8 s8 |
    %{  1 %} s2 | s2  \breathe |
    %{  3 %} s2 | s2 |
    %{  5 %} s2 | s2 \breathe |
    %{  7 %} s2 | s2 |
    %{  9 %} s2 | s8 s s \breathe s |
    %{ 11 %} s2 | s2 \breathe |
    %{ 13 %} s2 | s2 \breathe |
    %{ 15 %} s2 | s2 \breathe |
    %{ 17 %} s2 | s2 \breathe |
    %{ 19 %} s2 | s4. |
}


§§NotesSopranoI = \relative c' {
\partial 8 d8 |
    %{  1 %} g g d d | e e d4 |
    %{  3 %} e16 e e e fis8 fis | g4 r8 d |
    %{  5 %} g8 g d d | e e d4 |
    %{  7 %} e16 e e e fis8 fis | g4 r8 b |
    %{  9 %} a8. b16 a8 g | fis8 a d  fis, |
    %{ 11 %} a8. b16 a8 g |fis e d4 |
    %{ 13 %} g8. g16 g8 g | a8. a16 a4  |
    %{ 15 %} fis16 fis fis fis e8 fis | g b d4  |
    %{ 17 %} g,8. g16 g8 g | a8. a16 a4  |
    %{ 19 %} fis16 fis fis fis e8 fis | g4. \bar "|."
  }


§§Chords =  \chordmode {
 \partial 8 s8 |
    %{  1 %} g2 | c4 g |
    %{  3 %} c4 d:7 | g2 |
    %{  5 %} g | c4 g |
    %{  7 %} c d:7 | g2 |
    %{  9 %} d4 a:7 | d2 |
    %{ 11 %} a:7 | d8 a d4:7 |
    %{ 13 %} g2 | d:7 |
    %{ 15 %} d:7 | g |
    %{ 17 %} g2 | d:7 |
    %{ 19 %} s4.  d8:7 | g4. |
  }

akkorde = \chordmode {
  \germanChords
 % \partial 8 s8
 g2 | c4 g |
 c4 d:7 | g2 |
 g | c4 g |
 c d:7 |g2 |
 d4 a:7 |d2 |
 a:7 |d8 a d4:7 |
 g2 | d:7 |
 s | g8 g4. |
 g2 | d:7 |
 s4. d8.:7 | g2
}

§§VerseOneSI = \lyricmode {
  \set stanza = "1."
  Ein Mann, der sich Ko -- lum -- bus nannt, wi -- de -- wi -- de -- witt bum bum,
  war in der Schiff -- fahrt wohl -- be -- kannt, wi -- de -- wi -- de -- witt bum bum.
  Es drück -- ten ihn die Sor -- gen schwer, er such -- te neu -- es Land im Meer.
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt -- juch -- hei -- ra -- sa,
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt, bum, bum!
}

§§StanzaOne = 
  "1. Ein Mann, der sich Kolumbus nannt, 
  widewidewitt bum bum,
  war un der Schifffahrt wohlbekannt,
  widewidewitt bum bum,
  Es drückten ihn der Sorgen schwer,
  er suchte neues Land im Meer.
  Gloria, Viktoria, widewidewitt juchheirassa,
  Gloria, Viktoria, widewidewitt, bum bum!"


§§VerseTwoSI = \lyricmode {
  \set stanza = "2."
  Als er den Mor -- gen -- kaf -- fe trank, wi -- de -- wi -- de -- witt bum bum,
  da rief er frö -- lich 'Gott sei Dank!', wi -- de -- wi -- de -- witt bum bum.
  Denn schnell  kam mit der ers -- ten Tram der span -- sche Kö -- nig bei ihm an.
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt -- juch -- hei -- ra -- sa,
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt, bum, bum!
}
§§StanzaTwo = 
  "2. Als er den Morgenkaffee trank, widewidewitt bum bum
  da rief er fröhlich: 'Gott sei Dank!' widewidewitt bum bum
  Denn schnell kam mit der ersten Tram
  der span'sche König bei ihm an.
  Gloria  ..."


§§VerseThrSI = \lyricmode {
  \set stanza = "3."
  'Ko -- lum -- bus', sprach er, 'lie -- ber' Mann, wi -- de -- wi -- de -- witt bum bum,
  'du hast schon man -- che Tat ge -- tan.', wi -- de -- wi -- de -- witt bum bum.
  'Ein's fehlt noch un -- serm Glo -- ri --a: Ent -- dek -- ke mir A -- me -- ri -- ka'
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt -- juch -- hei -- ra -- sa,
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt, bum, bum!
}
§§StanzaThr = 
  "3. 'Kolumbus', sprach er, 'lieber Mann' , widewidewitt bum bum
  'du hast schon manche Tat getan.' widewidewitt bum bum
  'Ein's fehlt noch unserm Gloria:
  Entdecke mir Amerika!'
  Gloria  ..."


§§VerseFouSI = \lyricmode {
  \set stanza = "4."
  'Ge -- sagt, ge -- tan, ein Mann, ein Wort, wi -- de -- wi -- de -- witt bum bum,
  Am sel -- ben Tag noch fuhr er fort. wi -- de -- wi -- de -- witt bum bum.
  Und ei -- nes Mor -- gens schrie er: 'Land! Wie deucht mir al -- les so be -- kannt.'
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt -- juch -- hei -- ra -- sa,
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt, bum, bum!
}
§§StanzaFou = 
  "4. Gesagt, getan, ein Mann, ein Wort, widewidewitt bum bum
  am selben Tag fuhr er noch fort. widewidewitt bum bum
  Und eines Morgen schrie er: 'Land!
  Wie deucht mir alles so bekannt.
  Gloria  ..."


§§VerseFivSI = \lyricmode {
  \set stanza = "5."
  Das Volk an Land stand stumm und zag. wi -- de -- wi -- de -- witt bum bum,
  Da sagt Ko -- lum -- bus: 'Gu -- ten Tag! wi -- de -- wi -- de -- witt bum bum.
  Ist hier viel -- leicht A -- me -- ri -- ka?' Da schrie -- en al -- le Wil -- den: 'Ja!'
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt -- juch -- hei -- ra -- sa,
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt, bum, bum!
}
§§StanzaFiv = 
  "5. Das Volk an Land stand stumm und zag. widewidewitt bum bum
  Da sagt Kolumbus: 'Guten Tag!' widewidewitt bum bum
  'Ist hier vielleicht Amerika?'
  Da schrien alle Wilden: 'Ja!'
  Gloria  ..."


§§VerseSixSI = \lyricmode {
  \set stanza = "6."
  Die Wil -- den wa -- ren sehr er -- schreckt, wi -- de -- wi -- de -- witt bum bum,
  und schrie -- en all: 'Wir sind ent -- deckt!', wi -- de -- wi -- de -- witt bum bum.
  Der Häupt -- ling rief ihm: 'Lie -- ber Mann, als dann bist du Ko -- lum -- bus dann!'
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt -- juch -- hei -- ra -- sa,
  Glo -- ri -- a, Vik -- to -- ri -- a, wi -- de -- wi -- de -- witt, bum, bum!
}
§§StanzaSix = 
  "6. Die Wilden waren sehr erschreckt, widewidewitt bum bum
  und schrien all: 'Wir sind entdeckt!' widewidewitt bum bum
  Der Häuptling rief ihm: 'Lieber Mann,
  als dann bist du Kolumbus dann!'
  Gloria  ..."


\include "end.ily"
