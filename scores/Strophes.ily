\version "2.19.63"

\include "../scores/beginStrophes.ily"

§LyricsLeadingSI  = <<  \§§LyricsOneSI  >>
§LyricsTrailingSI = <<  \§§LyricsTwoSI   \§§LyricsThrSI
                    >>

§StanzaLeading = #(str2mlist  §§StanzaOne)

§StanzaTrailingI = \markup  \override-lines #'(line-width . 70) { \vspace #1.2
   \on-the-fly #MarkupStrophesAsLyrics
      {
        \stanza \column {
          #(str2mlist §§StanzaFou) #(str2mlist §§StanzaFiv) #(str2mlist §§StanzaSix) #(str2mlist §§StanzaSev)
          #(str2mlist §§StanzaEig) #(str2mlist §§StanzaNin) #(str2mlist §§StanzaTen) #(str2mlist §§StanzaEle)
          #(str2mlist §§StanzaTwe) #(str2mlist §§StanzaThi) #(str2mlist §§StanzaFoT) #(str2mlist §§StanzaFiT)
          #(str2mlist §§StanzaSiT) #(str2mlist §§StanzaSeT) #(str2mlist §§StanzaEiT) #(str2mlist §§StanzaNiT)
          #(str2mlist §§StanzaTWe) #(str2mlist §§StanzaTOn) #(str2mlist §§StanzaTTw) #(str2mlist §§StanzaTTh)
          #(str2mlist §§StanzaTFo) #(str2mlist §§StanzaTFi) #(str2mlist §§StanzaTSi) #(str2mlist §§StanzaTSe)
          #(str2mlist §§StanzaTEi) #(str2mlist §§StanzaTNi)
         }
      }
   \on-the-fly #MarkupStrophesAsStanza
      {
        \stanza \column { 
          #(str2mlist §§StanzaTwo) #(str2mlist §§StanzaThr)
          #(str2mlist §§StanzaFou) #(str2mlist §§StanzaFiv) #(str2mlist §§StanzaSix) #(str2mlist §§StanzaSev)
          #(str2mlist §§StanzaEig) #(str2mlist §§StanzaNin) #(str2mlist §§StanzaTen) #(str2mlist §§StanzaEle)
          #(str2mlist §§StanzaTwe) #(str2mlist §§StanzaThi) #(str2mlist §§StanzaFoT) #(str2mlist §§StanzaFiT)
          #(str2mlist §§StanzaSiT) #(str2mlist §§StanzaSeT) #(str2mlist §§StanzaEiT) #(str2mlist §§StanzaNiT)
          #(str2mlist §§StanzaTWe) #(str2mlist §§StanzaTOn) #(str2mlist §§StanzaTTw) #(str2mlist §§StanzaTTh)
          #(str2mlist §§StanzaTFo) #(str2mlist §§StanzaTFi) #(str2mlist §§StanzaTSi) #(str2mlist §§StanzaTSe)
          #(str2mlist §§StanzaTEi) #(str2mlist §§StanzaTNi)
         }
      }
}

§StanzaTrailingII = \markup  \override-lines #'(line-width . 70) { \vspace #1.2
   \on-the-fly #MarkupStrophesAsLyrics { 
   
        \stanza \column {
          #(str2mlist §§StanzaFou) #(str2mlist §§StanzaSix) #(str2mlist §§StanzaEig) #(str2mlist §§StanzaTen)
          #(str2mlist §§StanzaTwe) #(str2mlist §§StanzaFoT) #(str2mlist §§StanzaSiT) #(str2mlist §§StanzaEiT)
          #(str2mlist §§StanzaTWe) #(str2mlist §§StanzaTTw) #(str2mlist §§StanzaTFo) #(str2mlist §§StanzaTSi)
          #(str2mlist §§StanzaTEi)
         }
         \column { "   " }
         \stanza \column {
          #(str2mlist §§StanzaFiv) #(str2mlist §§StanzaSev) #(str2mlist §§StanzaNin) #(str2mlist §§StanzaEle)
          #(str2mlist §§StanzaThi) #(str2mlist §§StanzaFiT) #(str2mlist §§StanzaSeT) #(str2mlist §§StanzaNiT)
          #(str2mlist §§StanzaTOn) #(str2mlist §§StanzaTTh) #(str2mlist §§StanzaTFi) #(str2mlist §§StanzaTSe)
          #(str2mlist §§StanzaTNi)
          }
      }
   \on-the-fly #MarkupStrophesAsStanza { 
        \stanza \column { #(str2mlist §§StanzaTwo)
          #(str2mlist §§StanzaFou) #(str2mlist §§StanzaSix) #(str2mlist §§StanzaEig) #(str2mlist §§StanzaTen)
          #(str2mlist §§StanzaTwe) #(str2mlist §§StanzaFoT) #(str2mlist §§StanzaSiT) #(str2mlist §§StanzaEiT)
          #(str2mlist §§StanzaTWe) #(str2mlist §§StanzaTTw) #(str2mlist §§StanzaTFo) #(str2mlist §§StanzaTSi)
          #(str2mlist §§StanzaTEi)
         }
         \column { "   " }
         \stanza \column { #(str2mlist §§StanzaThr)
          #(str2mlist §§StanzaFiv) #(str2mlist §§StanzaSev) #(str2mlist §§StanzaNin) #(str2mlist §§StanzaEle)
          #(str2mlist §§StanzaThi) #(str2mlist §§StanzaFiT) #(str2mlist §§StanzaSeT) #(str2mlist §§StanzaNiT)
          #(str2mlist §§StanzaTOn) #(str2mlist §§StanzaTTh) #(str2mlist §§StanzaTFi) #(str2mlist §§StanzaTSe)
          #(str2mlist §§StanzaTNi)
          }
      }
}


\include "../scores/endStrophes.ily"
