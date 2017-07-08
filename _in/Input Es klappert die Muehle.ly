\version "2.19.63"

\include "begin.ily"

§§Title = "Es klappert die Mühle"
§§Subtitle = "am rauschenden Bach"


§§ScoreKey =   { \key g \major }
§§ScoreMeter = { \time 6/8 }
§§ScoreTempo = { \tempo 4 = 100 }

§§HiddenVoice = {
  \partial 8  s8 | s2 s8 \breathe s8 | s2. | s |
   s | s | s2 s8 \breathe s8 |
   s2. | s | s | s2 s8 \breathe s8 | | s | s2 s8 |
}

§§NotesSopranoI = \relative c' {
\partial 8  d8 | d8 g8 g8 g8 a8 b8 | b8 a8 a8 a4  d8 | b8 r2 d,8 |
  d8 g8 g8 g8 a8 b8 | b8 a8 a8 a4  d8 | b8 r2 b16 ([c16]) |
  d8. d16 d8 d8 e8 d8 | d8 c8 c8 c4 \breathe c8 | b8. b16 b8 d8 c8 b8 |
  b8 a8 a8 a4 \breathe d8 | b8 r8 b8 a8 r8 a8 | g4 r8 r4
  \bar "|."
}

% §§NotesSopranoII = \relative c' {
%    r1 | r1 |
% }

§§Chords =  \chordmode {
  \partial 8
  s8 g2. c g8 s8 s2 g2. c g8 s8 s2 g2. c g c  g8 s4 c8 s4 g4
}

§§VerseOneSI = \lyricmode {
  \set stanza = "1."
  Es | klap -- pert die Müh -- le  am | rau -- schen -- den Bach,  | klipp, klapp! 
  Bei | Tag und bei Nacht ist der | Mül -- ler stets wach, klipp, | klapp!
  Er | mah -- let uns Korn zu dem | kräf -- ti -- gen Brot, und | ha -- ben wir sol -- ches,
  dann | hat's kei -- ne Not. Klipp, | klapp, klipp, klapp, klipp, | klapp!
}
§§StanzaOne = 
  "1. Es klappert die Mühle
  am rauschenden Bach,
  klipp, klapp!
  Bei Tag und bei Nacht
  ist der Müller stehts wach,
  klipp, klapp!
  Er mahlet uns Korn zu
  dem kräftigen Brot,
  und haben wir solches,
  dann hats keine Not.
  Klipp, klapp, klipp,
  klapp, klipp, klapp!"


§§VerseTwoSI = \lyricmode {
  \set stanza = "2."
  Flink | lau -- fen die Rä -- der und | dre -- hen den Stein, | klipp, klapp!
  und | mah -- len den Wei -- zen zu | Mehl uns so fein klipp | klapp!
  Der | Bäk -- ker dann Zwie -- back und | Ku -- chen d'raus bäckt, | der im -- mer den Kin -- dern 
  be -- | son -- ders gut schmeckt, Klipp,  | klapp, klipp, klapp, klipp, | klapp!
}
§§StanzaTwo = 
  "2. Flink laufen die Räder
  und drehen den Stein,
  klipp, klapp!
  und mahlen den Weizen
  zu Mehl uns so fein,
  klipp, klapp!
  Der Bäcker dann Zwieback
  und Kuchen d'raus bäckt,
  der immer den Kindern
  besonders gut schmeckt.
  Klipp, klapp, klipp,
  klapp, klipp, klapp!"


§§VerseThrSI  = \lyricmode {
  \set stanza = "3."
  Wenn | reich -- lich -- e Kör -- ner das | Ak -- ker -- feld trägt,  | klipp, klapp! 
  Die | Mü -- le dann flink ih -- re | Rä -- der be -- wegt, klipp | klapp!
  Und schenkt uns der Him -- mel nur | im -- mer -- dar Brot, so | sind wir ge -- bor --gen
  und | lei -- den nicht Not!  Klipp,  | klapp, klipp, klapp, klipp, | klapp!
}

§§StanzaThr = 
  "3. Wenn reichliche Körner
  das Ackerfeld trägt,
  klipp, klapp!
  Die Mühle dann flink
  ihre Räder bewegt,
  klipp, klapp!
  Und schenkt uns der Himmel
  nur immerdar Brot,
  so sind wir geborgen
  und leiden nicht Not!
  Klipp, klapp, klipp,
  klapp, klipp, klapp!"


\include "end.ily"
