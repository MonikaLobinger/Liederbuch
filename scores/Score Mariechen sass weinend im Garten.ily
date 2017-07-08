\version "2.19.63"
\include "../code/procs.ily"
\include "../_in/begin.ily"
\include "../_in/Input Mariechen sass weinend im Garten.ly"
\include "../scores/Score.ily"

SongFileName = "Mariechen sass weinend im Garten" %NotYetUsed
SongStringName = "MariechenSassWeinendImGarten"   %NotYetUsed

ScoreBookMariechenSassWeinendImGarten = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score

ScoreSheetMariechenSassWeinendImGarten = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \midi { }   \layout { }
   \§MusicExpressionSheet
} % score

StanzaTrailingMariechenSassWeinendImGartenI = \§StanzaTrailingI
StanzaTrailingMariechenSassWeinendImGartenII = \§StanzaTrailingII

\include "../scores/endScore.ily"
