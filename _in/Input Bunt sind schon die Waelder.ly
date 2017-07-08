\version "2.19.63"

\include "begin.ily"

§§Title = "Bunt sind schon die Wälder"

§§ScoreKey =   { \key g \major }
§§ScoreMeter = { \time 6/8 }
§§ScoreTempo = { \tempo 4 = 100 }

§§HiddenVoice = {
 s2. | s \breathe | s | s |
 s | s | s | s |
 s | s | \breathe s | s
}

§§NotesSopranoI = \relative c' {
  g'4 g8 g (fis) g | a4. g | b4 b8 b (a) b | c4. b |
  a4 a8 g (b) cis, | d4. r4 r8 | b'4 a8 g4 fis8 | e4. e |
  c'4 b8 a (b) g | fis4. fis | g8 (b) d d, (e) fis |  g4. r4 r8
  \bar "|."
}

§§Chords = \chordmode {
  g4. g c g g g c g
  d a:7 d s g g c c
  a:m a:7 d d g d g s
}

§§VerseOneSI = \lyricmode {
  \set stanza = "1."
  Bunt sind schon die | Wäl -- der, |
  gelb die Stop -- pel -- | feld -- der |
  und der Herbst be -- |  ginnt. |
  Ro -- te Blät -- ter | fal -- len, |
  grau -- e Ne -- bel | wal -- len, |
  küh -- ler weht der | Wind. |
}
§§StanzaOne =
  "1. Bunt sind schon die Wälder,
  gelb die Soppelfelder
  und der Herbst beginnt.
  Rote Blätter fallen
  graue Nebel wallen
  kühler weht der Wind."


§§VerseTwoSI = \lyricmode {
  \set stanza = "2."
  Wie die vol -- le | Trau -- be |
  aus der Re -- ben -- | lau -- be |
  pur -- pur -- far -- big | strahlt! |
  Am Ge -- län -- der | rei -- fen |
  Pfir -- si -- che  mit | Strei -- fen |
  rot und weiß be -- | malt. |
}
§§StanzaTwo =
  "2. Wie die volle Traube
  aus der Rebenlaube
  purpurfarbig strahlt!
  Am Geländer reifen
  Pfirsiche, mit Streifen
  rot und weiß bemalt."


§§VerseThrSI = \lyricmode {
  \set stanza = "3."
  Flin -- ke Trä -- ger | sprin -- gen |
  und die Mäd -- chen | sin -- gen, |
  al -- les ju -- belt | froh. |
  Bun -- te Bän -- der | schwe -- ben |
  zwi -- schen ho -- hen | Re -- ben |
  auf dem Hut von | Stroh. |
}
§§StanzaThr =
  "3. Flinke Träger springen
  und die Mädchen singen,
  alles jubelt froh.
  Bunte Bänder schweben
  zwischen hohen Reben
  auf dem Hut von Stroh."


§§VerseFouSI = \lyricmode {
  \set stanza = "4."
  Gei -- ge tönt und | Flö -- te |
  bei der A -- bend -- | rö -- te |
  und im Mor -- gen -- | glanz. |
  Jun -- ge Win -- zer -- | in -- nen |
  win -- ken und be -- | gin -- nen |
  fro -- hen Ern -- te -- | tanz. |
}
§§StanzaFou =
  "4. Geige tönt und Flöte
  bei der Abendröte
  und im Morgenglanz.
  Junge Winzerinnen
  winken und beginnen
  frohen Erntetanz"

\include "end.ily"
