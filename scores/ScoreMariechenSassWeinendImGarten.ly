\version "2.18.2"

\include "../procs/procedures.ly"

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
   \override NoteHead.color = #color-notehead
   \§NotesSopran
}

Title = "Mariechen saß weinend im Garten"
Subtitle = ##f
Song =
<<
   \new Staff \with {
         %instrumentName = "Sopran"
         midiInstrument = \MidiVoice
      } {
      \new Voice = "Sopran" \§VoiceSopran
   } % staff
   \new Lyrics \lyricsto "Sopran" \§VerseOne
   \new Lyrics \lyricsto "Sopran" \§VerseTwo
   \new Lyrics \lyricsto "Sopran" \§VerseThree
   \new Lyrics \lyricsto "Sopran" \§VerseFour
>>

ScoreMariechenSassWeinendImGarten = \score {
   \Song
   \header {
      title = \Title
      subtitle = \Subtitle
   }
} % score

§VerseOne = ERROR
§VerseTwo = ERROR
§VerseThree = ERROR
§VerseFour = ERROR
§ScoreKey = ERROR
§ScoreMeter = ERROR
§NotesSopran = ERROR
§VoiceSopran = ERROR
