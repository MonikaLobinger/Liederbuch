\version "2.18.2"

\include "../settings/sheet.ily"
\include "../settings/paperA5.ily"

\paper {
   #(layout-set-staff-size 17.82)
   left-margin = 10.0\mm
   right-margin = 10.0\mm
}

\layout {
 \override NoteHead.font-size = 1.6
 % works too, but is silly
 %\override Staff.BarLine.color = #white
}
