\version "2.19.63"

\include "../layout/nomidi.ily"
\include "../layout/bookA4ForA5.ily"
ShowTempo  = ##f
ShowChords = ##f
\include "../scores/Score in dem Kerker sassen.ily"
\include "../scores/Score Mariechen sass weinend im Garten.ily"
\include "../scores/Score Drei Zigeuner fand ich einmal.ily"
\include "../scores/Score Bunt sind schon die Waelder.ily"
\include "../scores/Score Es klappert die Muehle.ily"
\include "../scores/Score Dona nobis pacem.ily"
\include "../scores/Score Ein Mann der sich Kolumbus nannt.ily"

\book {
   \include "liederbuchpage1.txt"
   \include "liederbuchpage2.txt"
   \bookOutputName "../_out/Liederbuch"
   \ScoreBookInDemKerkerSassen             \StanzaTrailingInDemKerkerSassenI             \pieceseparator
   \ScoreBookMariechenSassWeinendImGarten  \StanzaTrailingMariechenSassWeinendImGartenI  \pieceseparator
   \ScoreBookDreiZigeunerFandIchEinmal     \StanzaTrailingDreiZigeunerFandIchEinmalI     \pieceseparator
   \ScoreBookBuntSindSchonDieWaelder       \StanzaTrailingBuntSindSchonDieWaelderI       \pieceseparator
   \ScoreBookEsKlappertDieMuehle           \StanzaTrailingEsKlappertDieMuehleI           \pieceseparator
   \ScoreBookDonaNobisPacem                \StanzaTrailingDonaNobisPacemI                \pieceseparator
   \ScoreBookEinMannDerSichKolumbusNannt   \StanzaTrailingEinMannDerSichKolumbusNanntI   \pieceseparator
}
