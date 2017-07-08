\version "2.19.63"
\include "../code/procs.ily"
\include "../_in/begin.ily"
\include "../_in/Input Dona nobis pacem.ly"
\include "../scores/Score.ily"

SongFileName = "Dona nobis pacem" %NotYetUsed
SongStringName = "DonaNobisPacem" %NotYetUsed

ScoreBookDonaNobisPacem = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score

ScoreSheetDonaNobisPacem = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \midi { }   \layout { }
   \§MusicExpressionSheet
} % score

StanzaTrailingDonaNobisPacemI = \§StanzaTrailingI
StanzaTrailingDonaNobisPacemII = \§StanzaTrailingII

\include "../scores/endScore.ily"
