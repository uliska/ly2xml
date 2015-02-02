
\version "2.19.16"
% automatically converted by musicxml2ly

%% additional definitions required by the score:
cresc = #(make-dynamic-script "cresc")

\header {
  encodingsoftware = "Frescobaldi 2.18-dev"
  encodingdate = "2015-02-02"
  title = "Export Demo (simple)"
}

PartPOneVoiceOne =  \relative g {
  \clef "treble" \time 4/4 | % 1
  g64 \mf ( d' g,32 ) d'16 ( -. d8 ) -. a' d g4 d | % 2
  g2 \> d \! | % 3
  g1 \p | % 4
  \time 8/4  d\breve | % 5
  \time 16/4  g,\longa | % 6
  \time 3/8  | % 6
  g8 \mp a d | % 7
  a8 c e | % 8
  b8 d f | % 9
  g,8 c es | \barNumberCheck #10
  \time 4/4  \grace { fis,8 ( a cis ) } d2 \times 4/5 {
    fis,8 a cis d e
  }
  | % 11
  \times 2/3  {
    fis,8 \< -- a -- cis --
  }
  \times 2/3  {
    fis,8 -_ a -_ cis -_
  }
  \times 2/3  {
    fis,8 -. a -. cis -.
  }
  \times 2/3  {
    fis,8 -! a -! cis \! -!
  }
  | % 12
  c1 \sfz \bar "|."
}

PartPTwoVoiceOne =  \relative g {
  \clef "alto" \time 4/4 | % 1
  g64 \mf ( d' g,32 ) d'16 ( -. d8 ) -. a' \clef "treble" d g4 d
  | % 2
  g2 \> d \! | % 3
  g1 \p | % 4
  \time 8/4  d\breve | % 5
  \clef "alto" \time 16/4 g,\longa | % 6
  \time 3/8  | % 6
  e8 \mp fis b | % 7
  fis8 a cis | % 8
  gis8 b d | % 9
  e,8 a c | \barNumberCheck #10
  \time 4/4  \grace { g,8 ( d' a' ) } <g, d' a'>4 r \times 4/5 {
    g8 ( d' a' e d )
  }
  | % 11
  \times 2/3  {
    fis,8 \< -. a -. cis -.
  }
  \times 2/3  {
    fis,8 -_ a -_ cis -_
  }
  \times 2/3  {
    fis,8 -> a -> cis ->
  }
  \times 2/3  {
    fis,8 a cis \!
  }
  | % 12
  c1 \sfz \bar "|."
}

PartPThreeVoiceOne =  \relative g, {
  \clef "bass" \time 4/4 | % 1
  g64 \mf ( d' g,32 ) d'16 ( -. d8 ) -. a' \clef "tenor" d g4 d | % 2
  g2 \> d \! | % 3
  g1 \p | % 4
  \time 8/4  d\breve | % 5
  \clef "bass" \time 16/4 g,\longa | % 6
  \time 3/8  | % 6
  cis,8 \mp dis gis | % 7
  dis8 fis ais | % 8
  eis8 gis b | % 9
  cis,8 fis a | \barNumberCheck #10
  \time 4/4  g,8 -. g -. g -. g -. b -. b -. b -. b -. | % 11
  \times 2/3  {
    g8 \cresc -. g -. g -.
  }
  \times 2/3  {
    g8 -_ g -_ g -_
  }
  \times 2/3  {
    g8 -> g -> g ->
  }
  \times 2/3  {
    g8 g g \!
  }
  | % 12
  c1 \sfz \bar "|."
}


% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Violin"
      \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "Viola"
      \context Staff <<
        \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "Cello"
      \context Staff <<
        \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
      >>
    >>

  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
  %  \midi {}
}

