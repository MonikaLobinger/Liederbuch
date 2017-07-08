\version "2.19.63"

\include "../layout/nomidi.ily"
\include "../layout/bookA4ForA5.ily"
ShowTempo  = ##f
ShowChords = ##f
\include "../scores/Score Empty.ily"

\book {
   \include "kinderliederpage1.txt"
   \bookOutputName "../_out/EmptyBook"
   \ScoreBookEmpty
   \StanzaTrailingEmptyI
}
