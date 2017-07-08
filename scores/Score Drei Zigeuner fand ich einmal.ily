\version "2.19.63"
\include "../code/procs.ily"
\include "../_in/begin.ily"
\include "../_in/Input Drei Zigeuner fand ich einmal.ly"
\include "../scores/Score.ily"

SongFileName = "Drei Zigeuner fand ich einmal" %NotYetUsed
SongStringName = "DreiZigeunerFandIchEinmal"   %NotYetUsed

ScoreBookDreiZigeunerFandIchEinmal = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score

ScoreSheetDreiZigeunerFandIchEinmal = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \midi { }   \layout { }
   \§MusicExpressionSheet
} % score

StanzaTrailingDreiZigeunerFandIchEinmalI = \§StanzaTrailingI
StanzaTrailingDreiZigeunerFandIchEinmalII = \§StanzaTrailingII

\include "../scores/endScore.ily"
