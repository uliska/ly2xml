
\version "2.19.0"
% automatically converted by musicxml2ly from /home/peter/lilypond-xtra/ly2xml/test-files/bach-sarabande-exp.xml

\header {
  encodingsoftware = "Frescobaldi 2.0.15"
  encodingdate = "2014-03-10"
}

PartPOneVoiceNone =  \relative d {
  \clef "treble" \time 4/4 d4 a2 d, a' f'4. e'8 d c | % 2
  bes8 g' f e16 f g a bes d, | % 3
  cis4. b8 a g | % 5
  d'8. e16 e4. d16 e s4 | % 6
  f4. d8 e f s4 | % 7
  a,8 f4 a2 a d,4. | % 8
  g'8 bes16 a c bes a g d'8 f, | % 9
  e4. c,4 g' d'8 c bes | \barNumberCheck #10
  f'8 g16 a a4. g16 f | % 11
  g8 a16 bes bes4. c16 d | % 12
  <a, bes>4 d4. r8 bes4 g f'2 | % 13
  e'8 f c, g' f' e | % 14
  f4 f,2 s | % 16
  a'4 a4. bes8 c bes16 a | % 17
  f8 es es4. r8 d4 fis8. es16 d8 c | % 18
  bes8 g' a, fis' es' d | % 19
  bes8 d, g,4. a8 g f | \barNumberCheck #20
  e8 bes a f' g a | % 21
  d,8 as g es' f g s4 | % 22
  cis,8 bes' a g16 f e8 f16 d s4 | % 23
  cis8 e16 a a,8. g'16 f8 e s4*5 | % 25
  d8 e16 f f4. e16 d s4 | % 26
  e8 f16 g g4. a16 bes s4 | % 27
  a8 cis16 d d,8 e16 f32 g f8 e16 d s4 | % 28
  bes4 g2 s4 | % 29
  g4 bes cis,4. s8 | \barNumberCheck #30
  d8 a f r r g, a4 | % 31
  d4 d,16 a' b cis d e f g s4*5 | % 33
  a16 b c b c4. b16 a s4 | % 34
  b16 cis d cis d4. e16 f s4*5 | % 36
  f,4 fis4. s | % 37
  d8 g,4 gis4. d'16 cis d f, a,8 e' d' cis | % 38
  d4 d,,2
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

  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
  %  \midi {}
}

