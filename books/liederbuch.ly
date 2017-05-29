\version "2.18.2"

\include "../settings/nomidi.ily"
\include "../settings/bookA5.ily"

#(set-global-staff-size 14.14)

\layout {
 #(layout-set-staff-size 14.14) % 11.22 12.60 14.14 15.87
 \override NoteHead.font-size = #1.4
 %\accidentalStyle dodecaphonic
 %\set fontSize = #-4
 %\override Voice.Stem.thickness = #4.0

 indent = 0\mm
 short-indent = 0\mm
 %\context {
 %   \Lyrics
 %   \override VerticalAxisGroup.nonstaff-nonstaff-spacing.stretchability = #0.8
 % }
 % \context {
 %     \Score
 %     \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
 % }
 % \context {
 %   \Voice
 %   \override NoteHead.color = #blue
 % }
  \context {
      \Staff
      \override Stem.thickness = #2.0
    }
   \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

trenner = \markup {  \column { " "  " "  " "  " "  " " } }
trenner = \pageBreak

\include "../scores/ScoreInDemKerkerSassen.ly"
\include "../scores/ScoreMariechenSassWeinendImGarten.ly"


\book {
   \include "liederbuchpage1.ly"
   \include "liederbuchpage2.ly"
   \bookOutputName "../output/Liederbuch"

   \ScoreInDemKerkerSassen
   \StrophenInDemKerkerSassen
   \trenner
   \ScoreMariechenSassWeinendImGarten

}
