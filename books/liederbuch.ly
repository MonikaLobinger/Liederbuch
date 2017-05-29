\version "2.18.2"

\include "../settings/nomidi.ily"
\include "../settings/bookA5.ily"
\include "../scores/ScoreInDemKerkerSassen.ly"
\include "../scores/ScoreMariechenSassWeinendImGarten.ly"


\book {
   \include "liederbuchpage1.ly"
   \include "liederbuchpage2.ly"
   \bookOutputName "../output/Liederbuch"
   \ScoreInDemKerkerSassenBook
   \MarkupInDemKerkerSassen
   \pieceseparator
   \ScoreMariechenSassWeinendImGartenBook
   \MarkupMariechenSassWeinendImGarten
}
