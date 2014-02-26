
\version "2.19.0"
% automatically converted by musicxml2ly from /home/peter/Documents/export-demo-exp.xml

\header {
  encodingsoftware = "Frescobaldi 2.0.14-dev"
  encodingdate = "2014-02-25"
}

PartPOneVoiceNone =  \relative g {
  \clef "treble" \time 4/4 g64 d' g,32 d'16 d8 a' d g4 d | % 2
  g2 d | % 3
  g1 | % 4
  \time 8/4  d\breve | % 5
  \time 16/4  g,\longa | % 6
  \time 3/8  g8 a d | % 7
  a8 c e | % 8
  b8 d f | % 9
  g,8 c es | \barNumberCheck #10
  \time 4/4  \times 4/5 {
    \grace { fis,8*5/4 a cis d2*5/4 } fis,8 a cis d e
  }
  s2 | % 11
  \times 2/3  {
    fis,8 a cis
  }
  \times 2/3  {
    fis,8 a cis
  }
  \times 2/3  {
    fis,8 a cis
  }
  \times 2/3  {
    fis,8 a cis
  }
  | % 12
  c1 \bar "|."
}

PartPTwoVoiceNone =  \relative g {
  \clef "alto" \time 4/4 g64 d' g,32 d'16 d8 a' d g4 d | % 2
  g2 d | % 3
  g1 | % 4
  \time 8/4  d\breve | % 5
  \clef "alto" \time 16/4 g,\longa | % 6
  \time 3/8  e8 fis b | % 7
  fis8 a cis | % 8
  gis8 b d | % 9
  e,8 a c | \barNumberCheck #10
  \time 4/4  \grace { g,8 d' a' g, } d' a'4 r \times 4/5 {
    g8 d' a' e d
  }
  | % 11
  \times 2/3  {
    fis,8 a cis
  }
  \times 2/3  {
    fis,8 a cis
  }
  \times 2/3  {
    fis,8 a cis
  }
  \times 2/3  {
    fis,8 a cis
  }
  | % 12
  c1 \bar "|."
}

PartPThreeVoiceNone =  \relative g, {
  \clef "bass" \time 4/4 g64 d' g,32 d'16 d8 a' d g4 d | % 2
  g2 d | % 3
  g1 | % 4
  \time 8/4  d\breve | % 5
  \clef "bass" \time 16/4 g,\longa | % 6
  \time 3/8  cis,8 dis gis | % 7
  dis8 fis ais | % 8
  eis8 gis b | % 9
  cis,8 fis a | \barNumberCheck #10
  \time 4/4  g,8 g g g b b b b | % 11
  \times 2/3  {
    g8 g g
  }
  \times 2/3  {
    g8 g g
  }
  \times 2/3  {
    g8 g g
  }
  \times 2/3  {
    g8 g g
  }
  | % 12
  c1 \bar "|."
}


% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "test"
      \context Staff <<
        \context Voice = "PartPOneVoiceNone" { \PartPOneVoiceNone }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "test"
      \context Staff <<
        \context Voice = "PartPTwoVoiceNone" { \PartPTwoVoiceNone }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "test"
      \context Staff <<
        \context Voice = "PartPThreeVoiceNone" { \PartPThreeVoiceNone }
      >>
    >>

  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
  %  \midi {}
}

