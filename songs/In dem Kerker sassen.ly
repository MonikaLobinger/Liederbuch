\version "2.18.2"

\include "../settings/midi.ily"
\include "../settings/sheetA5.ily"
\include "../scores/ScoreInDemKerkerSassen.ly"

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

\ScoreInDemKerkerSassenSheet
\MarkupInDemKerkerSassen
\pieceseparator
