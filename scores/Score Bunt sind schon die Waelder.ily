\version "2.19.63"
\include "../code/procs.ily"
\include "../_in/begin.ily"
\include "../_in/Input Bunt sind schon die Waelder.ly"
\include "../scores/Score.ily"

SongFileName = "Bunt sind schon die Waelder" %NotYetUsed
SongStringName = "BuntSindSchonDieWaelder"   %NotYetUsed

ScoreBookBuntSindSchonDieWaelder = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score

ScoreSheetBuntSindSchonDieWaelder = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \midi { }   \layout { }
   \§MusicExpressionSheet
} % score

StanzaTrailingBuntSindSchonDieWaelderI = \§StanzaTrailingI
StanzaTrailingBuntSindSchonDieWaelderII = \§StanzaTrailingII

\include "../scores/endScore.ily"
