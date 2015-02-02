\version "2.19.0"

\header {
  title = "Export Demo (simple)"
}

violin = \relative c'' {
  g,64\mf (d' g,32) d'16-. ( d8-. ) a' d g4 d |
  g2\> d\! |
  g1\p |
  \time 8/4 d \breve |
  \time 16/4 g, \longa |
  \time 3/8
  g8\mp a d |
  a c e |
  b d f |
  g, c es |
  \time 4/4
  \grace { fis, (a cis) } d2 
  \times 4/5 { fis,8 a cis d e } |
  \times 2/3 { fis,8-- \< a-- cis-- }
  \times 2/3 { fis,8-_ a-_ cis-_ }
  \times 2/3 { fis,8-. a-. cis-. }
  \times 2/3 { fis,8-! a-! cis\!-! } |
  c1\sfz \bar "|."

}

viola = \relative c'' {
  \clef "alto"
  g,64\mf (d' g,32) d'16-. ( d8-. ) a' \clef "treble" d g4 d |
  g2\> d\! |
  g1\p |
  \time 8/4 d \breve |
  \clef "alto"
  \time 16/4 g, \longa |
  \time 3/8
  e8\mp fis b |
  fis a cis |
  gis b d |
  e, a c |
  \time 4/4
  \grace { g, (d' a') } <g, d' a'>4 r
  \times 4/5 { g8 (d' a' e d) } |
  \times 2/3 { fis,8\<-. a-. cis-. }
  \times 2/3 { fis,8-_ a-_ cis-_ }
  \times 2/3 { fis,8-> a-> cis-> }
  \times 2/3 { fis,8-^ a-^ cis\!-^ } |
  c1\sfz \bar "|."

}

cello = \relative c' {
  \clef "bass" 
  g,64\mf (d' g,32) d'16-. ( d8-. ) a' \clef "tenor" d g4 d |
  g2\> d\! |
  g1\p |
  \time 8/4 d \breve |
  \clef "bass"
  \time 16/4 g, \longa |
  \time 3/8
  cis,8\mp dis gis |
  dis fis ais |
  eis gis b |
  cis, fis a |
  \time 4/4
  g,-. g-. g-. g-. b-. b-. b-. b-. |
  \times 2/3 { g8-. \cresc g-. g-. }
  \times 2/3 { g8-_ g-_ g-_ }
  \times 2/3 { g8-> g-> g-> }
  \times 2/3 { g8-^ g-^ g-^ \! } |
  c1\sfz \bar "|."

}

violinPart = \new Staff \with {
  instrumentName = "Violin"
  midiInstrument = "violin"
} \violin

violaPart = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
} \viola 

celloPart = \new Staff \with {
  instrumentName = "Cello"
  midiInstrument = "cello"
} \cello 

\score {
  <<
    \violinPart
    \violaPart
    \celloPart
  >>
  \layout { }
  %\midi {}
}
