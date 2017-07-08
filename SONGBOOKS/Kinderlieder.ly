\version "2.19.63"

\include "../layout/nomidi.ily"
\include "../layout/BookA4ForA5.ily"
ShowTempo  = ##f
ShowChords = ##f
\include "../scores/Score Zehn kleine Negerlein.ily"

\book {
   \include "kinderliederpage1.txt"
   \bookOutputName "../_out/Kinderlieder"
   \ScoreBookZehnKleineNegerlein
   \StanzaTrailingZehnKleineNegerleinI
}
