\version "2.19.63"
§Chords = \§§Chords

§VoiceSopranoI = {
   \clef "treble"
   \§§ScoreKey \§§ScoreMeter
   #(if ShowTempo #{ \§§ScoreTempo #} )
   \dynamicUp
   \autoBeamOff
   \voicesopranoverrides
   <<
     \§§HiddenVoice
     \§§NotesSopranoI
   >>
}

§VoiceSopranoII = {
   \clef "treble"
   \§§ScoreKey \§§ScoreMeter
   \dynamicUp
   \autoBeamOff
   \voicesopranoverrides
   \§§NotesSopranoII
}
