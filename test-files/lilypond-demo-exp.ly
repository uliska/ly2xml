
\version "2.19.0"
% automatically converted by musicxml2ly from /home/peter/lilypond-xtra/ly2xml/test-files/lilypond-demo-exp.xml

\header {
  encodingsoftware = "Frescobaldi 2.0.15"
  encodingdate = "2014-03-10"
}

\layout {
  \context {
    \Score
    skipBars = ##t
  }
}
PartPOneVoiceNone =  \relative d {
  \clef "treble" \time 4/4 d16 s16*15 | % 2
  g4. b,8 r r s16 r8 \grace { bes' } bes c a c r f c' | % 3
  r8 dis e r c c | % 4
  f,4. g8 r g | % 5
  c,8 c,4. e4 e,4. | % 6
  a,4. d4 d,4. | % 7
  g,8 r r g16 r
}

PartPTwoVoiceNone =  \relative c'' {
  \clef "treble" \time 6/8 s2 R2. r4 r8 c4 g8 | % 2
  f16 e4 c8
}

PartPThreeVoiceNone =  \relative g'' {
  \clef "treble" \time 4/4 g16 fis a g fis g f e d c
  b16 a s4 | % 2
  g16 e8 es fis a d e bes' c e c' r r | % 3
  r8 c' e, f r a | % 4
  r8 fis g s16*5 | % 5
  g,,,16 fis a g fis g f e d c b
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

