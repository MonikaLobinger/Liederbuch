\version "2.18.2"

\include "../procs/procedures.ly"
\include "../procs/macros.ly"

§VerseOne = \lyricmode {
  \set stanza = "1."
   Ma- | rie- chen saß | wei- nend im | Gar- ten
   Im | Gra- se lag | schlum- mernd ihr | Kind
   Mit | ih- ren schwarz- | brau- nen | Lock- en
   spielt | lei- se der | A- bend- | wind
   \repeat volta 2 { Sie | saß so | still und | trau- rig
   So | ein- sam | gei- ster- | bleich
   Die | dunk- len | Wol- ken | zo- gen
   und | Wel- len | schlug der | Teich. }
}
§StropheOne = \markuplist {
   \vspace #0.4
   "Mariechen saß weinend im Garten"
   "Im Grase lag schlummernd ihr Kind"
   "Mit ihren schwarzbraunen Locken"
   "spielt leise der Abendwind"
   "||:Sie saß so still und traurig"
   "So einsam geisterbleich"
   "Die dunklen Wolken zogen"
   "Und Wellen schlug der Teich :||"
}
§VerseTwo = \lyricmode {
   \set stanza = "2."
   Der | Rei- her steigt | ü- ber die | Ber- ge,
   Die | Mö- ve zieht | stolz __ _ ein- her,
   In | der Luft singt | munter die | Ler- che,
   Es | wir- belt der | Sand am | Meer
   \repeat volta 2 { Und | über  Ma- | rie- chens | Wan- gen
   "ei- ne" | hei- ße | Trä- ne | rinnt,
   "Sie hält" | schluch- zend | in den | Ar- men
   ihr | fried- lich | schlum- mernd | Kind. }
}
§StropheTwo = \markuplist {
   \vspace #0.4
   "Der Reiher steigt über die Berge"
   "Die Möve zeiht stolz einher"
   "In der Luft singt munter die Lerche"
   "Es wirbelt der Sand am Meer"
   "||: Und über Mariechens Wangen"
   "eine heiße Träne rinnt,"
   "Sie hält schluchzend in den Armen"
   "ihr friedlich schlummernd Kind. :||"
}
§VerseThree = \lyricmode {
   \set  stanza = "3."
   Dein | Va- ter lebt | lus- tig in | Freu- den
   Gott | laß es ihm | wohl __  _ er- | gehn
   Er | denkt  __  _  nicht | an uns | bei-  de
   Will | dich  __  _ und | mich nicht | sehn
   \repeat volta 2 { Drum | wol- len | wir uns | bei- de
   hier | stür- zen | in den | See
   dort | sind wir | dann ge- | bor- gen
   vor | Kum- mer, | Ach und | Weh. }
}
§StropheThree = \markuplist {
   \vspace #0.4
   "Dein Vater lebt lustig in Freuden"
   "Gott laß es ihm wohl ergehn"
   "Er denkt nicht an uns beide"
   "Will dich und mich nicht sehn"
   "||: Dum wollen wir uns beide"
   "hier stürzen in den See"
   "dort sind wir dann geborgen"
   "vor Kummer, Ach und Weh. :||"
}
§VerseFour = \lyricmode {
   \set stanza = "4."
   Da | öff- net das | Kind- lein die | Au- gen
   Blickt | freund- lich sie | an __ _ und | lacht
   Die | Mut- ter wei- | net vor | Freu- de
   Und | drückt's an ihr | Herz mit | Macht
   \repeat volta 2 { Ja | Ja wir | wol- len | le- ben
   Wir | bei- de | du und | ich
   Dem | Va- ter | sei's ver- | ge- ben
   So | glück- lich | machst du | mich. }
}
§StropheFour = \markuplist {
   \vspace #0.4
   "Da öffnet das Kindlein die Augen"
   "Blickt freundlich sie an und lacht"
   "Die Mutter weinet vor Freude"
   "Und drückts an ihr Herz mit Macht"
   "||: Ja, ja wir wollen leben"
   "Wir beide du und ich"
   "dem Vater sei's vergeben"
   "so glücklich machst du mich. :||"
}

§ScoreKey = {
   \key c \major
}
§ScoreMeter = {
   \time 3/4 \numericTimeSignature
}

§NotesSopran = \relative c'' {
   \partial 4 g | e e e %{ ODER: g g g %} | a a a | g g r | r2 g4 | e e e | g g g | f2 r4 |
   r2 g4 | g g g | b2 b4 | a a2~ | a4 r a | f f f | a2 a4 | g2.~ | g4 r
   \repeat volta 2 { g | e2 g4 %{ ODER: g2 c4 %} | e'2 d4 | d4 c2~ | c4 r c | c2 c4 | b2 c4 |
   d2.~ | d4 r c | b2 a4 | a2 g4 | b b r | r2 a4 | g2 a4 | f2 g4 | e2
   }
}
§VoiceSopran = {
   \§ScoreKey \§ScoreMeter
   \dynamicUp
   \voicesopranoverrides
   \§NotesSopran
}

§LyricsOne =  \new Lyrics \lyricsto "Sopran" \§VerseOne
§LyricsTwo =  \new Lyrics \lyricsto "Sopran" \§VerseTwo
§LyricsThree =  \new Lyrics \lyricsto "Sopran" \§VerseThree
§LyricsFour =  \new Lyrics \lyricsto "Sopran" \§VerseFour

§LyricsTrailing = <<  \§LyricsTwo   \§LyricsThree   \§LyricsFour  >>
§VersesTrailing = <<  \§VerseTwo   \§VerseThree   \§VerseFour  >>

§Title = "Mariechen saß weinend im Garten"
§Subtitle = ##f
§MusicExpressionBook =
<<
   \new Staff \with { midiInstrument = \MidiVoice }
   <<
      { \new Voice = "Sopran" \§VoiceSopran   }
   >>
   \§LyricsOne
>>
§MusicExpressionSheet =
<<
   \new Staff \with { midiInstrument = \MidiVoice }
   <<
      { \new Voice = "Sopran" \§VoiceSopran   }
   >>
   \§LyricsOne
   \§LyricsTrailing
>>

ScoreMariechenSassWeinendImGartenBook = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionBook
} % score
ScoreMariechenSassWeinendImGartenSheet = \score {
   \header {
      title =    \§Title
      subtitle = \§Subtitle
   }
   \§MusicExpressionSheet
} % score
MarkupMariechenSassWeinendImGarten = \markup \on-the-fly #IsInBook { \column {
   \§StropheTwo
   \§StropheThree
   \§StropheFour
} }

§VerseOne = ##f
§StropheOne = ##f
§VerseTwo = ##f
§StropheTwo = ##f
§VerseThree = ##f
§StropheThree = ##f
§VerseFour = ##f
§StropheFour = ##f
§ScoreKey = ##f
§ScoreMeter = ##f
§NotesSopran = ##f
§VoiceSopran = ##f
§LyricsOne = ##f
§LyricsTwo = ##f
§LyricsThree = ##f
§LyricsFour = ##f
§LyricsTrailing = ##f
§VersesTrailing = ##f
§Title = ##f
§Subtitle = ##f
§MusicExpressionBook = ##f
§MusicExpressionSheet = ##f
