\version "2.19.63"
\include "../switches.ily"
\include "../layout/layout.ily"

"|" = \bar "|" % No bar checking - does not work correctly in the book

InBook = ##t
StrophesAsLyrics = ##f

\paper {
   two-sided = ##t
}

\layout {
}
