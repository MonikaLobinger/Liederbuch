\version "2.19.63"

\include "../layout/paperA4ForA5.ily"
\include "../layout/book.ily"

\paper {
   #(layout-set-staff-size 25.2) %11.22 12.60 14.14 15.87 17.82 20 22.45 25.2
   inner-margin = 20.0\mm
   outer-margin = 20.0\mm
   binding-offset = 10.0\mm
}

\layout {
 \override NoteHead.font-size = #+1
 %\override Stem.thickness = #2.0
 % works too, but is silly
 %\override Staff.BarLine.color = #white
 %testing checkin via Atom Editor
}
