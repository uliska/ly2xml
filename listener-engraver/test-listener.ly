\version "2.17.22"

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