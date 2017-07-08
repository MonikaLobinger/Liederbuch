\version "2.19.63"

\include "begin.ily"

§§Title = "Dona nobis pacem"
§§Subtitle = "3-stimmiger Kanon"

§§ScoreKey =   { \key f \major }
§§ScoreMeter = { \time 3/4 }
§§ScoreTempo = { \tempo 4 = 120 }

§§HiddenVoice = {
  s2.^"1. Stimme" | s | s | s \breathe | s | s | s \noBreak |  s \breathe |
  s2.^"2. Stimme" | s | s | s \breathe| s | s | s \noBreak |  s \breathe |
  s2.^"3. Stimme" | s | s | s \breathe| s | s | s | s |
}

§§NotesSopranoI = \relative c' {
\repeat volta 2 {
    f8 [(c8)] a'2 g8 [(c,8)] bes'2 a4 (g) f f e2 d'4 (c8 [bes8]) a8 [(g8)] c4.
    (bes8) a4 a8 ([g8] f4 e4) f2. \fermata c'2. c c4 (bes) a a g2
    d'4 d2 c4 c2 c8 ([bes8] a4 g) f2. \fermata
    f2. e  f4. (g8) a8 [(bes8)] c4 c,2  bes'4 bes2 a4 a2 e8 ([g8] c4 c,4) f2. \fermata
    %\bar "|."
} }

sequenz = \chordmode { f2. c2. f2. c2. bes2. f2. c2. f2. }
§§Chords = \chordmode {
  \sequenz \sequenz \sequenz
}
sequenz = ##f

§§VerseOneSI = \lyricmode {
\set stanza = "1."
  Do -- na no -- bis pa -- cem, pa -- cem, do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem, do -- na no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem, do -- na no -- bis pa -- cem.
}

§§StanzaOne =
  "1. Danna nobis pacem, pacem, danna nobis pacem.
  Donna nobis pacem, pacem, donna nobis pacem.
  Donna nobis pacem, pacem, donna nobis pacem."


\include "end.ily"
