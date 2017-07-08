\version "2.19.63"

\include "../layout/midi.ily"
  % MidiVoice
\include "../layout/sheetA4.ily"
  % paperA4.ily: IsAFive IsAFour set-paper-size paper.top-margin paper.bottom-margin paper.ragged-bottom
  % sheetA4.ily: paper.layout-set-staff-size
  % sheet.ily:   InBook StrophesAsLyrics
  % system.ily:  fontNameLyrics fontSizeLyrics
  % layout.ily:  paper.two-sided ChordNames.font-size
  % layout.ily:  Score.MetronomMarx.font-size Score.BarNumber.offset
  % layout.ily:  Lyrics.font-size Lyrics.font-name Lyrics.VerticalAxisGroup.staff-affinity
  % layout.ily:  paper.system-system-spacing.padding
  % sheetA4.ily: paper.left-margin paper.right.margin paper.indent layout.NoteHead.font-size
ShowTempo  = ##f
ShowChords = ##t
\include "../scores/Score Empty.ily"

\layout {
   \bookOutputName  "../_out/Empty"
}

\ScoreSheetEmpty
\StanzaTrailingEmptyII
\pieceseparator
