\version "2.19.63"
\include "..\layout\system.ily"
  % system.ily fontNameLyrics fontSizeLyrics

\paper {
   two-sided = ##f
%{
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Narkisim"
      #:sans "Segoe WP Semibold"
      #:typewriter "Courier"
      #:factor (/ staff-height pt 20)
  ))
%}
      % factor above is a factor for objects on staff, does not change staff
      % size layout-set-staff-size may not appear after this font definition
      % that would reset the font settings to default
      % Defaults:
      % roman "Century Schoolbook L"
      % sans "sans-serif"
      % typewriter "monospace"
      % factor (/ staff-height pt 20)
}

\layout {
  \context { \ChordNames
      \germanChords
      \override ChordName.font-size = #-0.5
} }

\layout {
  \context { \Score
      \override MetronomeMark.X-offset = #3
      \override MetronomeMark.Y-offset = #-2
      \override MetronomeMark.font-size = #-2
} }

\layout {
  \context { \Score
      \override BarNumber.X-offset = #0.1
      \override BarNumber.Y-offset = #3
} }

%font-encoding . fetaText

\layout {
    \context { \Lyrics
        \override LyricText.self-alignment-X = #LEFT
        \override LyricText.font-size = \fontSizeLyrics
        \override LyricText.font-name = \fontNameLyrics
} }

\layout {
    \context { \Lyrics
        \override VerticalAxisGroup.staff-affinity = #DOWN
} }

\paper {
  system-system-spacing.padding = #1.1
}
