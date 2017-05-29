\version "2.18.2"

\include "../settings/book.ily"
\include "../settings/paperA5.ily"

\paper {
   inner-margin = 5.0\mm
   outer-margin = 15.0\mm
   binding-offset = 30.0\mm
}

\layout {
 % this does not work this way for books
 \override NoteHead.font-size = 3
 % this does work
 %\override Staff.BarLine.color = #white
}
