\version "2.19.63"
% input\end.ily
% Mit dieser Datei wird eine Testausgabe erzeugt.
% Es wird eine pdf Datei und eine midi Datei erstellt.
% So kann man was man geschrieben hat überprüfen.
% Die endgültige Ausgabe sieht anders aus.

\header {
   title =    \§§Title
}
\score {
   \midi { }   \layout { }
   <<
      \new ChordNames {
        \§§Chords
      }
      \new Staff {
         <<
            \new Voice = "SopranoI" {
              \clef "treble"
              \§§ScoreKey \§§ScoreMeter
              \§§ScoreTempo
              \dynamicUp
              \autoBeamOff
              <<
                \§§HiddenVoice
                \§§NotesSopranoI
              >>
            }
            \new Lyrics \lyricsto "SopranoI" \§§VerseOneSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTwoSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseThrSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseFouSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseFivSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseSixSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseSevSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseEigSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseNinSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTenSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseEleSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTweSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseThiSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseFoTSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseFiTSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseSiTSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseSeTSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseEiTSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseNiTSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTWeSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTOnSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTTwSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTThSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTFoSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTFiSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTSiSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTSeSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTEiSI
            \new Lyrics \lyricsto "SopranoI" \§§VerseTNiSI
         >>
      }
   >>
}

\markup { \wordwrap-string \§§StanzaOne  }
\markup { \wordwrap-string \§§StanzaTwo  }
\markup { \wordwrap-string \§§StanzaThr  }
\markup { \wordwrap-string \§§StanzaFou  }
\markup { \wordwrap-string \§§StanzaFiv  }
\markup { \wordwrap-string \§§StanzaSix  }
\markup { \wordwrap-string \§§StanzaSev  }
\markup { \wordwrap-string \§§StanzaEig  }
\markup { \wordwrap-string \§§StanzaNin  }
\markup { \wordwrap-string \§§StanzaTen  }
\markup { \wordwrap-string \§§StanzaEle  }
\markup { \wordwrap-string \§§StanzaTwe  }
\markup { \wordwrap-string \§§StanzaThi  }
\markup { \wordwrap-string \§§StanzaFoT  }
\markup { \wordwrap-string \§§StanzaFiT  }
\markup { \wordwrap-string \§§StanzaSiT  }
\markup { \wordwrap-string \§§StanzaSeT  }
\markup { \wordwrap-string \§§StanzaEiT  }
\markup { \wordwrap-string \§§StanzaNiT  }
\markup { \wordwrap-string \§§StanzaTWe  }
\markup { \wordwrap-string \§§StanzaTOn  }
\markup { \wordwrap-string \§§StanzaTTw  }
\markup { \wordwrap-string \§§StanzaTTh  }
\markup { \wordwrap-string \§§StanzaTFo  }
\markup { \wordwrap-string \§§StanzaTFi  }
\markup { \wordwrap-string \§§StanzaTSi  }
\markup { \wordwrap-string \§§StanzaTSe  }
\markup { \wordwrap-string \§§StanzaTEi  }
\markup { \wordwrap-string \§§StanzaTNi  }
