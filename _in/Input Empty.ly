\version "2.19.63"
% Bitte die Lieddatei nach dem Lied benennen, mit Input vorne im Namen:
% Lied "Alle meine Entchen" bekommt eine Datei "Input Alle meine Entchen.ly"
% Lied "Ich wollt ich wär ein Huhn" bekommt eine Datei "Input Ich wollt ich waer ein Huhn.ly"
% Im Dateinamen Umlaute und Scharf-s ersetzten (durch ae/oe/ue und ss)
% Es ist egal, wie lange der Dateiname wird
% In den Strophen dürfen Umlaute und Scharf-s schon bentutzt werden.
%
% Die Strophen sollten zweimal geschrieben werden. 
% Einmal als Verse die direkt zur  Notenstimme geschrieben werden und auch
% als Stanzas, die unter dem gesamten Lied angezeigt wreden
% Je nach Ausgabe werden sie unterschiedlich kombiniert
% Ein Buch nimmt z.B. einen Vers und alle Stanzas bis auf den ersten
% Ein anderes Buch zeigt vielleicht nur die Stanzas an
% Ein Liedblatt könnte alle Verse nehmen und kein Stanza
% Ein anderes Liedblatt nimmt die ersten drei Verse und die übrigen als Stanzas

% begin.ily enthält alle Variablen, die man benutzen kann
\include "begin.ily"

% Ab hier kann man was löschen, was man für ein Lied nicht braucht
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

§§Title = "Title"
§§Subtitle = "Subtitle"

§§ScoreKey =   { \key c \major }
§§ScoreMeter = { \time 4/4 }
§§ScoreTempo = { \tempo 4 = 80 }

§§HiddenVoice = {
  s1 | \breathe s1 |
}

§§NotesSopranoI = \relative c' {
  c4 c e c | c'4 c a c |
}

§§Chords = \chordmode {
  c1 c1
}

§§VerseOneSI = \lyricmode {
  \set stanza = "1."
  tra -- la -- la _ | la -- la -- la _ |
}

§§StanzaOne =
  "1. tralala
  lalala"

§§VerseTwoSI = \lyricmode {
  \set stanza = "2."
  ho -- ha -- ho -- hi | ho -- ho -- he _ |
}
§§StanzaTwo =
  "2. hohahohi
  hohohe"


§§VerseThrSI = \lyricmode {
  \set stanza = "3."
  du -- du -- du _ | da -- da -- da _ |
}
§§StanzaThr =
  "4. dududu
  dadada"


% §§VerseFouSI =
% §§VerseFivSI =
% §§VerseSixSI =
% §§VerseSevSI =
% §§VerseEigSI =
% §§VerseNinSI =
% §§VerseTenSI =
% §§VerseEleSI =
% §§VerseTweSI =
% §§VerseThiSI =
% §§VerseFoTSI =
% §§VerseFiTSI =
% §§VerseSiTSI =
% §§VerseSeTSI =
% §§VerseEiTSI =
% §§VerseNiTSI =
% §§VerseTWeSI =
% §§VerseTOnSI =
% §§VerseTTwSI =
% §§VerseTThSI =
% §§VerseTFoSI =
% §§VerseTFiSI =
% §§VerseTSiSI =
% §§VerseTSeSI =
% §§VerseTEiSI =
% §§VerseTNiSI =


% §§StanzaFou =
% §§StanzaFiv =
% §§StanzaSix =
% §§StanzaSev =
% §§StanzaEig =
% §§StanzaNin =
% §§StanzaTen =
% §§StanzaEle =
% §§StanzaTwe =
% §§StanzaThi =
% §§StanzaFoT =
% §§StanzaFiT =
% §§StanzaSiT =
% §§StanzaSeT =
% §§StanzaEiT =
% §§StanzaNiT =
% §§StanzaTWe =
% §§StanzaTOn =
% §§StanzaTTw =
% §§StanzaTTh =
% §§StanzaTFo =
% §§StanzaTFi =
% §§StanzaTSi =
% §§StanzaTSe =
% §§StanzaTEi =
% §§StanzaTNi =

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% end.ily liefert die Testausgabe
\include "end.ily"
