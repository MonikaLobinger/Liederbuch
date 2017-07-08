\version "2.19.63"
\include "../code/procs.ily"
\include "../_in/begin.ily"
\include "../_in/Input Zehn kleine Negerlein.ly"
\include "../scores/Score.ily"

SongFileName = "Zehn kleine Negerlein" %NotYetUsed
SongStringName = "ZehnKleineNegerlei"  %NotYetUsed

ScoreBookZehnKleineNegerlein = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score

ScoreSheetZehnKleineNegerlein = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \midi { }   \layout { }
   \§MusicExpressionSheet
} % score

StanzaTrailingZehnKleineNegerleinI = \§StanzaTrailingI
StanzaTrailingZehnKleineNegerleinII = \§StanzaTrailingII

\include "../scores/endScore.ily"
