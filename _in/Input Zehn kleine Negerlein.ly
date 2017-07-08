\version "2.19.63"

\include "begin.ily"

§§Title = "Zehn kleine Kinderlein"
§§Subtitle = "Zehn kleine Negerlein"

§§ScoreKey =   { \key f\major }
§§ScoreMeter = { \time 2/4 \numericTimeSignature }
§§ScoreTempo = { \tempo 4 = 100 }

§§HiddenVoice = {
  s2 | s2 | s2 | s4. \breathe s8 |
  s2 | s2 | s2 | s2 |
  s2 | s2 | s2 | s2 |
  s2 | s2 | s2 | s2 |
}

§§NotesSopranoI = \relative c' {
  f4 f8. f16 | f8 c c c | f f g g | a4. a8 |
  bes bes  g g | a a f f | g g e e | f4 r |
  f8 f f f | f f f f |d' d d d | c4 r |
  bes8 bes bes bes | a a a a | c c c c |f,2 |
  \bar "|."
}

§§Chords = \chordmode {
    f2 f f4 c f2 c:7 f c:7 f f d:m bes f c:7 f4 a:m c2:7 f
    % \repeat "volta" 2 { s1 }
}

§§VerseOneSI = \lyricmode {
  \set stanza = "1."
  Zehn klei -- ne | Kin -- der -- lein, die | schlie -- fen in der | Scheun, das |
  ei -- ne ging im | Heu ver -- lorn, da  | wa -- ren's  nur noch | neun. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}
§§StanzaOne = 
  "1. Zehn kleine Kinderlein, die schliefen in der Scheun, 
  das eine ging im Heu verlorn, da waren's nur noch neun. 
  Ein klein, zwei klein, drei klein, vier klein, fünf Klein Kinderlein
  sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"

§§VerseTwoSI = \lyricmode {
  \set stanza = "2."
  Neun klei -- ne | Kin -- der -- lein, die | gin -- gen auf die | Jagd, da |
  hat sich ei -- nes | tot -- ge -- schoss'n,  da | wa -- ren's  nur noch | acht. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}
§§StanzaTwo = 
  "2. Neun kleine Kinderlein, die gingen auf die Jagd,
  da hat sich eines totgeschoss'n, da waren's nur noch acht.
  Ein klein ..."

§§VerseThrSI = \lyricmode {
  \set stanza = "3."
  Acht klei -- ne | Kin -- der -- lein, die | a -- ßen ger -- ne | Rüb'n, da |
  hat sich ei -- nes | tot ge -- gessn, da | wa -- ren's  nur noch | siebn. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}
§§StanzaThr = 
  "3. Acht kleine Kinderlein, die aßen gerne Rüben,
  da hat sich eines totgegess'n, da waren's nur noch siebn.
  Ein klein ..."

§§VerseFouSI = \lyricmode {
  \set stanza = "4."
  Sieb'n klei -- ne | Kin -- der -- lein, die | gin -- gen zu ner | Hex, da |
  hat sie ei -- nes | auf -- ge -- gessn, da | wa -- ren's  nur noch | sechs. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}

§§StanzaFou = 
  "4. Sieb'n kleine Kinderlein, die gingen zu 'ner Hex',
  da hat sie eines aufgefress'n, da waren's nur noch sechs.
  Ein klein ..."

§§VerseFivSI = \lyricmode {
  \set stanza = "5."
  Sechs klei -- ne | Kin -- der -- lein, die | lie -- fen in die | Sümpf, das |
  ei -- ne ist drin | stek -- ken -- bliebn, da | wa -- ren's  nur noch | fünf. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}
§§StanzaFiv = 
  "5. Sechs kleine Kinderlein, die liefen in die Sümpf',
  das eine ist drin stecken 'blieben, da waren's nur noch fünf.
  Ein klein ..."

§§VerseSixSI = \lyricmode {
  \set stanza = "6."
  Fünf klei -- ne | Kin -- der -- lein, die | tran -- ken ger -- ne | Bier, da |
  hat sich ei -- nes | tot -- ge -- trunk'n, da | wa -- ren's  nur noch | vier. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}
§§StanzaSix = 
  "6. Fünf kleine Kinderlein, die tranken gerne Bier,
  da hat sich eines totgetrunk'n, da waren's nur noch vier.
  Ein klein ..."

§§VerseSevSI = \lyricmode {
  \set stanza = "7."
  Vier klei -- ne | Kin -- der -- lein, die | a -- ßen ger -- ne | Brei, das |
  ei -- ne hat zu -- | viel ge -- gess'n, da | wa -- ren's  nur noch | drei. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}
§§StanzaSev = 
  "7. Vier kleine Kinderlein, die aßen gerne Brei,
  das eine hat zuviel gegess'n,  da waren's nur noch drei.
  Ein klein ..."

§§VerseEigSI = \lyricmode {
  \set stanza = "8."
  Drei klei -- ne | Kin -- der -- lein, die | tanz -- ten Rin -- gel -- | reih, da |
  hat sich ei -- nes | tot -- ge -- tanzt, da | wa -- ren's  nur noch | zwei. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}
§§StanzaEig = 
  "8. Drei kleine Kinderlein, die tanzten Ringelreih',
  da hat sich eines totgetanzt, da waren's nur noch zwei.
  Ein klein ..."

§§VerseNinSI = \lyricmode {
  \set stanza = "9."
  Zwei klei -- ne | Kin -- der -- lein, die | ging'n zu 'nem Schrei -- | ner, das |
  ei -- ne wurd in'n | Sarg ge -- legt, da | wa -- ren's  nur noch | eins. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}
§§StanzaNin = 
  "9. Zwei kleine Kinderlein, die ging'n zu 'nem Schreiner,
  das eine wurd' in 'n Sarg gelegt, da waren's nur noch eins.
  Ein klein ..."

§§VerseTenSI = \lyricmode {
  \set stanza = "10."
  Ein klei -- nes | Kin -- de -- lein, das  | war ent -- setz -- lich | schlau, es |
  ging zu -- rück zu | sei -- nem Dorf, und | nahm  sich  ei -- ne | Frau. |
  Ein klein, zwei klein, | drei klein, vier klein, | fünf klein Kin -- der -- | lein, |
  sechs klein, sieb'n klein, | acht klein, neun klein, | zehn klein Kin -- der -- | lein.
}
§§StanzaTen = 
  "10. Ein kleines Kindelein, das war entsetzlich schlau,
  das ging zurück zu seinem Dorf, und nahm sich eine Frau.
  Ein klein ..."

\include "end.ily"
