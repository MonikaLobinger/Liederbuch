\version "2.19.63"

\include "../layout/paperA5.ily"
\include "../layout/book.ily"

\paper {
   #(layout-set-staff-size 14.14)
   inner-margin = 10.0\mm
   outer-margin = 10.0\mm
   binding-offset = 10.0\mm
}

\layout {
 \override NoteHead.font-size = 1.4
 \override Stem.thickness = #2.0
 % works too, but is silly
 %\override Staff.BarLine.color = #white
 %testing checkin via Atom Editor
}
