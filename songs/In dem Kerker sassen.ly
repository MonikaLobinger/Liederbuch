\version "2.18.2"

\include "../settings/midi.ily"
\include "../settings/songA5.ily"
\include "../scores/ScoreInDemKerkerSassen.ly"

\score {
   \header {
      title = \Title
      subtitle = \Subtitle
   }
   \Song
   \layout {
   %\bookOutputName  #(string-append "../output/" (ly:parser-output-name parser))
   \bookOutputName  "../output/In dem Kerker sassen"
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 100 4)
      } % context
   } % midi
} % score
