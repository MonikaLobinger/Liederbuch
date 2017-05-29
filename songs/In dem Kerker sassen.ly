\version "2.18.2"

\include "../settings/midi.ily"
\include "../settings/songA5.ily"
\include "../scores/ScoreInDemKerkerSassen.ly"

\score {
   \Song
   \header {
      title = \Title
      subtitle = \Subtitle
   }
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
