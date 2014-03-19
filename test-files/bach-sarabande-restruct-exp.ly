
\version "2.19.0"
% automatically converted by musicxml2ly from /home/peter/lilypond-xtra/ly2xml/test-files/bach-sarabande-restruct.xml

\header {
  encodingsoftware = "Frescobaldi 2.0.14"
  encodingdate = "2014-03-19"
}

PartPOneVoiceOne =  \relative d {
  \clef "bass" \time 3/4 \repeat volta 2 {
    d8. e16 e4. d16 e | % 2
    <d, a' f'>4. e'8 d c | % 3
    bes8 g' f e16 f g a bes d, | % 4
    cis4. b8 a g | % 5
    d'8. e16 e4. d16 e | % 6
    f4. d8 e f | % 7
    g8 bes16 a c bes a g d'8 f, | % 8
    e4. d8 c bes | % 9
    f'8 g16 a a4. g16 f | \barNumberCheck #10
    g8 a16 bes bes4. c16 d | % 11
    e,8 f c, g' f' e | % 12
    f4 f,2
  }
  \repeat volta 2 {
    | % 13
    a'4 a4. bes8 | % 14
    c8 bes16 a fis8. es16 d8 c | % 15
    bes8 g' a, fis' es' d | % 16
    <bes d, g,>4. a8 g f | % 17
    e8 bes a f' g a | % 18
    d,8 as g es' f g | % 19
    cis,8 bes' a g16 f e8 f16 d | \barNumberCheck #20
    cis8 e16 a a,8. g'16 f8 e | % 21
    d8 e16 f f4. e16 d | % 22
    e8 f16 g g4. a16 bes | % 23
    a8 cis16 d d,8 e16 f32 g f8 e16 d | % 24
    d4 d,16 a' b cis d e f g | % 25
    a16 b c b c4. b16 a | % 26
    b16 cis d cis d4. e16 f | % 27
    d16 cis d f, a,8 e' d' cis | % 28
    d4 d,,2
  }
}

PartPOneVoiceTwo =  \relative d {
  \clef "bass" \time 3/4 \repeat volta 2 {
    d4 a2 s4*9 | % 5
    <a f>4 a2 | % 6
    <a d,>4. s8*9 | % 8
    <c, g'>4 s2 | % 9
    a'4 <bes d>4. r8 bes4 <g f'>2 s1.
  }
  \repeat volta 2 {
    | % 13
    f'8 es es4. r8 | % 14
    d4 s1*5 | % 21
    bes4 g2 | % 22
    g4 <bes cis,>4. s8 | % 23
    <d a f>8 r r g, a4 s2. | % 25
    f'4 fis4. s8 | % 26
    <d g,>4 gis4. s8*13
  }
}


% The score definition
\score {
  <<
    \new Staff <<
      \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
        \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
      >>
    >>

  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
  %  \midi {}
}

