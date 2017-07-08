\version "2.19.63"
\include "./procedures.ily"

\header { }

\book { % Jeder \book-Block erzeugt dann eine eigene Ausgabedatei.
  \score { % Jeder \score-Block beschreibt ein eigenst¨andiges Musikst¨uck innerhalb des \book-Blocks.
    \header { }  % Kann auch außerhalb des Musikausdrucks stehen
    \new Staff {
      \new Voice {
        \relative c'' {
          \xaddAccent c4 a \addAccent b c
        }
      }
    }
    \layout { } % Jeder \layout-Block wirkt sich auf den \score- oder \book-Block aus, in dem er auftritt.
    \midi { } % Eine MIDI-Ausgabe wird nur erstellt, wenn die \midi-Umgebung in eine Partiturumgebung eingefügt wird, die mit dem Befehl \score beginnt.
  }
}
% ein \layout-Block außerhalb eines \score-Blocks (und daher innerhalb des implizit erzeugten oder explizit
% angegebenen \book-Blocks) wirkt jedoch auf alle \score-Blocks innerhalb dieses \book-Blocks.
