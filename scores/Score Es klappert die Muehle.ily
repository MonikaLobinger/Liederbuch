\version "2.19.63"
\include "../code/procs.ily"
\include "../_in/begin.ily"
\include "../_in/Input Es klappert die Muehle.ly"
\include "../scores/Score.ily"

SongFileName = "Es klappert die Muehle" %NotYetUsed
SongStringName = "EsKlappertDieMuehle"  %NotYetUsed

ScoreBookEsKlappertDieMuehle = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score

ScoreSheetEsKlappertDieMuehle = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \midi { }   \layout { }
   \§MusicExpressionSheet
} % score

StanzaTrailingEsKlappertDieMuehleI = \§StanzaTrailingI
StanzaTrailingEsKlappertDieMuehleII = \§StanzaTrailingII

\include "../scores/endScore.ily"
