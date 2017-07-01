\version "2.18.2"

\include "../settings/paperA5.ily"
\include "../settings/sheet.ily"

\paper {
   #(layout-set-staff-size 14.14) %11.22 12.60 14.14 15.87 17.82 20 22.45 25.2
   left-margin = 15.0\mm
   right-margin = 15.0\mm
   indent = 0
}

\layout {
 %\override NoteHead.font-size = -2
 % works too, but is silly
 %\override Staff.BarLine.color = #white
 %\override Lyrics.LyricText.font-size = -2
 %\override Score.BarNumber #'break-visibility = #'#(#f #f #f)
%     \context {
%       \Score
%       \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
%     }
}
