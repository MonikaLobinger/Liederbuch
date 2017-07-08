\version "2.19.63"
% input\begin.ily 
% Hier stehen alle Variablen die ein Lied haben kann
% Jede Variablename beginnt mit zwei Paragraphenzeichen
% Die zwei Paragraphenzeichen gehören zum Namen
% Keine des Variablen muss für das Lied gesetzt werden
% Andere Variablen als diese werden nicht berücksichtigt

§§Title = ""                   %{ Song title                                                    %} 
§§Subtitle = ##f               %{ Subtitle for the song                                         %} 
§§ScoreKey = { \key c \major } %{ score key                                                     %} 
§§ScoreMeter = { \time 4/4 }   %{ score meter                                                   %} 
§§ScoreTempo = { }             %{ overall tempo                                                 %} 
§§HiddenVoice = { s1 }         %{ Hidden parallel voice for markings, breaking, ...             %} 
§§NotesSopranoI = { s1 }       %{ Notes for Soprano 1                                           %} 
§§NotesSopranoII = { s1 }      %{ Notes for Soprano 2                                           %} 
§§Chords = \chordmode {  }     %{ Guitar chords                                                 %} 
§§VerseOneSI = \lyricmode { }  %{ text for 1. verse to be written in staff for Soprano I and II %} 
§§VerseTwoSI = \lyricmode { }  %{ text for 2. verse to be written in staff for Soprano I and II %} 
§§VerseThrSI = \lyricmode { }  %{ text for 3. verse to be written in staff for Soprano I and II %} 
§§VerseFouSI = \lyricmode { }  %{ text for 4. verse to be written in staff for Soprano I and II %} 
§§VerseFivSI = \lyricmode { }  %{ text for 5. verse to be written in staff for Soprano I and II %} 
§§VerseSixSI = \lyricmode { }  %{ text for 6. verse to be written in staff for Soprano I and II %} 
§§VerseSevSI = \lyricmode { }  %{ text for 7. verse to be written in staff for Soprano I and II %} 
§§VerseEigSI = \lyricmode { }  %{ text for 8. verse to be written in staff for Soprano I and II %} 
§§VerseNinSI = \lyricmode { }  %{ text for 9. verse to be written in staff for Soprano I and II %} 
§§VerseTenSI = \lyricmode { }  %{ text for 10.verse to be written in staff for Soprano I and II %} 
§§VerseEleSI = \lyricmode { }  %{ text for 11.verse to be written in staff for Soprano I and II %} 
§§VerseTweSI = \lyricmode { }  %{ text for 12.verse to be written in staff for Soprano I and II %} 
§§VerseThiSI = \lyricmode { }  %{ text for 13.verse to be written in staff for Soprano I and II %} 
§§VerseFoTSI = \lyricmode { }  %{ text for 14.verse to be written in staff for Soprano I and II %} 
§§VerseFiTSI = \lyricmode { }  %{ text for 15.verse to be written in staff for Soprano I and II %} 
§§VerseSiTSI = \lyricmode { }  %{ text for 16.verse to be written in staff for Soprano I and II %} 
§§VerseSeTSI = \lyricmode { }  %{ text for 17.verse to be written in staff for Soprano I and II %} 
§§VerseEiTSI = \lyricmode { }  %{ text for 18.verse to be written in staff for Soprano I and II %} 
§§VerseNiTSI = \lyricmode { }  %{ text for 19.verse to be written in staff for Soprano I and II %} 
§§VerseTWeSI = \lyricmode { }  %{ text for 20.verse to be written in staff for Soprano I and II %} 
§§VerseTOnSI = \lyricmode { }  %{ text for 21.verse to be written in staff for Soprano I and II %} 
§§VerseTTwSI = \lyricmode { }  %{ text for 22.verse to be written in staff for Soprano I and II %} 
§§VerseTThSI = \lyricmode { }  %{ text for 23.verse to be written in staff for Soprano I and II %} 
§§VerseTFoSI = \lyricmode { }  %{ text for 24.verse to be written in staff for Soprano I and II %} 
§§VerseTFiSI = \lyricmode { }  %{ text for 25.verse to be written in staff for Soprano I and II %} 
§§VerseTSiSI = \lyricmode { }  %{ text for 26.verse to be written in staff for Soprano I and II %} 
§§VerseTSeSI = \lyricmode { }  %{ text for 27.verse to be written in staff for Soprano I and II %} 
§§VerseTEiSI = \lyricmode { }  %{ text for 28.verse to be written in staff for Soprano I and II %} 
§§VerseTNiSI = \lyricmode { }  %{ text for 29.verse to be written in staff for Soprano I and II %} 
§§StanzaOne = ""               %{ 1. verse to be written outside score                          %}  
§§StanzaTwo = ""               %{ 2. verse to be written outside score                          %}  
§§StanzaThr = ""               %{ 3. verse to be written outside score                          %}  
§§StanzaFou = ""               %{ 4. verse to be written outside score                          %}  
§§StanzaFiv = ""               %{ 5. verse to be written outside score                          %}  
§§StanzaSix = ""               %{ 6. verse to be written outside score                          %}  
§§StanzaSev = ""               %{ 7. verse to be written outside score                          %}  
§§StanzaEig = ""               %{ 8. verse to be written outside score                          %}  
§§StanzaNin = ""               %{ 9. verse to be written outside score                          %}  
§§StanzaTen = ""               %{ 10. verse to be written outside score                         %}  
§§StanzaEle = ""               %{ 11. verse to be written outside score                         %}  
§§StanzaTwe = ""               %{ 12. verse to be written outside score                         %}  
§§StanzaThi = ""               %{ 13. verse to be written outside score                         %}  
§§StanzaFoT = ""               %{ 14. verse to be written outside score                         %}  
§§StanzaFiT = ""               %{ 15. verse to be written outside score                         %}  
§§StanzaSiT = ""               %{ 16. verse to be written outside score                         %}  
§§StanzaSeT = ""               %{ 17. verse to be written outside score                         %}  
§§StanzaEiT = ""               %{ 18. verse to be written outside score                         %}  
§§StanzaNiT = ""               %{ 19. verse to be written outside score                         %}  
§§StanzaTWe = ""               %{ 20. verse to be written outside score                         %}  
§§StanzaTOn = ""               %{ 21. verse to be written outside score                         %}  
§§StanzaTTw = ""               %{ 22. verse to be written outside score                         %}  
§§StanzaTTh = ""               %{ 23. verse to be written outside score                         %}  
§§StanzaTFo = ""               %{ 24. verse to be written outside score                         %}  
§§StanzaTFi = ""               %{ 25. verse to be written outside score                         %}  
§§StanzaTSi = ""               %{ 26. verse to be written outside score                         %}  
§§StanzaTSe = ""               %{ 27. verse to be written outside score                         %}  
§§StanzaTEi = ""               %{ 28. verse to be written outside score                         %}  
§§StanzaTNi = ""               %{ 29. verse to be written outside score                         %}  
