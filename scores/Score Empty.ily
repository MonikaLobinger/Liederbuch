\version "2.19.63"
\include "../code/procs.ily"
\include "../_in/begin.ily"
\include "../_in/Input Empty.ly"
\include "../scores/Score.ily"

SongFileName = "Empty"   %NotYetUsed
SongStringName = "Empty" %NotYetUsed

ScoreBookEmpty = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score

ScoreSheetEmpty = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \midi { }   \layout { }
   \§MusicExpressionSheet
} % score

StanzaTrailingEmptyI = \§StanzaTrailingI
StanzaTrailingEmptyII = \§StanzaTrailingII

\include "../scores/endScore.ily"
