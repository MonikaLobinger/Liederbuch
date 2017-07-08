\version "2.19.63"
\include "../code/procs.ily"
\include "../_in/begin.ily"
\include "../_in/Input In dem Kerker sassen.ly"
\include "../scores/Score.ily"

SongFileName = "In dem Kerker sassen" %NotYetUsed
SongStringName = "InDemKerkerSassen"  %NotYetUsed

ScoreBookInDemKerkerSassen = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score

ScoreSheetInDemKerkerSassen = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \midi { }   \layout { }
   \§MusicExpressionSheet
} % score

StanzaTrailingInDemKerkerSassenI = \§StanzaTrailingI
StanzaTrailingInDemKerkerSassenII = \§StanzaTrailingII

\include "../scores/endScore.ily"
