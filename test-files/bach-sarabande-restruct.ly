% ****************************************************************
% Version adapted for demo of the MusicXML export
% ****************************************************************
\version "2.19.0"


\header {
  title = "Solo Cello Suite II"
  piece ="Sarabande"
  composer = "Johann Sebastian Bach (1685-1750)"
  editor = "August Wenzinger"
  source= "Bärenreiter Urtext"
}


sarabandeA =  \relative c {
  \override Staff.NoteCollision.merge-differently-dotted = ##t
  \repeat "volta" 2 {
    <<
      { d8. e16 e4.\trill d16 e } \\
      { d4 a2 }
    >>
    <d, a' f'>4.  e'8[ d c] |
    bes[ g'] f[
    e16(f] g[ a bes d,)] |
    cis4.\trill b8[ a g] |
    <<
      {
        d'8. e16 e4.\trill d16 e |
        f4. d8[ e f]
      }
      \\
      { <a, f>4 a2 | <a d,>4.  }
    >> 
    %%7
    g'8 bes16(a) c(bes) a(g) d'8 f, |
    <<
    { e4.\trill d8[ c bes] }
    \\ { <c, g'>4 s2 }
  >>
    %%9
    <<
      {
        f'8 g16(a) a4. g16(f)  |
        g8 a16(bes) bes4. c16(d)
      }
      \\
      { a,4 <bes d >4. r8 bes4 <g f'>2  }
    >>
    %% 11
    e'8[ f] c,[ g'] f'[ e] |
    f4 f,2
  }
  \repeat "volta" 2 {
    <<
    {
      a'4 a4.\trill bes8 |
      c bes16 a fis8.\trill es16 d8 c 
    } \\
    { f8[ es] es4. r8 | d4 s2 }
  >>
    bes8 [ g']
    a,[ fis']
    es'[ d] |

    %%16
    < bes d, g, >4.\trill a8[ g f!] |
    e bes a f' g a |
    d, as g es' f g |
    cis,[ bes'] a[ g16 f] e!8[ f16 d] |
    cis8 e16 a a,8. g'16 f8(e) |

    %%21
    <<
      {
        d e16(f) f4. e16(d) |
        e8 f16(g) g4. a16(bes) |
        a8 cis16 d d,8 e16 f32 g f8\trill e16(d)
      } \\
      {
        bes4 g2 |
        g4 <bes cis,>4. s8 |
        <d a f>8 r r g, a4
      }
    >>
    \stemUp
    d4 d,16 a'( b cis d e f g) |
    \stemNeutral
    %%25
    <<
      {
        a16(b c b) c4. b16(a) |
        b cis d cis d4. e16(f) 
      }
      \\
      {
        f,4 fis4. s8 |
        <d g,>4 gis4.
      }
    >>
    d'16(cis  d) f,
    a,8[ e']
    d'[ cis] |
    d4
    d,,2
  }
}


sarabandeCelloGlobal = {
  \time 3/4
  \key d \minor
  \clef "bass"
}



\score{
  \new Staff {
    \sarabandeCelloGlobal
    \sarabandeA
  }
}
