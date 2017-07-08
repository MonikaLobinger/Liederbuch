\version "2.19.63"

\include "begin.ily"

§§Title = "Drei Zigeuner fand ich einmal"

§§ScoreKey =   { \key d \major }
§§ScoreMeter = { \time 6/8 \numericTimeSignature }
§§ScoreTempo = { \tempo 4 = 80 }

§§HiddenVoice = {
  s2. | s  | s  | s |
  s | s  | s  | s |
}

§§NotesSopranoI = \relative c' {
  d4 d8 g4 g8 | a8. b16 a8 g4. |
  g8. g16 g8 g fis g | a4. a4 r8 |
  b4 b8 b cis d | e d cis b4. |
  b8 g cis b g b | a4. g |
}

§§Chords = \chordmode {
    g2. | d4. g | g2. | d | g | c4. g | g2. | d4.:7 g |
}

§§VerseOneSI = \lyricmode {
  \set stanza = "1."
  Drei Zi -- geu -- ner | fand ich ein -- mal |
  lie -- gen an ei -- _ ner | Wei -- de |
  als mein Fuhr -- werk  mit | mü -- _ der Qual |
  schlich durch die san -- di -- ge | Hei -- de.
}
§§StanzaOne = 
  "1. Drei Zigeuner fand ich einmal
  liegen an einer Weide
  als mein Fuhrwerk mit müder Qual
  schlich durch die sandige Heide"


§§VerseTwoSI = \lyricmode {
  \set stanza = "2."
  Hielt der ei -- ne | für sich all -- ein |
  in  den Hän -- den _ die | Fie -- del |
  spiel -- te um -- glüht  vom | A -- _ bend -- schein  |
  sich ein feu -- _ ri -- ges | Lie -- del.
}
§§StanzaTwo = 
  "2. Hielt der eine für sich allein
  in den Händen die Fiedel
  spielte umglüht vom Abendschein
  sich ein feuriges Liedel"


§§VerseThrSI = \lyricmode {
  \set stanza = "3."
  Hielt der zwei  die |  Pfeif -- fe im  Mund |
  blick -- te  nach sei -- _ nem | Rau -- che |
  froh  als ob er vom | Er -- _ den -- rund  |
  nichts zum Glük -- _ ke  mehr | brau -- che.
}
§§StanzaThr = 
  "3. Hielt der zweit die Pfeife im Mund
  blickte nach ihrem Rauche
  froh als ob er vom Erdenrund
  nichts zum Glücke mehr brauche"


§§VerseFouSI = \lyricmode {
  \set stanza = "4."
  Und der drit -- te | be -- hag lich schlief |
  und  sei -- ne Har -- fe  am | Baum hing |
  ü -- ber die Sai --  ten | ein Wind -- hauch lief  |
  ü -- ber sein Her -- ze  ein | Traum  ging.
}
§§StanzaFou = 
  "4. Und der dritte behaglich schlief
  und seine Harfe am Baum hing
  über die Saiten ein Windhauch lief
  über sein Herze ein Traum ging"


§§VerseFivSI = \lyricmode {
  \set stanza = "5."
  An den Klei -- dern  | tru -- gen die drei |
  Lö -- cher und bun -- _ te | Flik -- ken |
  A -- ber sie bo -- ten   | trot -- zig und frei  |
  Spott den Er -- _ den -- ge -- | schik-- ken.
}
§§StanzaFiv = 
  "5. An den Kleidern trugen die drei
  Löcher und bunte Flicken
  Aber sie boten trotzig und frei
  Spott den Erdengeschicken"


§§VerseSixSI = \lyricmode {
  \set stanza = "6."
  Drei -- fach ha -- ben | sie mir ge -- zeigt |
  wenn  uns das Le -- ben um -- | nach -- tet |
  wie  mans ver -- raucht  ver --  | schläft  und ver -- geigt  |
  wie man es  drei -- fach ver -- | ach -- tet.
}
§§StanzaSix = 
  "6. Dreifach haben sie mir gezeigt
  wenn uns das Leben umnachtet
  wie mans verraucht verschläft vergeigt
  und wie man es dreimal verachtet"


§§VerseSevSI = \lyricmode {
  \set stanza = "7."
  Nach den Zi -- geu  -- | nern lang noch schaun |
  mußt  ich im Wei -- _ ter -- | fah -- ren |
  nach den Ge -- sich  tern | dun -- _ kel -- braun  |
  und den schwarz -- lok -- ki -- gen | Haa-- ren.
}
§§StanzaSev = 
  "7. Nach den Zigeunern lang noch schaun
  mußt ich im Weiterfahren
  Nach den Gesichtern dunkelbraun
  und den schwarzlockigen Haaren"


\include "end.ily"
