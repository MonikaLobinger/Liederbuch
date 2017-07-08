\version "2.19.63"

\include "../scores/Strophes.ily"
\include "../scores/Voices.ily"
§Title = \§§Title
§Subtitle = \§§Subtitle

§MusicExpressionBook =
<<
   #(if ShowChords #{
    \new ChordNames {
      \set chordChanges = ##t
      \§Chords
      }
    #} )
   \new Staff \with { midiInstrument = \MidiVoice }
   <<
      \new Voice = "SopranoI" \§VoiceSopranoI
      \new Voice = "SopranoII" \§VoiceSopranoII
      \§LyricsLeadingSI
   >>
>>

§MusicExpressionSheet =
<<
   #(if ShowChords #{
    \new ChordNames {
      \set chordChanges = ##t
      \§Chords
      }
    #} )
   \new Staff \with { midiInstrument = \MidiVoice }
   <<
      \new Voice = "SopranoI" \§VoiceSopranoI
      \new Voice = "SopranoII" \§VoiceSopranoII
      \§LyricsLeadingSI
      \§LyricsTrailingSI
   >>
>>
