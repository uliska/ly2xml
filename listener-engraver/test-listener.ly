\version "2.16.2"

\include "xml-listener.ly"

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