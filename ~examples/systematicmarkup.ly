\version "2.19.63"


#(define (getPosition  charli char pos) 
    (cond 
        ((null? charli) 0) 
        ((char=? char (car charli)) pos) 
        (#t (getPosition (cdr charli) char ( +  1 pos)) )
    )   
 )
#(define (strchr str char)   
    (getPosition (string->list str) char 1)
 )


#(define (nl2_2nl arg)
   (define splitString (string-split arg #\newline))
   (define result (string) )     
   (define newlinePos 0)
   (define str2nl (string #\newline  #\newline))
   (for-each (lambda (line)
                ;\justify-string and \wordwrap-string already skip newlines more than 2
                ;(set! newlinePos (strchr line #\newline))
                ;(if (!= 0 newlinePos)
                   (set! result (string-append  result line str2nl) )
                ;)
              )
              splitString  
   )
   result
 )


#(define-markup-command  (stanza layout props strophe)     (markup?)   "Comment"
   ;(display strophe)
   (interpret-markup layout props `(,fontsize-markup -2 ,strophe))
)

#(define-markup-list-command  (paragraph layout props lines)    (markup-list?) "Comment"
   ;(display lines)  
   (interpret-markup-list layout props
     #{ \markuplist \justified-lines { 
            \hspace #2 #lines } 
     #}
   )  
)

varWort = wort
varString = "string"
varNumber = #2

varStropheA = 
    "1. Zehn kleine Kinderlein, die schliefen in der Scheun, 
   das eine ging im Heu verlorn, da waren's nur noch neun. 
   Ein klein, zwei klein, drei klein, vier klein, fünf Klein Kinderlein
   lange lange Zeile sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"

varStropheB = 
    "2. Neun kleine Kinderlein, die gingen auf die Jagd,
    da hat sich eines totgeschoss'n, da waren's nur noch acht.
    Ein klein , zwei klien, drei klein, vier klein, fünf Klein Kinderlein
    lange lange Zeile sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"
    
varStropheC = 
    "5. Sechs kleine Kinderlein, die liefen in die Sümpf',
    das eine ist drin stecken 'blieben, da waren's nur noch fünf.
    Ein klein , zwei klien, drei klein, vier klein, fünf Klein Kinderlein
    lange lange Zeile sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"

varStropheD = 
    "6. Fünf kleine Kinderlein, die tranken gerne Bier,
    da hat sich eines totgetrunk'n, da waren's nur noch vier.
    Ein klein , zwei klien, drei klein, vier klein, fünf Klein Kinderlein
    lange lange Zeile sechs klein, sieb'n klein, acht klein, neun klein, zehn klein Kinderlein"

 varStropheE = ""
 varStropheF = ""
 varStropheG = ""
 
 §§StanzaOne =
    "1. Bunt sind schon die Wälder,
    gelb die Soppelfelder
    und der Herbst beginnt.
    Rote Blätter fallen
    graue Nebel wallen
    kühler weht der Wind."
§§StanzaTwo =
  "2. Wie die volle Traube
  aus der Rebenlaube
  purpurfarbig strahlt!
  Am Geländer reifen
  Pfirsiche, mit Streifen
  rot und weiß bemalt."
§§StanzaThr =
  "3. Flinke Träger springen
  und die Mädchen singen,
  alles jubelt froh.
  Bunte Bänder schweben
  zwischen hohen Reben
  auf dem Hut von Stroh."
§§StanzaFou =
  "4. Geige tönt und Flöte
  bei der Abendröte
  und im Morgenglanz.
  Junge Winzerinnen
  winken und beginnen
  frohen Erntetanz"
stanzaOneMarkup = \markup  {  \wordwrap-string \§§StanzaOne }
stanzaTwoMarkup = \markup  {  \wordwrap-string \§§StanzaTwo }
stanzaThrMarkup = \markup  {  \wordwrap-string \§§StanzaThr }
stanzaFouMarkup = \markup  {  \wordwrap-string \§§StanzaFou }

stanzaOneMarkup = \markup \stanza {  \wordwrap-string #(nl2_2nl §§StanzaOne) }
stanzaTwoMarkup = \markup \stanza {  \wordwrap-string #(nl2_2nl §§StanzaTwo) }
stanzaThrMarkup = \markup \stanza {  \wordwrap-string #(nl2_2nl §§StanzaThr) }
stanzaFouMarkup = \markup \stanza {  \wordwrap-string #(nl2_2nl §§StanzaFou) }

trailingStanzas = \markup { \column { \stanzaOneMarkup \stanzaTwoMarkup  \stanzaThrMarkup \stanzaFouMarkup } }

trailingStanzasI = \markup { \column { \stanzaOneMarkup \stanzaTwoMarkup   } }
trailingStanzasII = \markup { \column { \stanzaThrMarkup \stanzaFouMarkup } }



% Makro \markup arg: Zeichenfolge (auch Ziffern) String, auch mehrere davon als Argumentfolge { arg1 arg2 arg3 ... }
% Makro Kann vieles  als Argument haben, definitiv aber kein (markup) und keine Zahl
% Makro \markup gibt alles linear horizontal aus
% Makro \markup res: (markup)
\markup WORT
\markup 2.3 
\markup "STRING"
\markup \varWort
\markup \varString
\markup { WORT 2.3 "STRING" \varWort \varString }

% Command \justify-string arg: (string)
% Command \justify-string Bricht arg auf Vorgegebene Zeilenlänger (line-width) runter und macht graden rechten Rand
% Command \justify-string res: (markup)
\markup \override-lines #'(line-width . 40) \with-color #darkmagenta { \justify-string #"Lorem ipsum dolor sit amet, consectetur
      adipisicing elit, sed do eiusmod tempor incididunt ut labore
      et dolore magna aliqua.\n
      Ut enim ad minim veniam, quis nostrud exercitation ullamco
      laboris nisi ut aliquip ex ea commodo consequat.\n
      Excepteur sint occaecat cupidatat non proident, sunt in culpa
      qui officia deserunt mollit anim id est laborum" }

% Command \wordwrap-string arg: (string)
% Command \wordwrap-string Bricht arg auf Vorgegebene Zeilenlänger (line-width) runter 
% Command \wordwrap-string res: (markup)
\markup \override-lines #'(line-width . 45)  { \wordwrap-string #"Lorem ipsum dolor sit amet, consectetur
      adipisicing elit, sed do eiusmod tempor incididunt ut labore
      et dolore magna aliqua.\n
      Ut enim ad minim veniam, quis nostrud exercitation ullamco
      laboris nisi ut aliquip ex ea commodo consequat.\n
      Excepteur sint occaecat cupidatat non proident, sunt in culpa
      qui officia deserunt mollit anim id est laborum" }

% SCMProc nl2_2nl arg: (string)
% SCMProc nl2_2nl ersetzt jedes NEWLINE im String durch zwei NEWLINE 
% SCMProc nl2_2nl res: (string)
 \markup \with-color #darkmagenta { \justify-string #(nl2_2nl "abc def jaja\n\nabc def jaja") }
 
% Command \stanza arg: (markup)
% Command \stanza User defined markup-command, setzt Eigeneschaften für Stanza (Font und Texthöhe)
% Command \stanza res: WENN ICH DAS WÜSSTE
\markup \stanza WORT
\markup \stanza 2.3 
\markup \stanza "STRING"
\markup \stanza \varWort
\markup \stanza \varString
\markup \stanza { WORT 2.3 "STRING" \varWort \varString }
\markup \with-color #darkmagenta \stanza {
    "1. Bunt sind schon die Wälder,"    "gelb die Soppelfelder"
    "und der Herbst beginnt."    "Rote Blätter fallen"
    "graue Nebel wallen"    "kühler weht der Wind."
}
\markup \stanza  { \justify-string #(nl2_2nl "abc def jaja\n\nabc def jaja") }
\markup \override-lines #'(line-width . 40) \with-color #darkmagenta \stanza { \wordwrap-string #(nl2_2nl
    "1. Bunt sind schon die Wälder,  gelb die Soppelfelder   und der Herbst beginnt.    
     Rote Blätter fallen  graue Nebel wallen     kühler weht der Wind.")
}

\markup \override-lines #'(line-width . 25) \stanza { \justify-string #(nl2_2nl
    "1. Bunt sind schon die Wälder,  gelb die Soppelfelder   und der Herbst beginnt.    
     Rote Blätter fallen  graue Nebel wallen     kühler weht der Wind.")
} 
stanzaTrailing = #(string-append (nl2_2nl varStropheA) (nl2_2nl varStropheB) (nl2_2nl varStropheC) (nl2_2nl varStropheD) 
                     (nl2_2nl varStropheE) (nl2_2nl varStropheF) (nl2_2nl varStropheG)
                  )

\markup  {  
   \column { 
      \stanza \with-color #darkmagenta  \override-lines #'(line-width . 25)  { \vspace #.6 \justify-string #(nl2_2nl varStropheA) }
      \stanza \with-color #darkmagenta \override-lines #'(line-width . 25)  { \vspace #.6 \justify-string #(nl2_2nl varStropheB) }
   } 
   \column { "    " }
   \column { 
      \stanza \with-color #darkmagenta  \override-lines #'(line-width . 25)  { \vspace #.6 \justify-string #(nl2_2nl varStropheA) }
      \stanza \with-color #darkmagenta \override-lines #'(line-width . 25)  { \vspace #.6 \justify-string #(nl2_2nl varStropheB) }
   } 
}

\markup    
     \stanza  \with-color #blue \override-lines #'(line-width . 70)  { \justify-string \stanzaTrailing }
\markup WEITER
 
% DIREKT VERSCHACTELTES \markup geht nicht:
%\markup { "foo" { \markup \italic "bar" } "buzz" }
%Aber mit Variablen gehts
it-mrkp = \markup \italic "bar"
\markup { "foo" \it-mrkp "buzz" }

%\markup \override-lines #'(line-width . 80) { \trailingStanzas }

\markup \override-lines #'(line-width . 50) {
  \column { \trailingStanzasI }
  \column { "    " }
  \column { \trailingStanzasII }
}
