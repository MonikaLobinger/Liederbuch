\version "2.19.63"

soprano = { a b c' d' }
varTwentyTwo     = TwentyTwo
varTwentyTwo     = "TwentyTwo"
varTwentyTwo     = \markup TwentyTwo
varTwentyTwo     = \markup "TwentyTwo"
varMarkupArglist = \markup { Likabletheory Humphycangoroo Ovarallbook }
varStringsStrophe = \markup {
   "1. Zehn kleine Kinderlein, die schliefen in der Scheun, "
   "das eine ging im Heu verlorn, da waren's nur noch neun. "
   "Ein klein, zwei klien, drei klein, vier klein, fünf Klein Kinderlein"
   "sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"
}

varStringStrophe = \markup {
    "2. Neun kleine Kinderlein, die gingen auf die Jagd,
    da hat sich eines totgeschoss'n, da waren's nur noch acht.
    Ein klein , zwei klien, drei klein, vier klein, fünf Klein Kinderlein
    sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"
}

varStrophe = 
    "2. Neun kleine Kinderlein, die gingen auf die Jagd,
    da hat sich eines totgeschoss'n, da waren's nur noch acht.
    Ein klein , zwei klien, drei klein, vier klein, fünf Klein Kinderlein
    sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"

varStropheNL = 
    "2. Neun kleine Kinderlein, die gingen auf die Jagd,\n
    da hat sich eines totgeschoss'n, da waren's nur noch acht.\n
    Ein klein , zwei klien, drei klein, vier klein, fünf Klein Kinderlein\n
    sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"


