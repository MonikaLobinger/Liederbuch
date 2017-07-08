\version "2.19.63"

\include "../layout/paperA4.ily"
  % paperA4.ily: IsAFive IsAFour set-paper-size paper.top-margin paper.bottom-margin paper.ragged-bottom
\paper {
   % staff-size has to be set before font- definition, because font needs staff size
   % When setting staff-size after "#(define fonts" - the font definition would be reset
   % to default values
   #(layout-set-staff-size 20 ) %11.22 12.60 14.14 15.87 17.82 20 22.45 25.2
}
\include "../layout/sheet.ily"
  % sheet.ily: InBook StrophesAsLyrics
\paper {
   left-margin = 30.0\mm
   right-margin = 20.0\mm
   indent = 0
}


\layout {
 \override NoteHead.font-size = #+1
 % works too, but is silly
 %\override Staff.BarLine.color = #white
 %\override Lyrics.LyricText.font-size = -2
 %\override Score.BarNumber #'break-visibility = #'#(#f #f #f)
%     \context { \Score
%       \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
%     }
}
