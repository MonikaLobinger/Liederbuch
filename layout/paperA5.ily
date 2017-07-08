\version "2.19.63"

IsAFive = ##t
IsAFour = ##f

\paper {
   #(set-paper-size "a5")

   top-margin = 13\mm
   bottom-margin = 10\mm
   ragged-bottom = ##t % ##f: Füllt die Seite bis unten
   %auto-first-page-number
   %first-page-number = 1
   print-page-number = ##t
   print-first-page-number = ##f

   print-all-headers = ##t
   oddHeaderMarkup = \markup \null
   evenHeaderMarkup = \markup \null
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