\book {
   \header {
      title = "My title"
      myText = "Lorem ipsum dolor sit amet, consectetur adipisicing
                elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco
                laboris nisi ut aliquip ex ea commodo consequat."   
      myWext ="Lorem ipsum dolor sit amet, consectetur adipisicing
                elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco
                laboris nisi ut aliquip ex ea commodo consequat." 
   }
   \score {
      \new Staff {
         \new Voice \soprano
      }
      \layout {
      }
      \midi {
      }
   }
   \paper {
      left-margin = 20\mm
      right-margin = 20\mm
      bookTitleMarkup = \markup { \column {
                           \fill-line { \fromproperty #'header:title }
                           \null  \with-color #darkmagenta  \justify-field #'header:myText  
                           \null  \with-color #darkmagenta  \wordwrap-field #'header:myWext  
      } }      
   }


   \markup { \justify-string #"abc" }


%  \hspace %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3     "\hspace amount (number)" }
   \markup \fontsize #-1  { \hspace #3            Create an invisible object taking up horizontal space amount. }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  oneoneoneoneone  \hspace #2  two  \hspace #8  three  } " }
   \markup { \with-color #darkmagenta { oneoneoneoneone  \hspace #2  two  \hspace #8  three } } 
   \markup { \vspace #0.5 " " }


%  \vspace %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3     "\vspace amount (number)" }
   \markup \fontsize #-1  { \hspace #3            Create an invisible object taking up vertical space of amount multiplied by 3. }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \center-column { ooneoneoneoneonene  \hspace #2  two  \vspace #8  three  } } " }
   \markup { \with-color #darkmagenta  \center-column { oneoneoneoneone  \hspace #1  two  \vspace #0.2  three  } }
   \markup { \vspace #0.5 " " }


%  \justify-field %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3     "\justify-field symbol (symbol)" }
   \markup \fontsize #-1  { \hspace #3            Justify the data which has been assigned to symbol. }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \justify-field #'header:myText  } " }
   \markup { \with-color #darkmagenta { See paragraph under the title } }
   \markup { \vspace #0.5 " " }


%  \wordwrap-field %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3     "\wordwrap-field symbol (symbol)" }
   \markup \fontsize #-1  { \hspace #3            Wordwrap the data which has been assigned to symbol. }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \wordwrap-field #'header:myText  } } " }
   \markup { \with-color #darkmagenta { See second paragraph under the title } }
   \markup { \vspace #0.5 " " }


%  \justify-string %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3     "\justify-string arg (string)" }
   \markup \fontsize #-1  { \hspace #3            Justify a string. Paragraphs may be separated with double newlines }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \justify-string #\"Lorem ipsu ...\"  } " }
   \markup { \with-color #darkmagenta { \justify-string #"Lorem ipsum dolor sit amet, consectetur
      adipisicing elit, sed do eiusmod tempor incididunt ut labore
      et dolore magna aliqua.


      Ut enim ad minim veniam, quis nostrud exercitation ullamco
      laboris nisi ut aliquip ex ea commodo consequat.


      Excepteur sint occaecat cupidatat non proident, sunt in culpa
      qui officia deserunt mollit anim id est laborum" } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \justify-string \varStrophe  } " }
   \markup { \with-color #darkmagenta { \justify-string \varStrophe } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \justify-string \varStropheNL  } " }
   \markup { \with-color #darkmagenta { \justify-string \varStropheNL } }
   \markup { \vspace #0.5 " " }


%  \wordwrap-string %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\wordwrap-string arg (string)" }
   \markup \fontsize #-1  { \hspace #3             Wordwrap a string. Paragraphs may be separated with double newlines. }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \wordwrap-string #\"Lorem ipsu ...\"  } " }
   \markup { \with-color #darkmagenta { \wordwrap-string #"Lorem ipsum dolor sit amet, consectetur
      adipisicing elit, sed do eiusmod tempor incididunt ut labore
      et dolore magna aliqua.


      Ut enim ad minim veniam, quis nostrud exercitation ullamco
      laboris nisi ut aliquip ex ea commodo consequat.


      Excepteur sint occaecat cupidatat non proident, sunt in culpa
      qui officia deserunt mollit anim id est laborum" } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \wordwrap-string \varStrophe  } " }
   \markup { \with-color #darkmagenta { \wordwrap-string \varStrophe } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \wordwrap-string \varStropheNL  } " }
   \markup { \with-color #darkmagenta { \wordwrap-string \varStropheNL } }
   \markup { \vspace #0.5 " " }







%  \center-align %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\center-align arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Align arg to its X center. }


%  \combine %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\combine arg1 (markup) arg2 (markup)" }
   \markup \fontsize #-1  { \hspace #3             Print two markups on top of each other. }


%  \fill-with-pattern %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\fill-with-pattern space (number) dir (direction) pattern (markup) left (markup) right (markup)" }
   \markup \fontsize #-1  { \hspace #3             Put left and right in a horizontal line of width line-width with a line of markups pattern in between. Patterns are spaced apart by space. Patterns are aligned to the dir markup. }


%  \general-align %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\general-align axis (integer) dir (number) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Align arg in axis direction to the dir side. }


%  \halign %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\halign dir (number) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Set horizontal alignment. If dir is -1, then it is left-aligned, while +1 is right. Values in between interpolate alignment accordingly. }


%  \hcenter-in %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\hcenter-in length (number) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Center arg horizontally within a box of extending length/2 to the left and right. }


%  \left-align %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\left-align arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Align arg on its left edge. }


%  \lower %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\lower amount (number) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             "Lower arg by the distance amount. A negative amount indicates raising; see also \\raise." }


%  \pad-around %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\pad-around amount (number) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Add padding amount all around arg. }


%  \pad-markup %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\pad-markup amount (number) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Add space around a markup object. Identical to pad-around. }


%  \pad-to-box %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\pad-to-box x-ext (pair of numbers) y-ext (pair of numbers) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Make arg take at least x-ext, y-ext space. }


%  \pad-x %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\pad-x amount (number) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Add padding amount around arg in the X direction. }


%  \put-adjacent %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\put-adjacent axis (integer) dir (direction) arg1 (markup) arg2 (markup)" }
   \markup \fontsize #-1  { \hspace #3             Put arg2 next to arg1, without moving arg1. }


%  \raise %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\raise amount (number) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             "Raise arg by the distance amount. A negative amount indicates lowering, see also \lower." }


%  \right-align %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\right-align arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Align arg on its right edge. }


%  \rotate %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\rotate ang (number) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Rotate object with ang degrees around its center. }


%  \translate %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\\translate offset (pair of numbers) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Translate arg relative to its surroundings. offset is a pair of numbers representing the displacement in the X and Y axis. }


%  \translate-scaled %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\\translate-scaled offset (pair of numbers) arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Translate arg by offset, scaling the offset by the font-size. }


%  \vcenter %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\vcenter arg (markup)" }
   \markup \fontsize #-1  { \hspace #3             Align arg to its Y center. }







%  \center-column %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\center-column args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             Put args in a centered column. }


%  \column %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\column args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             Stack the markups in args vertically. The property baseline-skip determines the space between markups in args. }


%  \concat %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\concat args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             Concatenate args in a horizontal line, without spaces in between. Strings and simple markups are concatenated on the input level, allowing ligatures. For example, \concat { "f" \simple #"i" } is equivalent to "fi". }


%  \dir-column %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\dir-column args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             Make a column of args, going up or down, depending on the setting of the direction layout property. }


