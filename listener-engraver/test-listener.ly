\version "2.16.2"

\include "event-listener.ly"

music  = \relative c' 
{
  c d e f g
}


\score {
  <<
    \new Staff \music
    \new Staff {
      \clef bass
      \transpose c d, \music
    }
  >>
}