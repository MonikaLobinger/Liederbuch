\version "2.18.2"

\paper {
   #(set-paper-size "a5")

   top-margin = 13\mm
   bottom-margin = 10\mm
   ragged-bottom = ##t % ##f: Füllt die Seite bis unten
   %ragged-last-bottom = ##t
   %left-margin = 10\mm
   %right-margin = 10\mm
   %inner-margin = 10\mm
   %outer-margin = 10\mm
   %binding-offset = 10\mm
   %paper-width =
   %line-width = %Auch Layout
   %check-consistency = ##t
   %ragged-right = #tt %Auch Layout %##t: Systeme nicht bis zum rechten Rand gestreckt
   %ragged-last = %Auch Layout
   %horizontal-shift
   %indent = %Auch Layout
   %short-indent =   %Auch Layout

   %markup-system-spacing =
   %score-markup-spacing
   %score-system-spacing
   %system-system-spacing =
   %markup-markup-spacing
   %last-bottom-spacing
   %top-system-spacing
   %top-markup-spacing

   %system-count = %Auch Layout

   %blank-after-score-page-penalty
   %blank-last-page-penalty
   %blank-page-penalty
   %page-breaking
   %page-breaking-system-system-spacing
   %page-count

   %auto-first-page-number
   %first-page-number = 1
   print-page-number = ##t
   print-first-page-number = ##f
   %page-spacing-weight
   %system-separator-markup

   print-all-headers = ##t
   oddHeaderMarkup = \markup \null
   evenHeaderMarkup = \markup \null
   oddFooterMarkup = \markup {
      \fill-line {
         \hspace #0.1
         \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
      }
   }
   evenFooterMarkup = \markup {
      \fill-line {
         \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
         \hspace #0.1
      }
   }

   oddFooterMarkup = \markup {
      \fill-line {
         \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
         \on-the-fly #print-page-number-check-first
            \fromproperty #'header:myTitle
       }
    }
    evenFooterMarkup = \oddFooterMarkup
}
