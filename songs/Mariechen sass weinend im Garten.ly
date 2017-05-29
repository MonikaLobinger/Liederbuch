\version "2.18.2"

\include "../settings/midi.ily"
\include "../settings/songA5.ily"
\include "../scores/ScoreMariechenSassWeinendImGarten.ly"

\score {
   \Song
   \header {
      title = \Title
      subtitle = \Subtitle
   }
   \layout {
   #(layout-set-staff-size 14.14) % 11.22 12.60 14.14 15.87
   \override NoteHead.font-size = #1.4
   %\bookOutputName  #(string-append "../output/" (ly:parser-output-name parser))
   \bookOutputName  "../output/Mariechen sass weinend im Garten"
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 140 4)
      } % context
   } % midi
} % score
