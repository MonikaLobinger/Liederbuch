\version "2.19.63"
\include "../code/procs.ily"
\include "../_in/begin.ily"
\include "../_in/Input Ein Mann der sich Kolumbus nannt.ly"
\include "../scores/Score.ily"

SongFileName = "Ein Mann der sich Kolumbus nannt" %NotYetUsed
SongStringName = "EinMannDerSichKolumbusNannt"    %NotYetUsed

ScoreBookEinMannDerSichKolumbusNannt = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score

ScoreSheetEinMannDerSichKolumbusNannt = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \midi { }   \layout { }
   \§MusicExpressionSheet
} % score

StanzaTrailingEinMannDerSichKolumbusNanntI = \§StanzaTrailingI
StanzaTrailingEinMannDerSichKolumbusNanntII = \§StanzaTrailingII

\include "../scores/endScore.ily"