%  \fill-line %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\fill-line args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             Put markups in a horizontal line of width line-width. The markups are spaced or flushed to fill the entire line. If there are no arguments, return an empty stencil. }


%  \justify %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\justify args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             "Like \wordwrap, but with lines stretched to justify the margins. Use \override #'(line-width . X) to set the line width; X is the number of staff spaces." }


%  \left-column %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\left-column args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             Put args in a left-aligned column.  }


%  \line %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\line args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             Put args in a horizontal line. The property word-space determines the space between markups in args.  }


%  \right-column %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\right-column args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             Put args in a right-aligned column. }


%  \wordwrap %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\wordwrap args (markup list)" }
   \markup \fontsize #-1  { \hspace #3             Simple wordwrap. Use \override #'(line-width . X) to set the line width, where X is the number of staff spaces.  }











%{
  
%  \center-align %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \hspace#-3      "\center-align arg (markup)" }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \column { one \center-align  \varTwentyTwo three  } } "}
   \markup { \hspace #5 \with-color #darkmagenta  { \column { one \center-align \varTwentyTwo three } }  }
   \markup { \vspace #0.5 " " }
              
   \markup \fontsize #-1 \italic {  \vspace #0.2 "\markup { \center-align { one \varMarkupArglist three } }" } 
   \markup { \with-color #darkmagenta \center-align { one \varMarkupArglist three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.2 "\markup { \center-align { \varStringsStrophe } }" } 
   \markup { \with-color #darkmagenta \center-align { \varStringsStrophe } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.2 "\markup { \center-align { \varStringStrophe } }" } 
   \markup { \with-color #darkmagenta \center-align { \varStringStrophe } }
   \markup { \vspace #0.5 " " }


%  \halign %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      "\halign dir (number) arg (markup)" }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \halign #LEFT \varTwentyTwo   } " }
   \markup { \with-color #darkmagenta \halign #LEFT \varTwentyTwo  } 
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \halign #LEFT { one \varMarkupArglist three }    } "}
   \markup {  \with-color #darkmagenta \halign #LEFT { one \varMarkupArglist three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \halign #LEFT { one \varStringsStrophe three }    } "}
   \markup {  \with-color #darkmagenta \halign #LEFT  { one \varStringsStrophe three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \halign #LEFT { one \varStringStrophe three }    } "}
   \markup {  \with-color #darkmagenta \halign #LEFT { one \varStringStrophe three } }
   \markup { \vspace #0.5 " " }



%  \general-align %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      "\general-align axis (integer) dir (number) arg (markup)" }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \general-align #Y #DOWN \varTwentyTwo  } "}
   \markup { \with-color #darkmagenta \general-align #Y #DOWN \varTwentyTwo   } 
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \general-align #X #RIGHT \"abcd\"   } "}
   \markup {  \with-color #darkmagenta \general-align #X #RIGHT  "abcd" }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \general-align #X #LEFT \varStringsStrophe   } "}
   \markup {  \with-color #darkmagenta \general-align #X #LEFT \varStringsStrophe }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \general-align #X #RIGHT \varStringStrophe  } "}
   \markup {  \with-color #darkmagenta \general-align #X #RIGHT \varStringStrophe }
   \markup { \vspace #0.5 " " }


%  \combine %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      "\combine arg1 (markup) arg2 (markup)" }
   \markup \fontsize #-1  { \hspace #3             cannot take a list of markups enclosed in curly braces as an argument }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \fontsize #+10 \combine \".\" \"-\" }"}
   \markup { \with-color #darkmagenta \fontsize #+10 \combine "." "-" }


%  \center-column %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      " \center-column args (markup list)" }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \center-column { one  \varTwentyTwo \"three\" } }" } 
   \markup {  \with-color #darkmagenta  \center-column { one  \varTwentyTwo "three" } } 
   \markup { \vspace #0.5 " " }
   
   \markup \fontsize #-1 \italic {  \vspace #0.2 "\markup { \center-column { \varMarkupArglist } }" } 
   \markup { \with-color #darkmagenta \center-column { one \varMarkupArglist three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.2 "\markup { \center-column { \varStringsStrophe } }" } 
   \markup { \with-color #darkmagenta \center-column { one \varStringsStrophe three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.2 "\markup { \center-column { \varStringStrophe } }" } 
   \markup { \with-color #darkmagenta \center-column { one \varStringStrophe three } }
   \markup { \vspace #0.5 " " }


%  \fill-with-pattern %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      "\fill-with-pattern space (number) dir (direction) pattern (markup) left (markup) right (markup)" }
   \markup \fontsize #-1  { \hspace #3             crashes when left and right string length together  exceed line length }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \fill-with-pattern #0 #RIGHT - left right   } "}
   \markup { \with-color #darkmagenta \fill-with-pattern #0 #RIGHT - left right     } 
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \fill-with-pattern #0 #RIGHT - \varMarkupArglist \varTwentyTwo    } "}
   \markup {  \with-color #darkmagenta \fill-with-pattern #0 #RIGHT - \varMarkupArglist \varTwentyTwo } 
   \markup { \vspace #0.5 " " }


%  \column %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      " \column args (markup list)" }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \column { one  \varTwentyTwo \"three\" } }" } 
   \markup {  \with-color #darkmagenta \column { one  \varTwentyTwo "three" } } 
   \markup { \vspace #0.5 " " }
   
   \markup \fontsize #-1 \italic {  \vspace #0.2 "\markup { \column { \varMarkupArglist } }" } 
   \markup { \with-color #darkmagenta \column { one \varMarkupArglist three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.2 "\markup { \column { \varStringsStrophe } }" } 
   \markup { \with-color #darkmagenta \column { one \varStringsStrophe three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.2 "\markup { \column { \varStringStrophe } }" } 
   \markup { \with-color #darkmagenta \column { one \varStringStrophe three } }
   \markup { \vspace #0.5 " " }


%  \concat %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      "\concat args (markup list)" }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \column { one  Big \"Catastrophe\" } }" } 
   \markup {  \with-color #darkmagenta \concat { one Big "Catastrophe"  } }   
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \concat { one \varTwentyTwo three } }"}
   \markup {  \with-color #darkmagenta \concat { one \varTwentyTwo three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \concat { one \varMarkupArglist three } }"}
   \markup {  \with-color #darkmagenta \concat { one \varMarkupArglist three } }
   \markup { \vspace #0.5 " " }
  
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \concat { one \varStringsStrophe three } }"}
   \markup {  \with-color #darkmagenta \concat { one \varStringsStrophe three } }
   \markup { \vspace #0.5 " " }
  
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup {  \concat { one \varStringStrophe three } }"}
   \markup {  \with-color #darkmagenta \concat { one \varStringStrophe three } }
   \markup { \vspace #0.5 " " }
  

%  \dir-column %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      "\dir-column args (markup list)" }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \override #`(direction . ,UP) \dir-column { one \varTwentyTwo three }    } "}
   \markup { \with-color #darkmagenta \override #`(direction . ,UP) \dir-column { one \varTwentyTwo three }    } 
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \dir-column { one \varMarkupArglist three }    } "}
   \markup {  \with-color #darkmagenta \dir-column { one \varMarkupArglist three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \dir-column { one \varStringsStrophe three }    } "}
   \markup {  \with-color #darkmagenta \dir-column { one \varStringsStrophe three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \dir-column { one \varStringStrophe three }    } "}
   \markup {  \with-color #darkmagenta \dir-column { one \varStringStrophe three } }
   \markup { \vspace #0.5 " " }


%  \fill-line %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      "\fill-line args (markup list)" }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \fill-line { one \varTwentyTwo three }    } "}
   \markup { \with-color #darkmagenta  \fill-line { one \varTwentyTwo three }    } 
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \fill-line { one \varMarkupArglist three }    } "}
   \markup {  \with-color #darkmagenta \fill-line { one \varMarkupArglist three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \fill-line { one \varStringsStrophe three }    } "}
   \markup {  \with-color #darkmagenta \fill-line { one \varStringsStrophe three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta \fill-line { one \varStringStrophe three }    } "}
   \markup {  \with-color #darkmagenta \fill-line { one \varStringStrophe three } }
   \markup { \vspace #0.5 " " }


   
   
   
   
   
   
   \markup \fontsize #+3  \bold { \vspace #2 \hspace#-3      "Kommando" }
   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta { one \varTwentyTwo three }    } "}
   \markup { \with-color #darkmagenta { one \varTwentyTwo three }    } 
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta { one \varMarkupArglist three }    } "}
   \markup {  \with-color #darkmagenta { one \varMarkupArglist three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta { one \varStringsStrophe three }    } "}
   \markup {  \with-color #darkmagenta { one \varStringsStrophe three } }
   \markup { \vspace #0.5 " " }

   \markup \fontsize #-1 \italic {  \vspace #0.5 "\markup { \with-color #darkmagenta { one \varStringStrophe three }    } "}
   \markup {  \with-color #darkmagenta { one \varStringStrophe three } }
   \markup { \vspace #0.5 " " }
%}

}
