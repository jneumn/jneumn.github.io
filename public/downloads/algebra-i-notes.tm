<TeXmacs|2.1.4>

<style|<tuple|generic|german|number-long-article|number-europe>>

<\body>
  <\hide-preamble>
    <assign|render-theorem|<\macro|which|body>
      <render-enunciation|<theorem-name|<arg|which><theorem-sep>>|<arg|body>>
    </macro>>

    \ <assign|render-proof|<\macro|name|cont>
      <\surround|<no-indent><with|font-shape|italic|<proof-text>.
      >|<right-flush><active*|<math|<qed>>>>
        <arg|cont>
      </surround>
    </macro>>

    <assign|notes-headers-on|false>

    <assign|page-odd-header|> <assign|page-even-header|>

    <assign|header-title|<macro|name|>> <assign|header-author|<macro|name|>>

    <assign|notes-header|<macro|name|<wide-std-underlined|<with|font-shape|italic|<arg|name>><htab|5mm>Algebra
    I>>>

    <assign|header-primary|<macro|name|nr|what|<if|<value|notes-headers-on>|<assign|page-odd-header|<notes-header|<arg|name>>><assign|page-even-header|<notes-header|<arg|name>>>>>>

    <assign|header-secondary|<macro|name|nr|what|>>
  </hide-preamble>

  <doc-data|<doc-title|Algebra I>|<doc-author|<author-data|<author-name|Jakob
  Neumann>|<author-misc|>|<\author-affiliation>
    Basierend auf der gleichnamigen Vorlesung von <name|Harald Grobner>

    \;

    Wintersemester 2025/26
  </author-affiliation>|<author-misc|<em|Das Skriptum wurde auÿerhalb der
  Vorlesung selbstständig zusammengestellt und um zusätzliche Erklärungen,
  Klarstellungen sowie ergänzendes Material aus eigenem Interesse erweitert.
  Etwaige Fehler oder Fehlinterpretationen gehen vollständig auf mich
  zurück.>>>>>

  <set-this-page-header|><new-page><assign|notes-headers-on|true>

  <\table-of-contents|toc>
    <vspace*|2fn><with|font-series|bold|math-font-series|bold|font-size|1.19|1<space|2spc>Ringe
    und Arithmetik> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|1fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Die
    Arithmetik der ganzen Zahlen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Grundbegriffe>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc>Noethersche,
    faktorielle und euklidische Ringe> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc>Quotientenringe
    und Homomorphismen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc>Polynomringe>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Quadratische
    Zahlkörper und Ganzheitsringe> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Lokalisierungen
    und Quotientenkörper> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|2fn><with|font-series|bold|math-font-series|bold|font-size|1.19|2<space|2spc>Körper>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|1fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Algebraische
    Körpererweiterungen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Galoistheorie>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|2fn><with|font-series|bold|math-font-series|bold|font-size|1.19|3<space|2spc>Gruppen>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|1fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Untergruppen
    und Quotientengruppen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Endliche
    Gruppen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <vspace*|2fn><with|font-series|bold|math-font-series|bold|font-size|1.19|4<space|2spc>Moduln>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|1fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Struktursatz>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Anwendungen
    des Struktursatzes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Literaturverzeichnis>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18><vspace|0.5fn>
  </table-of-contents>

  <new-page>

  <chapter|Ringe und Arithmetik>

  <section|Die Arithmetik der ganzen Zahlen>

  <\definition>
    Seien <math|a,b\<in\><with|font|Bbb|Z>> ganze Zahlen. Dann ist <math|a>
    ein <em|Teiler> von <math|b>, falls eine ganze Zahl
    <math|k\<in\><with|font|Bbb|Z>> existiert, sodass <math|a k=b>. Wir
    schreiben auÿerdem <math|a \<mid\>b>, in Worten, \R<math|a> teilt
    <math|b>\P.
  </definition>

  <\proposition>
    Die Teilerrelation <math|\<mid\>> ist auf den ganzen Zahlen eine
    Quasiordnung.
  </proposition>

  <\proof>
    Seien <math|a,b,c\<in\><with|font|Bbb|Z>> ganze Zahlen. Offenbar gilt,
    dass <math|a \<mid\>a>, also ist die Teilerrelation reflexiv. Falls
    <math|a \<mid\>b> und <math|b \<mid\>c>, dann gibt es
    <math|k<rsub|1>,k<rsub|2>\<in\><with|font|Bbb|Z>> mit <math|a
    k<rsub|1>=b> und <math|b k<rsub|2>=c>. Es folgt, dass <math|c=b
    k<rsub|2>=<around*|(|a k<rsub|1>|)> k<rsub|2>=a <around*|(|k<rsub|1>
    k<rsub|2>|)>>, i.e. <math|a \<mid\>c>. Somit ist die Teilerrelation
    reflexiv und transitiv, damit eine Quasiordnung.
  </proof>

  Es sei angemerkt, dass die Teilerrelation auf den natürlichen Zahlen sogar
  eine Halbordnung ist, was bei den ganzen Zahlen nicht der Fall ist. Sind
  <math|a> und <math|b> ganze Zahlen mit <math|a \<mid\>b> und <math|b
  \<mid\>a> folgt nämlich nicht unbedingt, dass <math|a=b>. Allerdings gilt
  schon, dass <math|<around*|\||a|\|>=<around*|\||b|\|>>. Wir halten dies
  fest:

  <\lemma>
    <label|teilbarkeit-lemma>Seien <math|a,b\<in\><with|font|Bbb|Z>>. Dann
    gilt:

    <\indent>
      (1) Die einzige ganze Zahl, die von <math|0> geteilt wird, ist <math|0>
      selbst.

      (2) Ist <math|a> ein Teiler von <math|b>, dann gilt
      <math|<around*|\||a|\|>\<leq\><around*|\||b|\|>>.

      (3) Falls <math|a \<mid\>b> und <math|b \<mid\>a>, so folgt
      <math|<around*|\||a|\|>=<around*|\||b|\|>>.

      (4) Falls <math|a \<mid\>1>, folgt dass <math|<around*|\||a|\|>=1>.
    </indent>
  </lemma>

  <\proof>
    (1) Diese Aussage folgt sofort.

    (2) Falls <math|a \<mid\>b>, existiert <math|k\<in\><with|font|Bbb|Z>>
    mit <math|a k=b>, sodass <math|<around*|\||a|\|>
    <around*|\||k|\|>=<around*|\||a k|\|>=<around*|\||b|\|>>, also
    <math|<around*|\||a|\|>\<leq\><around*|\||b|\|>>.

    (3) Wir wenden (2) an, um einerseits <math|<around*|\||a|\|>\<leq\><around*|\||b|\|>>
    zu erhalten und andererseits <math|<around*|\||b|\|>\<leq\><around*|\||a|\|>>.
    Daraus folgt nun, dass <math|<around*|\||a|\|>=<around*|\||b|\|>>.

    (4) Da offenbar <math|1 \<mid\>a> gilt, folgt aus (3), dass auch
    <math|<around*|\||a|\|>=1> gelten muss.
  </proof>

  <\lemma>
    <label|linearkombination-teilbarkeit>Sei <math|a\<in\><with|font|Bbb|Z>>
    ein Teiler von <math|b<rsub|1>,\<ldots\>,b<rsub|n>\<in\><with|font|Bbb|Z>,n\<in\><with|font|Bbb|N>>
    und seien <math|c<rsub|1>,\<ldots\>,c<rsub|n>\<in\><with|font|Bbb|Z>>
    beliebige ganze Zahlen. Dann gilt <math|a
    \<mid\><big|sum><rsub|i=1><rsup|n>c<rsub|i> b<rsub|i>>.
  </lemma>

  <\proof>
    Da <math|a> ein Teiler von <math|b<rsub|i>> für <math|i=1,\<ldots\>,n>
    ist gilt <math|b<rsub|i>=a k<rsub|i>> für
    <math|k<rsub|i>\<in\><with|font|Bbb|Z>>. Daraus folgt, dass

    <\equation*>
      <big|sum><rsub|i=1><rsup|n>c<rsub|i>
      b<rsub|i>=<big|sum><rsub|i=1><rsup|n>c<rsub|i> <around*|(|a
      k<rsub|i>|)>=a <big|sum><rsub|i=1><rsup|n>c<rsub|i> k<rsub|i>,
    </equation*>

    wobei <math|<big|sum><rsub|i=1><rsup|n>c<rsub|i>
    k<rsub|i>\<in\><with|font|Bbb|Z>>. Also ist <math|a> ein Teiler von
    <math|<big|sum><rsub|i=1><rsup|n>c<rsub|i> b<rsub|i>>.
  </proof>

  <\definition>
    Eine ganze Zahl <math|p\<gtr\>1> heiÿt <em|Primzahl>, falls aus <math|p=a
    b> mit <math|a,b\<in\><with|font|Bbb|N>> notwendigerweise <math|a=1> oder
    <math|a=p> folgt. Wir bezeichnen die Menge aller Primzahlen mit
    <math|<with|font|Bbb|P>>.
  </definition>

  <\theorem>
    <label|existenz-primfaktorzerlegung>Sei <math|n\<gtr\>1> eine beliebige
    ganze Zahl. Dann existieren endlich viele Primzahlen
    <math|p<rsub|1>,\<ldots\>,p<rsub|k>>, sodass
    <math|n=<big|prod><rsub|i=1><rsup|k> p<rsub|i>>.
  </theorem>

  <\proof>
    Wir zeigen den Satz mittels Induktion. Für <math|n=2> folgt die Aussage
    sofort. Nehmen wir also an, dass es für alle
    <math|1\<less\>k\<leq\>n\<in\><with|font|Bbb|N>> eine
    Primfaktorenzerlegung gibt. Falls <math|n+1> eine Primzahl ist, ist
    nichts mehr zu zeigen. Ansonsten existieren
    <math|a,b\<in\><with|font|Bbb|N>> mit <math|n+1=a b> und
    <math|a,b\<less\>n+1> nach Lemma <reference|teilbarkeit-lemma> (2), wobei
    insbesondere <math|a> und <math|b> Primfaktorzerlegungen besitzen. Aber
    dann ist auch <math|n+1>, als Produkt von <math|a> und <math|b>, das
    Produkt von endlich vielen Primzahlen.
  </proof>

  Unsere nächste Aussage werden wir auf zwei Arten beweisen. Zunächst der
  klassische Beweis nach Euklid<\footnote>
    Euklid (ca. 350 v. Chr. \U 270 v. Chr.), griechischer Mathematiker
  </footnote>:

  <\theorem>
    <dueto|Euklid><label|satz-von-euklid>Es gibt unendlich viele Primzahlen.
  </theorem>

  <\proof>
    Sei für einen Widerspruch angenommen, dass es nur endlich viele
    Primzahlen <math|p<rsub|1>,\<ldots\>,p<rsub|k>> gibt. Nach Satz
    <reference|existenz-primfaktorzerlegung> hat
    <math|m\<assign\><big|prod><rsub|i=1><rsup|k>p<rsub|i>+1> eine
    Primfaktorzerlegung. Insbesondere existiert also eine Primzahl <math|p>
    mit <math|p \<mid\>m>. Da <math|p> mit einer der Primzahlen
    <math|p<rsub|1>,\<ldots\>,p<rsub|n>> übereinstimmt, gilt <math|p
    \<mid\><big|prod><rsub|i=1><rsup|k>p<rsub|i>>. Nach Lemma
    <reference|linearkombination-teilbarkeit> gilt daher auch <math|p
    \<mid\>1>. Dann muss aber <math|p=1> sein, ein Widerspruch.
  </proof>

  Unmittelbar folgt der Satz allerdings auch aus folgender interessanter
  Tatsache:

  <\theorem>
    <label|primzahlen-harmonische-reihe>Die Reihe

    <\equation*>
      <big|sum><rsub|p\<in\><with|font|Bbb|P>><frac|1|p>
    </equation*>

    divergiert bestimmt gegen <math|\<infty\>>.
  </theorem>

  Um die Divergenz zu zeigen, führen wir zunächst folgende Darstellung ein.

  <\definition>
    Die <em|Riemannsche<\footnote>
      Georg Friedrich Bernhard Riemann (1826 \U 1866), deutscher Mathematiker
    </footnote> <math|\<zeta\>>-Funktion> ist definiert als die Funktion
    <math|\<zeta\> :<around*|(|1,\<infty\>|)>\<rightarrow\><with|font|Bbb|R>>,
    die jedem <math|s\<gtr\>1> die Summe der konvergenten Reihe

    <\equation*>
      \<zeta\><around*|(|s|)>\<assign\><big|sum><rsub|n=1><rsup|\<infty\>><frac|1|n<rsup|s>>
    </equation*>

    zuweist.
  </definition>

  Es folgt beispielsweise aus dem Verdichtungskriterium von Cauchy<\footnote>
    Augustin-Louis Cauchy (1789 \U 1857), französischer Mathematiker und
    Physiker
  </footnote>, dass <math|\<zeta\>> für alle <math|s\<gtr\>1> wohldefiniert
  ist. Eine wichtige Darstellung dieser Funktion ist Leonhard
  Euler<\footnote>
    Leonhard Euler (1707 \U 1783), Schweizer Mathematiker, Physiker,
    Astronom, Geograph, Logiker und Ingenieur
  </footnote> zu verdanken.\ 

  <\proposition>
    <label|euler-produkt-ungleichung>Für jedes <math|s\<gtr\>1> gilt die
    Ungleichung

    <\equation*>
      \<zeta\><around*|(|s|)>\<leq\><big|prod><rsub|p\<in\><with|font|Bbb|P>><frac|1|1-p<rsup|-s>>.
    </equation*>
  </proposition>

  <\proof>
    Für jedes <math|p\<in\><with|font|Bbb|P>> gilt, dass

    <\equation*>
      <frac|1|1-p<rsup|-s>>=<big|sum><rsub|k=0><rsup|\<infty\>><around*|(|<frac|1|p<rsup|s>>|)><rsup|k>=1+<frac|1|p<rsup|s>>+<frac|1|<around*|(|p<rsup|2>|)><rsup|s>>+<frac|1|<around*|(|p<rsup|3>|)><rsup|s>>+\<cdots\>.
    </equation*>

    Das gegebene Produkt lässt sich also erweitern zu

    <\equation*>
      <big|prod><rsub|p\<in\><with|font|Bbb|P>><frac|1|1-p<rsup|-s>>=<around*|(|1+<frac|1|2<rsup|s>>+<frac|1|4<rsup|s>>+\<cdots\>|)>
      <around*|(|1+<frac|1|3<rsup|s>>+<frac|1|9<rsup|s>>+\<cdots\>|)>
      <around*|(|1+<frac|1|5<rsup|s>>+\<cdots\>|)> \<cdots\>,
    </equation*>

    wobei wir durch Ausmultiplizieren Summanden der Form

    <\equation*>
      <frac|1|<around*|(|p<rsub|1><rsup|k<rsub|1>> p<rsub|2><rsup|k<rsub|2>>
      \<cdots\> p<rsub|m><rsup|k<rsub|m>>|)><rsup|s>><space|1em><text|für
      >p<rsub|1>,\<ldots\>,p<rsub|m>\<in\><with|font|Bbb|P><text| und
      >k<rsub|1>,\<ldots\>,k<rsub|m>\<in\><with|font|Bbb|N>
    </equation*>

    erhalten. Nach Satz <reference|existenz-primfaktorzerlegung> hat jede
    natürliche Zahl <math|n\<in\><with|font|Bbb|N>> eine Primfaktorzerlegung,
    also ist mindestens<\footnote>
      Tatsächlich ist sogar <em|genau ein> Summand in dieser Form, bei
      Proposition <reference|euler-produkt-ungleichung> gilt also sogar
      Gleichheit. Um das zu zeigen, benötigen wir allerdings erst die
      Eindeutigkeit von Primfaktorzerlegungen. Das Produkt
      <math|<big|prod><rsub|p\<in\><with|font|Bbb|P>><frac|1|1-p<rsup|-s>>>
      wird dann <em|Euler'sche Produktdarstellung> von
      <math|\<zeta\><around*|(|s|)>> genannt.
    </footnote> ein Summand der Form <math|<frac|1|n<rsup|s>>>. Daraus folgt
    unmittelbar die gewünschte Ungleichung.
  </proof>

  Kommen wir also zum Beweis von Satz <reference|primzahlen-harmonische-reihe>:

  <\proof>
    Wegen Proposition <reference|euler-produkt-ungleichung>, haben wir für
    festes <math|s\<gtr\>1> die Abschätzung
    <math|\<zeta\><around*|(|s|)>\<leq\><big|prod><rsub|p\<in\><with|font|Bbb|P>><frac|1|1-p<rsup|-s>>>.
    Logarithmieren wir beide Seiten, erhalten wir

    <\equation*>
      log<around*|(|\<zeta\><around*|(|s|)>|)>\<leq\>log<around*|(|<big|prod><rsub|p\<in\><with|font|Bbb|P>><frac|1|1-p<rsup|-s>>|)>=<big|sum><rsub|p\<in\><with|font|Bbb|P>>log<around*|(|<frac|1|1-p<rsup|-s>>|)>=<big|sum><rsub|p\<in\><with|font|Bbb|P>>-log<around*|(|1-p<rsup|-s>|)>.
    </equation*>

    Wir verwenden die Taylorreihendarstellung von
    <math|log<around*|(|1-p<rsup|-s>|)>> und sehen, dass

    <\equation*>
      log<around*|(|\<zeta\><around*|(|s|)>|)>\<leq\><big|sum><rsub|p\<in\><with|font|Bbb|P>><big|sum><rsub|k=1><rsup|\<infty\>><frac|1|k
      p<rsup|k s>>,
    </equation*>

    wobei

    <\equation*>
      <big|sum><rsub|k=1><rsup|\<infty\>><frac|1|k p<rsup|k
      s>>\<leq\><big|sum><rsub|k=1><rsup|\<infty\>><around*|(|<frac|1|p<rsup|s>>|)><rsup|k>=<frac|p<rsup|-s>|1-p<rsup|-s>>\<less\>2
      p<rsup|-s>,
    </equation*>

    sodass

    <\equation*>
      <big|sum><rsub|p\<in\><with|font|Bbb|P>><big|sum><rsub|k=1><rsup|\<infty\>><frac|1|k
      p<rsup|k s>>\<less\><big|sum><rsub|p\<in\><with|font|Bbb|P>><frac|2|p<rsup|s>>\<leq\><big|sum><rsub|k=1><rsup|\<infty\>><frac|2|k<rsup|s>>\<less\>\<infty\>.
    </equation*>

    Das erlaubt uns <math|<big|sum><rsub|p\<in\><with|font|Bbb|P>><big|sum><rsub|k=1><rsup|\<infty\>><frac|1|k
    p<rsup|k s>>> umzuordnen, i.e.

    <\equation*>
      log<around*|(|\<zeta\><around*|(|s|)>|)>\<leq\><big|sum><rsub|p\<in\><with|font|Bbb|P>><big|sum><rsub|k=1><rsup|\<infty\>><frac|1|k
      p<rsup|k s>>=<big|sum><rsub|p\<in\><with|font|Bbb|P>><frac|1|p<rsup|s>>+<big|sum><rsub|p\<in\><with|font|Bbb|P>><big|sum><rsub|k=2><rsup|\<infty\>><frac|1|k
      p<rsup|k s>>.
    </equation*>

    Da <math|lim<rsub|s\<rightarrow\>1<rsup|+>>
    <big|sum><rsub|n=1><rsup|\<infty\>><frac|1|n<rsup|s>>=<big|sum><rsub|n=1><rsup|\<infty\>><frac|1|n>=\<infty\>>,
    folgt <math|lim<rsub|s\<rightarrow\>1<rsup|+>>
    log<around*|(|\<zeta\><around*|(|s|)>|)>=\<infty\>>. Also insbesondere

    <\equation*>
      lim<rsub|s\<rightarrow\>1<rsup|+>> <around*|(|<big|sum><rsub|p\<in\><with|font|Bbb|P>><frac|1|p<rsup|s>>+<big|sum><rsub|p\<in\><with|font|Bbb|P>><big|sum><rsub|k=2><rsup|\<infty\>><frac|1|k
      p<rsup|k s>>|)>=\<infty\>.
    </equation*>

    Weil aber

    <\equation*>
      0\<leq\><big|sum><rsub|p\<in\><with|font|Bbb|P>><big|sum><rsub|k=2><rsup|\<infty\>><frac|1|k
      p<rsup|k s>>\<leq\><big|sum><rsub|n=2><rsup|\<infty\>><big|sum><rsub|k=2><rsup|\<infty\>><frac|1|n<rsup|k>>=<big|sum><rsub|n=2><rsup|\<infty\>><frac|1|n
      <around*|(|n-1|)>>=1
    </equation*>

    für alle <math|s\<gtr\>1>, ist nur

    <\equation*>
      <big|sum><rsub|p\<in\><with|font|Bbb|P>><frac|1|p>=lim<rsub|s\<rightarrow\>1<rsup|+>>
      <big|sum><rsub|p\<in\><with|font|Bbb|P>><frac|1|p<rsup|s>>=\<infty\>
    </equation*>

    möglich.
  </proof>

  Als nächstes Ziel wollen wir die Eindeutigkeit der Primfaktorzerlegung
  beweisen. Dazu sind die folgenden Resultate notwendig.

  <\theorem>
    <dueto|Division mit Rest><label|division-mit-rest>Sei
    <math|a\<in\><with|font|Bbb|Z>> und <math|b\<gtr\>0> eine positive ganze
    Zahl. Dann gibt es eindeutig bestimmte <math|q,r\<in\><with|font|Bbb|Z>>
    mit <math|a=b q+r> und <math|0\<leq\>r\<less\>b>.
  </theorem>

  <\proof>
    Existenz: Wir setzen <math|q\<assign\><around*|\<lfloor\>|<frac|a|b>|\<rfloor\>>>
    (die gröÿte ganze Zahl, die kleiner oder gleich <math|<frac|a|b>> ist)
    und <math|r\<assign\>a-b q>. Aus <math|q\<leq\><frac|a|b>\<less\>q+1>
    erhalten wir <math|b q\<leq\>a\<less\>b q+b>, also
    <math|0\<leq\>r\<less\>b>.

    Eindeutigkeit: Wenn <math|a=b q+r=b q<rprime|'>+r<rprime|'>> mit
    <math|0\<leq\>r,r<rprime|'>\<less\>b> ist, dann gilt
    <math|0\<leq\><around*|\||b q-b q<rprime|'>|\|>=<around*|\||r<rprime|'>-r|\|>\<less\>b>.
    Die Zahl <math|<around*|\||r<rprime|'>-r|\|>> ist also durch <math|b>
    teilbar; da alle Vielfachen von <math|b> entweder kleiner oder gleich
    <math|0> sind oder gröÿer oder gleich <math|b> sind, und
    <math|<around*|\||r<rprime|'>-r|\|>> im halboffenen Interval
    <math|<around*|[|0,b|)>> liegt, muss <math|r<rprime|'>-r=0>, also
    <math|r<rprime|'>=r> gelten, somit auch <math|q=q<rprime|'>>.\ 
  </proof>

  Wie bekannt, nennen wir <math|q> in Satz <reference|division-mit-rest> den
  <em|Quotienten> und <math|r> den <em|Rest> der Division. Einige andere
  wichtige Begriffe ergeben sich:

  <\definition>
    (1) Seien <math|a,b\<in\><with|font|Bbb|Z>> ganze Zahlen, von denen
    mindestens eine ungleich Null ist. Dann definieren wir den <em|gröÿten
    gemeinsamen Teiler>, als die gröÿte ganze Zahl
    <math|d\<in\><with|font|Bbb|Z>>, die sowohl Teiler von <math|a>, als auch
    von <math|b> ist. Wir schreiben <math|<with|font-family|rm|ggT><around*|(|a,b|)>=d>.

    (2) Gilt <math|<with|font-family|rm|ggT><around*|(|a,b|)>=1>, heiÿen
    <math|a> und <math|b> <em|teilerfremd> oder <em|relativ prim>.
  </definition>

  Da jedenfalls die Einheit ein Teiler von <math|a> und <math|b> ist, ist die
  Menge der Teiler von <math|a> und <math|b> nichtleer, sodass der
  <math|<with|font-family|rm|ggT>> schon wohldefiniert ist. Zur Bestimmung
  des <math|<with|font-family|rm|ggT>> verwenden wir den auf Euklid
  zurückgehenden <em|Euklidischen Algorithmus>.

  <\lemma>
    <label|euklidischer-algorithmus-lemma>Seien
    <math|a,b\<in\><with|font|Bbb|Z>> und <math|q,r\<in\><with|font|Bbb|Z>>,
    sodass <math|a=b q+r>. Dann gilt <math|<with|font-family|rm|ggT><around*|(|a,b|)>=<with|font-family|rm|ggT><around*|(|b,r|)>>.
  </lemma>

  <\proof>
    Sei <math|d\<assign\><with|font-family|rm|ggT><around*|(|a,b|)>>. Per
    Definition teilt <math|d> sowohl <math|a> als auch <math|b>, folglich
    auch jede ganzzahlige Linearkombination der beiden (Lemma
    <reference|linearkombination-teilbarkeit>). Insbesondere teilt <math|d>
    also <math|a-b q=r>. Somit ist <math|d> ein gemeinsamer Teiler von
    <math|b> und <math|r>.

    <space|1em>Sei nun <math|c> ein beliebiger gemeinsamer Teiler von
    <math|b> und <math|r>. Dann teilt <math|c> auch die Linearkombination
    <math|a=b q+r>, also ist <math|c> ein gemeinsamer Teiler von <math|a> und
    <math|b>, i.e. <math|c\<leq\>d>.
  </proof>

  <\theorem>
    <dueto|Euklidischer Algorithmus><label|euklidischer-algorithmus>Seien
    <math|a,b\<in\><with|font|Bbb|N>> mit <math|0\<leq\>b\<leq\>a> und nicht
    beide null. Wir definieren rekursiv eine Folge von Resten
    <math|<around*|(|r<rsub|i>|)><rsub|i\<in\><with|font|Bbb|N><rsub|0>>>
    durch wiederholte Division mit Rest:

    <\equation*>
      r<rsub|0>\<assign\>a,<space|1em>r<rsub|1>\<assign\>b,<space|1em>r<rsub|i-1>=q<rsub|i>
      r<rsub|i>+r<rsub|i+1><space|1em><text|mit
      >0\<leq\>r<rsub|i+1>\<less\>r<rsub|i><text| für >i\<geq\>1<text|
      solange >r<rsub|i>\<neq\>0.
    </equation*>

    Dann existiert ein Index <math|n\<in\><with|font|Bbb|N>>, sodass
    <math|r<rsub|n>\<neq\>0> und <math|r<rsub|n+1>=0> mit
    <math|<with|font-family|rm|ggT><around*|(|a,b|)>=r<rsub|n>>.
  </theorem>

  <\proof>
    Zuerst bemerken wir, dass die Folge der Reste
    <math|<around*|(|r<rsub|i>|)><rsub|i\<in\><with|font|Bbb|N><rsub|0>>>
    terminiert, da <math|r<rsub|1>\<gtr\>r<rsub|2>\<gtr\>r<rsub|3>\<gtr\>\<cdots\>\<geq\>0>
    eine streng monoton fallende Folge natürlicher Zahlen (oder null)
    bedingt. Nach dem Wohlordnungsprinzip muss eine solche Folge endlich
    sein, sodass jedenfalls ein minimaler Index
    <math|n+1\<in\><with|font|Bbb|N>> existiert mit <math|r<rsub|n+1>=0>.

    <space|1em>Durch wiederholte Anwendung von Lemma
    <reference|euklidischer-algorithmus-lemma> auf die Kette der Divisionen
    erhalten wir eine Kette von Gleichheiten:

    <\equation*>
      <with|font-family|rm|ggT><around*|(|a,b|)>=<with|font-family|rm|ggT><around*|(|r<rsub|0>,r<rsub|1>|)>=<with|font-family|rm|ggT><around*|(|r<rsub|1>,r<rsub|2>|)>=\<cdots\>=<with|font-family|rm|ggT><around*|(|r<rsub|n-1>,r<rsub|n>|)>.
    </equation*>

    Die letzte Gleichung im Algorithmus lautet aber
    <math|r<rsub|n-1>=q<rsub|n> r<rsub|n>+r<rsub|n+1>> mit
    <math|r<rsub|n+1>=0>, also

    <\equation*>
      <with|font-family|rm|ggT><around*|(|r<rsub|n-1>,r<rsub|n>|)>=<with|font-family|rm|ggT><around*|(|r<rsub|n>,r<rsub|n+1>|)>=<with|font-family|rm|ggT><around*|(|r<rsub|n>,0|)>=r<rsub|n>,
    </equation*>

    sodass <em|a fortiori ><math|<with|font-family|rm|ggT><around*|(|a,b|)>=r<rsub|n>>
    gelten muss.
  </proof>

  Eine wichtige Konsequenz von Satz <reference|euklidischer-algorithmus> ist
  das Lemma von Bézout<\footnote>
    Étienne Bézout (1730 \U 1783), französischer Mathematiker
  </footnote>, welches wir als Korollar festhalten.

  <\corollary>
    <dueto|Lemma von Bézout><label|lemma-von-bezout>Für alle
    <math|a,b\<in\><with|font|Bbb|Z>>, nicht beide null, existieren
    <math|x,y\<in\><with|font|Bbb|Z>>, sodass gilt:

    <\equation*>
      a x+b y=<with|font-family|rm|ggT><around*|(|a,b|)>.
    </equation*>
  </corollary>

  <\proof>
    Wir zeigen durch \RRückwärts\P-Induktion, dass sich jeder Rest
    <math|r<rsub|i>> im Euklidischen Algorithmus (Satz
    <reference|euklidischer-algorithmus>) als ganzzahlige Linearkombination
    von <math|a> und <math|b> darstellen lässt.

    <space|1em>Offenbar gilt <math|r<rsub|0>=1\<cdot\>a+0\<cdot\>b> und
    <math|r<rsub|1>=0\<cdot\>a+1\<cdot\>b>. Für den Induktionsschritt nehmen
    wir an, dass <math|x<rsub|i-1>,y<rsub|i-1>,x<rsub|i>,y<rsub|i>\<in\><with|font|Bbb|Z>>
    mit <math|r<rsub|i-1>=a x<rsub|i-1>+b y<rsub|i-1>> und <math|r<rsub|i>=a
    x<rsub|i>+b y<rsub|i>> existieren. Aus der Gleichung
    <math|r<rsub|i+1>=r<rsub|i-1>-q<rsub|i> r<rsub|i>> folgt somit, dass

    <\equation*>
      r<rsub|i+1>=<around*|(|a x<rsub|i-1>+b y<rsub|i-1>|)>-q<rsub|i>
      <around*|(|a x<rsub|i>+b y<rsub|i>|)>=a
      <around*|(|x<rsub|i-1>-q<rsub|i> x<rsub|i>|)>+b
      <around*|(|y<rsub|i-1>-q<rsub|i> y<rsub|i>|)>.
    </equation*>

    Setzen wir <math|x<rsub|i+1>\<assign\>x<rsub|i-1>-q<rsub|i> x<rsub|i>>
    und <math|y<rsub|i+1>\<assign\>y<rsub|i-1>-q<rsub|i> y<rsub|i>> so ist
    auch <math|r<rsub|i+1>> eine Linearkombination von <math|a> und <math|b>.
    Dieser Prozess kann fortgesetzt werden, bis wir schlieÿlich den Rest
    <math|r<rsub|n>=<with|font-family|rm|ggT><around*|(|a,b|)>> erreichen,
    der sich ebenfalls in der Form <math|r<rsub|n>=a x<rsub|n>+b y<rsub|n>>
    für <math|x<rsub|n>,y<rsub|n>\<in\><with|font|Bbb|Z>> darstellen lässt,
    was die Behauptung beweist.\ 
  </proof>

  <\example>
    Wir berechnen <math|<with|font-family|rm|ggT><around*|(|1071,462|)>>
    mittels des Euklidischen Algorithmus:

    <math|<align*|<tformat|<table|<row|<cell|1071=>|<cell|2\<cdot\>462+147<text|
    mit >q<rsub|1>=2,r<rsub|2>=147,>>|<row|<cell|462=>|<cell|3\<cdot\>147+21<text|
    mit >q<rsub|2>=3,r<rsub|3>=21,>>|<row|<cell|147=>|<cell|7\<cdot\>21+0<text|
    mit >q<rsub|3>=7,r<rsub|4>=0.>>>>>>

    Also <math|<with|font-family|rm|ggT><around*|(|1071,462|)>=21>. Zur
    Darstellung des <math|<with|font-family|rm|ggT>> als Linearkombination,
    lösen wir die Gleichungen rückwärts auf:

    <math|<align*|<tformat|<table|<row|<cell|21=>|<cell|462-3\<cdot\>147,>>|<row|<cell|147=>|<cell|1071-2\<cdot\>462,>>>>>>

    also

    <\equation*>
      21=462-3\<cdot\><around*|(|1071-2\<cdot\>462|)>=7\<cdot\>462-3\<cdot\>1071.
    </equation*>
  </example>

  <\corollary>
    <label|lemma-von-bezout-2>Seien <math|a,b\<in\><with|font|Bbb|Z>>. Gilt
    <math|<with|font-family|rm|ggT><around*|(|a,b|)> \<mid\>d> für ein
    <math|d\<in\><with|font|Bbb|N>>, so existieren
    <math|x,y\<in\><with|font|Bbb|Z>> mit

    <\equation*>
      a x+b y=d.
    </equation*>
  </corollary>

  <\proof>
    Falls <math|<with|font-family|rm|ggT><around*|(|a,b|)> \<mid\>d>,
    existiert <math|k\<in\><with|font|Bbb|N>> mit
    <math|<with|font-family|rm|ggT><around*|(|a,b|)> k=d>. Nach Folgerung
    <reference|lemma-von-bezout> gilt <math|a x+b
    y=<with|font-family|rm|ggT><around*|(|a,b|)>> für
    <math|x,y\<in\><with|font|Bbb|Z>> und Multiplikation mit <math|k> liefert
    nun

    <\equation*>
      a x k+b y k=<around*|(|a x+b y|)> k=<with|font-family|rm|ggT><around*|(|a,b|)>
      k=d,
    </equation*>

    also ist <math|d> eine Linearkombination von <math|a> und <math|b>.
  </proof>

  <\lemma>
    <dueto|Fundamentallemma><label|fundamentallemma>Seien
    <math|a,b,c\<in\><with|font|Bbb|Z>>. Falls
    <math|<with|font-family|rm|ggT><around*|(|a,b|)>=1> und <math|a \<mid\>b
    c>, so folgt <math|a\<mid\>c>.
  </lemma>

  <\proof>
    Sei vorausgesetzt, dass <math|<with|font-family|rm|ggT><around*|(|a,b|)>=1>
    gilt. Aus Folgerung <reference|lemma-von-bezout> folgt daher die Existenz
    ganzer Zahlen <math|x,y\<in\><with|font|Bbb|Z>>, sodass <math|a x+b y=1>.
    Multiplizieren wir die Gleichung mit <math|c>, erhalten wir

    <\equation*>
      a x c+b y c=c.
    </equation*>

    Betrachten wir nun die beiden Summanden der linken Seite. Der erste
    Summand, <math|a x c>, ist offenbar durch <math|a> teilbar. Für den
    zweiten Summanden, <math|b y c>, gilt nach Voraussetzung, dass <math|a>
    das Produkt <math|b c> teilt und folglich ist dieser Term ebenfalls durch
    <math|a> teilbar.

    <space|1em>Da beide Summanden auf der linken Seite der Gleichung
    Vielfache von <math|a> sind, muss auch ihre Summe, welche <math|c> ist,
    ein Vielfaches von <math|a> sein. Es gilt also <math|a \<mid\>c>, was zu
    beweisen war.
  </proof>

  <\proposition>
    <label|primzahlen-teilen-faktor>Seien
    <math|a<rsub|1>,\<ldots\>,a<rsub|n>\<in\><with|font|Bbb|Z>> und <math|p>
    eine Primzahl. Teilt <math|p> das Produkt
    <math|<big|prod><rsub|i=1><rsup|n>a<rsub|i>>, so gibt es ein
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> mit <math|p \<mid\>a<rsub|i>>.
  </proposition>

  <\proof>
    Wir gehen mittels Induktion nach <math|n> vor; offenbar stimmt die
    Aussage für <math|n=1>. Sei die Aussage also für ein
    <math|n\<in\><with|font|Bbb|N>> wahr und angenommen, dass <math|p
    \<mid\><big|prod><rsub|i=1><rsup|n+1>a<rsub|i>> für ganze Zahlen
    <math|a<rsub|1>,\<ldots\>,a<rsub|n+1>>. Falls <math|p
    \<mid\>a<rsub|n+1>>, so ist nichts mehr zu zeigen. Falls jedoch
    <math|p\<nmid\>a<rsub|n+1>>, so muss jedenfalls
    <math|<with|font-family|rm|ggT><around*|(|p,a<rsub|n+1>|)>=1> folgen, da
    <math|p> eine Primzahl ist und somit folgt aus Lemma
    <reference|fundamentallemma>, dass <math|p
    \<mid\><big|prod><rsub|i=1><rsup|n>a<rsub|i>>. Aus der Induktionsannahme
    folgt somit, dass ein <math|i\<in\><around*|{|1,\<ldots\>,n|}>> mit
    <math|p \<mid\>a<rsub|i>> existiert, was zu beweisen war.
  </proof>

  Wir verfügen nun über alle Werkzeuge, um die Eindeutigkeit der
  Primfaktorzerlegung aus Satz <reference|existenz-primfaktorzerlegung> zu
  beweisen.

  <\theorem>
    <dueto|Fundamentalsatz der Arithmetik><label|eindeutigkeit-primfaktorzerlegung>Es
    sei <math|a\<in\><with|font|Bbb|Z>>, ungleich null. Dann existiert zu
    jeder Primzahl <math|p\<in\><with|font|Bbb|P>> genau eine ganze Zahl
    <math|\<nu\><rsub|p><around*|(|a|)>\<geq\>0>, sodass

    <\equation*>
      a=<with|font-family|rm|sgn><around*|(|a|)>
      <big|prod><rsub|p\<in\><with|font|Bbb|P>>p<rsup|\<nu\><rsub|p><around*|(|a|)>>.
    </equation*>
  </theorem>

  <\proof>
    Sei zunächst <math|a\<geq\>1>. Wir wissen bereits, dass es zu jeder
    Primzahl <math|p> ein <math|\<nu\><rsub|p><around*|(|a|)>\<in\><with|font|Bbb|N><rsub|0>>
    gibt, sodass <math|a=<big|prod><rsub|p\<in\><with|font|Bbb|P>>p<rsup|\<nu\><rsub|p><around*|(|a|)>>>.
    Für <math|a\<gtr\>1> folgt diese Tatsache nämlich aus Satz
    <reference|existenz-primfaktorzerlegung> und für <math|a=1> ist es
    ausreichend, einfach <math|\<nu\><rsub|p><around*|(|a|)>=0> für alle
    Primzahlen <math|p> zu setzen. Es ist also nur noch die Eindeutigkeit
    dieser Zerlegung zu zeigen.

    <space|1em>Seien für <math|a\<geq\>1> zwei verschiedene Zerlegungen

    <\equation*>
      a=<big|prod><rsub|p\<in\><with|font|Bbb|P>>p<rsup|\<nu\><rsub|p><around*|(|a|)>>=<big|prod><rsub|p\<in\><with|font|Bbb|P>>p<rsup|\<mu\><rsub|p><around*|(|a|)>>,
    </equation*>

    mit <math|\<nu\><rsub|p><around*|(|a|)>,\<mu\><rsub|p><around*|(|a|)>\<in\><with|font|Bbb|N><rsub|0>>,
    gegeben. Dann gilt <math|\<nu\><rsub|p<rsub|0>><around*|(|a|)>\<neq\>\<mu\><rsub|p<rsub|0>><around*|(|a|)>>
    für ein <math|p<rsub|0>\<in\><with|font|Bbb|P>>. \ O. B. d. A. sei
    <math|\<mu\><rsub|p<rsub|0>><around*|(|a|)>\<less\>\<nu\><rsub|p<rsub|0>><around*|(|a|)>>.
    Dann ist

    <\equation*>
      p<rsub|0><rsup|\<nu\><rsub|p<rsub|0>><around*|(|a|)>-\<mu\><rsub|p<rsub|0>><around*|(|a|)>>\<cdot\><big|prod><rsub|p\<in\><with|font|Bbb|P>\<setminus\><around*|{|p<rsub|0>|}>>p<rsup|\<nu\><rsub|p><around*|(|a|)>>=<big|prod><rsub|p\<in\><with|font|Bbb|P>\<setminus\><around*|{|p<rsub|0>|}>>p<rsup|\<mu\><rsub|p><around*|(|a|)>>.
    </equation*>

    Ist das Produkt auf der rechten Seite leer, erhalten wir sofort einen
    Widerspruch; ist das Produkt nicht leer, dann existiert nach Proposition
    <reference|primzahlen-teilen-faktor> eine Primzahl
    <math|p<rsub|1>\<in\><with|font|Bbb|P>>, die in
    <math|<big|prod><rsub|p\<in\><with|font|Bbb|P>\<setminus\><around*|{|p<rsub|0>|}>>p<rsup|\<mu\><rsub|p><around*|(|a|)>>>
    vorkommt, sodass <math|p<rsub|0> \<mid\>p<rsub|1>>. Das ist erneut ein
    Widerspruch, da jedenfalls <math|p<rsub|0>\<neq\>p<rsub|1>> gelten muss.
    Es muss also <math|\<nu\><rsub|p><around*|(|a|)>=\<mu\><rsub|p><around*|(|a|)>>
    für alle <math|p\<in\><with|font|Bbb|P>> gelten.

    <space|1em>Der Übergang zu <math|a\<leq\>-1> folgt nun unmittelbar.
  </proof>

  <section|Grundbegriffe>

  In diesem Kapitel werden wir einige wesentliche Definitionen geben, die vor
  allem durch die Frage motiviert sind, in welcher Weise, sich die
  Eigenschaften der ganzen Zahlen, insbesondere die Existenz und
  Eindeutigkeit von Primfaktorzerlegungen, verallgemeinern lassen. Konkret
  formuliert suchen wir nach einer \RStruktur\P <math|R> mit gewissen
  Operationen <math|+> und <math|\<cdot\>>, die wie in
  <math|<with|font|Bbb|Z>> miteinander verträglich sind und aus denen sich
  jene Aussagen herleiten lassen, die wir verwendet haben, um den
  Fundamentalsatz der Arithmetik zu beweisen.

  <space|1em>Wir fangen an mit der Definition einer <em|Gruppe>:

  <\definition>
    Es sei <math|G> eine Menge und <math|\<circ\>:G\<times\>G\<rightarrow\>G>
    eine Abbildung. Das Paar <math|<around*|(|G,\<circ\>|)>> heiÿt
    <em|Gruppe>, falls gilt:

    <\indent>
      (1) <math|x\<circ\><around*|(|y\<circ\>z|)>=<around*|(|x\<circ\>y|)>\<circ\>z>
      für alle <math|x,y,z\<in\>G>.<space|1em>(<em|Assoziativität von
      \R<math|\<circ\>>\P>)

      (2) Es gibt ein Element <math|e\<in\>G>, sodass
      <math|e\<circ\>x=x\<circ\>e=e> für alle
      <math|x\<in\>G>.<space|1em>(<em|Neutrales Element>)

      (3) Zu jedem <math|x\<in\>G> existiert ein <math|y\<in\>G>, sodass
      <math|x\<circ\>y=e=y\<circ\>x>.<space|1em>(<em|Inverses>)
    </indent>

    Gilt ferner

    <\indent>
      (4) <math|x\<circ\>y=y\<circ\>x> für alle <math|x,y\<in\>G>,
    </indent>

    so heiÿt <math|G> <em|abelsch><\footnote>
      Niels Henrik Abel (1802 \U 1829), norwegischer Mathematiker
    </footnote> (seltener: <em|kommutativ>).
  </definition>

  <\notation>
    Falls im Kontext klar ist, mit welcher Gruppenoperation <math|G>
    ausgestattet ist, schreibt man statt <math|<around*|(|G,\<circ\>|)>> oft
    nur <math|G> und bezeichnet schon <math|G> alleine als Gruppe. Ist die
    Gruppenoperation von <math|G> eine Addition \R<math|+>\P, so schreiben
    wir für das neutrale Element normalerweise <math|0> und nennen <math|G>
    eine <em|additive Gruppe>. Ähnlich bezeichnen wir <math|G> als
    <em|multiplikative Gruppe>, wenn die Gruppenoperation ein Produkt
    \R<math|\<cdot\>>\P darstellen soll und bezeichnen das neutrale Element
    als <em|Einselement> bzw. <math|1>. Ebenso verwenden wir im Fall von zwei
    Gruppen <math|G,H> oft die Schreibweise <math|e<rsub|G>> bzw.
    <math|e<rsub|H>> für das neutrale Element von <math|G> bzw. <math|H>;
    manchmal erlauben wir uns, diesen Index auch zu vernachlässigen, wenn es
    im Kontext klar ist.
  </notation>

  <space|1em>An dieser Stelle sei bemerkt, dass die Definition eines inversen
  Elements aktuell noch lückenhaft ist, da nicht unmittelbar klar ist, ob
  <math|e> wirklich eindeutig bestimmt ist! Glücklicherweise ist das aber der
  Fall:

  <\corollary>
    Sei <math|<around*|(|G,\<circ\>|)>> eine Gruppe. Dann gelten:

    <\indent>
      (1) Das neutrale Element <math|e> von <math|G> ist eindeutig bestimmt.

      (2) Zu jedem <math|x\<in\>G> ist das inverse Element
      <math|x<rsup|-1>\<in\>G> eindeutig bestimmt.

      (3) Für das neutrale Element gilt <math|e<rsup|-1>=e>.

      (4) Ist <math|x\<in\>G>, so folgt <math|<around*|(|x<rsup|-1>|)><rsup|-1>=x>.

      (5) Sind <math|x,y\<in\>G>, so ist <math|<around*|(|x\<circ\>y|)><rsup|-1>=y<rsup|-1>\<circ\>x<rsup|-1>>.

      (6) Jedes beliebig geklammerte Produkt
      <math|x<rsub|1>\<circ\>x<rsub|2>\<circ\>\<cdots\>\<circ\>x<rsub|n>> für
      <math|n\<in\><with|font|Bbb|N>,x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>G>
      lässt sich in \Rlinksnormierter\P Weise schreiben, i.e.
      <math|<around*|(|\<cdots\><around*|(|<around*|(|x<rsub|1>\<circ\>x<rsub|2>|)>\<circ\>x<rsub|3>|)>\<circ\>\<cdots\>\<circ\>x<rsub|n>|)>>.
      Mit anderen Worten: Klammern dürfen beliebig gesetzt werden und sogar
      weggelassen werden.
    </indent>
  </corollary>

  <\proof>
    (1) Sei <math|e<rprime|'>\<in\>G> ein weiteres neutrales Element. Dann
    folgt <math|e<rprime|'>=e\<circ\>e<rprime|'>=e>.

    (2) Sei <math|x\<in\>G>. Gilt <math|x\<circ\>y=e=y\<circ\>x> und
    <math|x\<circ\>y<rprime|'>=e=y<rprime|'>\<circ\>x> für
    <math|y,y<rprime|'>\<in\>G>, so folgt

    <\equation*>
      y=e\<circ\>y=<around*|(|y<rprime|'>\<circ\>x|)>\<circ\>y=y<rprime|'>\<circ\><around*|(|x\<circ\>y|)>=y<rprime|'>\<circ\>e=y<rprime|'>.
    </equation*>

    (3) Es gilt <math|e=e\<circ\>e>. Daraus folgt mit (2), dass
    <math|e<rsup|-1>=e>.

    (4) Es gilt <math|x\<circ\>x<rsup|-1>=e>. Nach (2) folgt
    <math|<around*|(|x<rsup|-1>|)><rsup|-1>=x>.

    (5) Wir sehen

    <\equation*>
      <around*|(|x\<circ\>y|)>\<circ\><around*|(|y<rsup|-1>\<circ\>x<rsup|-1>|)>=x\<circ\><around*|(|y\<circ\>y<rsup|-1>|)>\<circ\>x<rsup|-1>=x\<circ\>e\<circ\>x<rsup|-1>=x\<circ\>x<rsup|-1>=e.
    </equation*>

    Nach (2) folgt also, dass <math|<around*|(|x\<circ\>y|)><rsup|-1>=y<rsup|-1>\<circ\>x<rsup|-1>>.

    (6) Wir führen eine Induktion nach <math|n>. Für <math|n=3> stimmt die
    Behauptung mit Punkt (1) aus der Definition einer Gruppe überein. Sei
    <math|n\<geq\>4>. Dann gilt mittels der Induktionsvoraussetzung, dass

    <math|<align*|<tformat|<table|<row|<cell|<around*|(|\<cdots\><around*|(|x<rsub|1>\<circ\>\<cdots\>\<circ\>x<rsub|j>|)>\<circ\><around*|(|x<rsub|j+1>\<circ\>\<cdots\>\<circ\>x<rsub|n>|)>\<cdots\>|)>=>|<cell|<around*|(|\<cdots\><around*|(|x<rsub|1>\<circ\>\<cdots\>\<circ\>x<rsub|j>|)>\<circ\><around*|(|x<rsub|j+1>\<circ\>\<cdots\>\<circ\>x<rsub|n-1>|)>\<circ\>x<rsub|n>|)>>>|<row|<cell|=>|<cell|<around*|(|<around*|(|\<cdots\><around*|(|x<rsub|1>\<circ\>\<cdots\>\<circ\>x<rsub|j>|)>\<circ\><around*|(|x<rsub|j+1>\<circ\>\<cdots\>\<circ\>x<rsub|n-1>|)>|)>\<circ\>x<rsub|n>|)>>>|<row|<cell|=>|<cell|<around*|(|\<cdots\><around*|(|<around*|(|x<rsub|1>\<circ\>x<rsub|2>|)>\<circ\>x<rsub|3>|)>\<circ\>\<cdots\>\<circ\>x<rsub|n>|)>,>>>>>>

    was zu zeigen war.
  </proof>

  Es folgen nun einige Beispiele von Gruppen.

  <\example>
    <label|restklassen-modulo-m>(1) Die ganzen Zahlen
    <math|<with|font|Bbb|Z>> bilden eine (abelsche) Gruppe unter der Addition
    \R<math|+>\P, aber keine Gruppe unter der Multiplikation
    \R<math|\<cdot\>>\P. Beispielsweise hat <math|0> kein multiplikativ
    inverses Element.

    (2) Ein Vektorraum <math|V> über dem Körper<\footnote>
      Wir werden bald die formale Definition eines Körpers einführen, setzen
      in diesem Beispiel allerdings voraus, dass der Begriff aus der Linearen
      Algebra bekannt ist.
    </footnote> <math|K> bildet definitionsgemäÿ unter der Vektoraddition
    eine abelsche Gruppe.

    (3) Die <em|allgemeine lineare Gruppe>
    <math|<with|font-family|rm|GL><around*|(|n,K|)>> der <math|n\<times\>n>
    Matrizen <math|A> über dem Körper <math|K> mit <math|det A\<neq\>0> ist
    (wie der Name andeutet) eine Gruppe mit der Matrixmultiplikation. Ebenso
    bekannt sind die <em|spezielle lineare Gruppe>
    <math|<with|font-family|rm|SL><around*|(|n,K|)>> mit <math|det A=1>, die
    <em|orthogonale Gruppe> <math|<text|O><around*|(|n|)>> über
    <math|<with|font|Bbb|R>>, die <em|unitäre Gruppe>
    <math|<text|U><around*|(|n|)>> über <math|<with|font|Bbb|C>> und deren
    speziellen Analoge <math|<with|font-family|rm|SO><around*|(|n|)>> und
    <math|<with|font-family|rm|SU><around*|(|n|)>> mit <math|det A=1>. Im
    Allgemeinen handelt es sich bei diesen Gruppen um nicht-abelsche Gruppen.

    (4) Es sei <math|M> eine beliebige Menge. Die Menge der bijektiven
    Selbstabbildungen von <math|M> bilden unter der Zusammensetzung von
    Funktionen eine Gruppe <math|S<around*|(|M|)>>, die <em|symmetrische
    Gruppe von> <math|M>. Ist <math|M=<around*|{|1,\<ldots\>,n|}>> für ein
    <math|n\<in\><with|font|Bbb|N>> schreiben wir statt
    <math|S<around*|(|M|)>> auch <math|S<rsub|n>> und bezeichnen diese Gruppe
    als <em|<math|n>-te symmetrische Gruppe>.

    (5) Wir definieren für <math|m\<in\><with|font|Bbb|N>> die
    <em|Restklassen modulo> <math|m>, wobei zwei Zahlen
    <math|r,s\<in\><with|font|Bbb|Z>> genau dann in derselben Restklasse
    liegen, wenn die Division durch <math|m>, nach Satz
    <reference|division-mit-rest>, den gleichen Rest ergibt, i.e. <math|m
    \<mid\>r-s><\footnote>
      Weitere Schreibweisen: <math|r\<equiv\>s <pmod|m>>,
      <math|<wide|r|\<bar\>>=<wide|s|\<bar\>>>,
      <math|<around*|[|r|]><rsub|m>=<around*|[|s|]><rsub|m>> und viele
      andere.
    </footnote>. Die Einteilung der ganzen Zahlen in Restklassen modulo
    <math|m>, geschrieben <math|<with|font|Bbb|Z>/m <with|font|Bbb|Z>> ist
    eine Einteilung in disjunkte Teilmengen. Jede Restklasse modulo <math|m>
    lässt sich beschreiben durch <math|r+m <with|font|Bbb|Z>>, wobei <math|r>
    irgendeine Zahl der Restklasse ist. Eine derartige Zahl <math|r> heiÿt
    ein <em|Repräsentant> der Restklasse. Die Addition in
    <math|<with|font|Bbb|Z>> induziert in <math|<with|font|Bbb|Z>/m
    <with|font|Bbb|Z>> eine Verknüpfungsvorschrift, nämlich

    <\equation*>
      <around*|(|r+m <with|font|Bbb|Z>|)>+<around*|(|s+m
      <with|font|Bbb|Z>|)>=<around*|(|r+s|)>+m <with|font|Bbb|Z>.
    </equation*>

    Diese Vorschrift ist offenbar wohldefiniert, sodass es sich bei
    <math|<with|font|Bbb|Z>/m <with|font|Bbb|Z>> zusammen mit der
    Restklassenaddition sogar um eine abelsche Gruppe handelt.
  </example>

  <\notation>
    <label|gruppe-potenz-schreibweise>Es sei <math|<around*|(|G,\<circ\>|)>>
    eine Gruppe. Für ein Element <math|x\<in\>G> und eine ganze Zahl
    <math|n\<in\><with|font|Bbb|Z>> setzen wir:

    <\equation*>
      x<rsup|n>\<assign\><choice|<tformat|<table|<row|<cell|<wide|x\<circ\>x\<circ\>\<cdots\>\<circ\>x|\<wide-overbrace\>><rsup|<text|<math|n>-fach>><space|1em><text|für
      <math|n\<geq\>2>>,>>|<row|<cell|x<space|1em><text|für
      <math|n=1>>,>>|<row|<cell|e<space|1em><text|für
      <math|n=0>>,>>|<row|<cell|<around*|(|x<rsup|-n>|)><rsup|-1><space|1em><text|für
      <math|n\<leq\>-1>>.>>>>>
    </equation*>

    Beachte

    <math|<align*|<tformat|<table|<row|<cell|x<rsup|-m>=>|<cell|<around*|(|x<rsup|m>|)><rsup|-1>=<around*|(|x\<circ\>\<cdots\>\<circ\>x|)><rsup|-1>=<around*|(|x<rsup|-1>|)><rsup|m><space|1em><text|für
    <math|m\<geq\>1>>,>>|<row|<cell|x<rsup|k>\<circ\>x<rsup|l>=>|<cell|x<rsup|k+l><space|1em><text|und><space|1em><around*|(|x<rsup|k>|)><rsup|l>=x<rsup|k\<cdot\>
    l><space|1em><text|für <math|k,l\<in\><with|font|Bbb|Z>>>.>>>>>>
  </notation>

  Zwei wichtige Definitionen:

  <\definition>
    Sei <math|<around*|(|G,\<circ\>|)>> eine Gruppe. Falls ein
    <math|x\<in\>G> existiert, sodass für jedes <math|y\<in\>G> auch ein
    <math|n\<in\><with|font|Bbb|Z>> mit <math|x<rsup|n>=y> existiert, dann
    heiÿt <math|G> <em|zyklisch> und <math|x> ein <em|Erzeuger> von <math|G>.
    Wir schreiben <math|G=\<langle\>x\<rangle\>>.
  </definition>

  <\definition>
    Eine Teilmenge <math|H> einer Gruppe <math|G=<around*|(|G,\<circ\>|)>>,
    sodass auch <math|<around*|(|H,\<circ\>|)>> eine Gruppe ist, heiÿt
    <em|Untergruppe> von <math|G>. Wir schreiben <math|H\<leq\>G>.
  </definition>

  Man sieht z.B. sofort, dass <math|<around*|(|<with|font|Bbb|Z>,+|)>> eine
  zyklische Gruppe mit Erzeugern <math|\<pm\>1> ist. Tatsächlich lassen sich
  aus der Kommutativität der Addition in <math|<with|font|Bbb|Z>> einige
  wichtige Tatsachen folgern:

  <\proposition>
    <label|untergruppen-zyklisch>Sei <math|<around*|(|G,\<circ\>|)>> eine
    zyklische Gruppe. Dann gilt:

    <\indent>
      (1) <math|G> ist abelsch.

      (2) Ist <math|H\<leq\>G> eine Untergruppe von <math|G>, so ist auch
      <math|H> zyklisch.
    </indent>
  </proposition>

  <\proof>
    (1) Sei <math|G=\<langle\>x\<rangle\>> für ein <math|x\<in\>G>. Falls
    <math|y,z\<in\>G>, so existieren <math|n<rsub|1>,n<rsub|2>\<in\><with|font|Bbb|Z>>
    mit <math|x<rsup|n<rsub|1>>=y,x<rsup|n<rsub|2>>=z>. Aus der Bemerkung in
    Notation <reference|gruppe-potenz-schreibweise> folgt nun, dass

    <\equation*>
      y\<circ\>z=x<rsup|n<rsub|1>>\<circ\>x<rsup|n<rsub|2>>=x<rsup|n<rsub|1>+n<rsub|2>>=x<rsup|n<rsub|2>+n<rsub|1>>=x<rsup|n<rsub|2>>\<circ\>x<rsup|n<rsub|1>>=z\<circ\>y.
    </equation*>

    (2) Wir nehmen weiterhin an, dass <math|G=\<langle\>x\<rangle\>> für ein
    <math|x\<in\>G>. Falls <math|H=<around*|{|e|}>>, so ist nichts mehr zu
    zeigen. Andererseits, sei <math|e\<neq\>h\<in\>H> jenes Element dessen
    Exponent <math|n\<in\><with|font|Bbb|N>> in der Darstellung
    <math|x<rsup|n>=h> minimal ist. Wir wollen zeigen, dass
    <math|H=\<langle\>h\<rangle\>>. Offensichtlich gilt
    <math|H\<supseteq\>\<langle\>h\<rangle\>>, da <math|H> eine Untergruppe
    von <math|G> ist. Falls hingegen <math|y\<in\>H\<leq\>G> ist, so gibt es
    ein <math|m\<in\><with|font|Bbb|Z>> mit <math|x<rsup|m>=y>. Nach Satz
    <reference|division-mit-rest> gibt es auÿerdem
    <math|q,r\<in\><with|font|Bbb|Z>> mit <math|m=q n+r> und
    <math|0\<leq\>r\<less\>n>. Daraus folgt

    <\equation*>
      y=x<rsup|m>=x<rsup|q n+r>=x<rsup|q n>\<circ\>x<rsup|r>.
    </equation*>

    Wäre <math|r\<neq\>0>, so würde <math|x<rsup|r>=x<rsup|-q
    n>\<circ\>y\<in\>H> folgen, ein Widerspruch zur Minimalität von <math|n>.
    Also gilt <math|r=0> und insbesondere <math|y=x<rsup|q
    n>=<around*|(|x<rsup|n>|)><rsup|q>=h<rsup|q>>, nach der Bemerkung in
    Notation <reference|gruppe-potenz-schreibweise>. Demnach
    <math|H\<subseteq\>\<langle\>h\<rangle\>>, was zu zeigen war.
  </proof>

  Insbesondere folgt daraus, dass jede Untergruppe <math|H> der additiven
  Gruppe von <math|<with|font|Bbb|Z>> zyklisch ist, also von der Form <math|m
  <with|font|Bbb|Z>> für ein <math|m\<in\><with|font|Bbb|N>>. Diese
  Erkenntnis merken wir uns:

  <\corollary>
    <label|untergruppen-von-z>Alle Untergruppen von
    <math|<around*|(|<with|font|Bbb|Z>,+|)>> sind von der Form <math|m
    <with|font|Bbb|Z>> für ein <math|m\<in\><with|font|Bbb|N>>.
  </corollary>

  Insbesondere gibt uns Folgerung <reference|untergruppen-von-z> einen
  weiteren Hinweis für unsere Suche nach einer Verallgemeinerung der ganzen
  Zahlen. Zentral in Proposition <reference|untergruppen-zyklisch> ist
  nämlich die Division mit Rest in <math|<with|font|Bbb|Z>> (Satz
  <reference|division-mit-rest>), die fast automatisch impliziert, dass die
  Untergruppen von <math|<with|font|Bbb|Z>> eine bestimmte Form haben. Unsere
  Struktur <math|R> erfüllt also folgende Implikationskette:<label|kaestchen>

  <with|ornament-shape|cartoon|<\ornamented>
    <\padded-center>
      Existiert eine \RDivision mit Rest\P in <math|R>,

      so sind die echten <math|R>-\RUnterräume\P von <math|R> maximal
      eindimensional,

      und es existiert foglich eine Zerlegung aller Elemente von <math|R> in
      \Ratomare\P Einheiten.
    </padded-center>
  </ornamented>>

  Das führt uns zur Definition eines <em|Rings>.

  <\definition>
    Es sei <math|R> eine additive abelsche Gruppe zusammen mit einer
    Multiplikation \R<math|\<cdot\>>\P von <math|R\<times\>R\<rightarrow\>R>,
    sodass für alle <math|r,s,t\<in\>R> gilt:

    <\indent>
      (1) <math|r\<cdot\><around*|(|s\<cdot\>t|)>=<around*|(|r\<cdot\>s|)>\<cdot\>t>.<space|1em>(<em|Assoziativität
      von \R<math|\<cdot\>>\P>)

      (2) <math|r\<cdot\><around*|(|s+t|)>=<around*|(|r\<cdot\>s|)>+<around*|(|r\<cdot\>t|)>>
      und <math|<around*|(|r+s|)>\<cdot\>t=<around*|(|r\<cdot\>t|)>+<around*|(|s\<cdot\>t|)>>.<space|1em>(<em|Distributivität>)
    </indent>

    Dann heiÿt das Tripel <math|<around*|(|R,+,\<cdot\>|)>> ein <em|Ring>.
    Gilt ferner

    <\indent>
      (3) Es existiert ein Element <math|1\<in\>R>, sodass
      <math|1\<cdot\>r=r=r\<cdot\>1> für alle <math|r\<in\>R>,
    </indent>

    nennt man <math|R> einen <em|Ring mit Eins>. Ein Ring
    <math|<around*|(|R,+,\<cdot\>|)>> heiÿt <em|kommutativ> falls

    <\indent>
      (4) <math|r\<cdot\>s=s\<cdot\>r> für alle
      <math|r,s\<in\>R>.<space|1em>(<em|Kommutativität von
      \R<math|\<cdot\>>\P>)
    </indent>
  </definition>

  <\notation>
    Wie bei Gruppen lassen wir die Operationen \R<math|+>\P und
    \R<math|\<cdot\>>\P manchmal weg und bezeichnen bereits <math|R> als
    Ring, wenn klar ist, welche Addition/Multiplikation gemeint ist. Auÿerdem
    vereinbaren wir die übliche \RPunkt-vor-Strich\P-Rechnung, i.e.
    <math|<around*|(|r\<cdot\>s|)>+<around*|(|r\<cdot\>t|)>=r\<cdot\>s+r\<cdot\>t>.
    Wollen wir deutlich machen, dass wir vom Nullelement in <math|R> reden,
    schreiben wir manchmal <math|0<rsub|R>>; die meiste Zeit werden wir aber
    schlicht <math|0> schreiben und meinen damit das neutrale Element in
    <math|<around*|(|R,+|)>>.
  </notation>

  Analog zur Untergruppe definieren wir:

  <\definition>
    Eine Teilmenge <math|S> eines Rings <math|R=<around*|(|R,+,\<cdot\>|)>>,
    sodass auch <math|<around*|(|S,+,\<cdot\>|)>> ein Ring ist, heiÿt
    <em|Unterring> oder <em|Teilring> von <math|R> und wir schreiben
    <math|S\<leq\>R>. Hat <math|R> zusätzlich ein Einselement
    <math|1\<in\>R>, so verlangen wir, dass auch <math|1\<in\>S>.
  </definition>

  <\corollary>
    Sei <math|<around*|(|R,+,\<cdot\>|)>> ein Ring. Dann gilt:

    <\indent>
      (1) Es gilt <math|r\<cdot\>0=0=0\<cdot\>r> für alle <math|r\<in\>R>.

      (2) Es gilt <math|r\<cdot\><around*|(|-s|)>=-<around*|(|r\<cdot\>s|)>=<around*|(|-r|)>\<cdot\>s>
      für alle <math|r,s\<in\>R>.

      (3) Ist <math|<around*|(|R,+,\<cdot\>|)>> sogar ein Ring mit Eins, so
      ist das Einselement <math|1\<in\>R> eindeutig bestimmt.
    </indent>
  </corollary>

  <\proof>
    (1) Aus <math|r\<cdot\>0=r\<cdot\><around*|(|0+0|)>=r\<cdot\>0+r\<cdot\>0>
    folgt sofort <math|r\<cdot\>0=0> und ebenso für <math|0\<cdot\>r=0>.

    (2) Für die linke Gleichung ist <math|r\<cdot\>s+r\<cdot\><around*|(|-s|)>=0>
    zu zeigen. In der Tat,

    <\equation*>
      r\<cdot\>s+r\<cdot\><around*|(|-s|)>=r\<cdot\><around*|(|s+<around*|(|-s|)>|)>=r\<cdot\>0=0,
    </equation*>

    wegen (1). Ebenso für <math|<around*|(|-r|)>\<cdot\>s>.

    (3) Sei <math|1<rprime|'>\<in\>R> ein Element mit
    <math|1<rprime|'>\<cdot\>r=r> für alle <math|R>. Dann folgt insbesondere,
    dass <math|1<rprime|'>=1<rprime|'>\<cdot\>1=1>.
  </proof>

  <\definition>
    Sei <math|<around*|(|R,+,\<cdot\>|)>> ein Ring.

    <\indent>
      (1) Ein Element <math|0\<neq\>r\<in\>R> heiÿt <em|Linksnullteiler>,
      wenn <math|0\<neq\>s\<in\>R> existiert mit <math|r\<cdot\>s=0>. Analog
      definieren wir <em|Rechtsnullteiler>.

      (2) Ist <math|r> Links- oder Rechtsnullteiler, nennen wir <math|r>
      <em|Nullteiler>.

      (3) Besitzt <math|R> keine Nullteiler, nennen wir <math|R>
      <em|nullteilerfrei>.

      (4) Ist <math|R> ein nullteilerfreier kommutativer Ring mit Einselement
      <math|1\<neq\>0>, heiÿt <math|R> <em|Integritätsring> oder
      <em|Integritätsbereich>.
    </indent>
  </definition>

  <\example>
    <label|matrizenring>(1) Die ganzen Zahlen <math|<with|font|Bbb|Z>> bilden
    einen Integritätsbereich; die geraden Zahlen <math|2 <with|font|Bbb|Z>>
    bilden einen kommutativen Ring ohne Eins.

    (2) Offenbar sind <math|<with|font|Bbb|R>,<with|font|Bbb|Q>,<with|font|Bbb|C>>
    alle Beispiele von Integritätsbereichen.

    (3) Die komplexen <math|n\<times\>n>-Matrizen bilden einen Ring mit Eins,
    der für <math|n\<geq\>2> nicht kommutativ ist. Allgemein können wir für
    einen beliebigen Ring <math|R> den Matrizenring <math|M<around*|(|n,R|)>>
    aller <math|n\<times\>n>-Matrizen mit Einträgen aus <math|R>
    konstruieren. Auch dieser ist in der Regel für <math|n\<geq\>2> nicht
    kommutativ und ist ein Ring mit Eins, sofern auch <math|R> ein
    Einselement enthält.

    (4) Die Restklassen modulo <math|m> für <math|m\<in\><with|font|Bbb|N>>
    bilden einen kommutativen Ring mit Eins zusammen mit der Multiplikation

    <\equation*>
      <around*|(|r+m <with|font|Bbb|Z>|)>\<cdot\><around*|(|s+m
      <with|font|Bbb|Z>|)>=<around*|(|r\<cdot\>s|)>+m <with|font|Bbb|Z>.
    </equation*>

    Manchmal schreiben wir statt <math|<with|font|Bbb|Z>/m <with|font|Bbb|Z>>
    auch <math|<with|font|Bbb|Z><rsub|m>>. Offenbar hat
    <math|<with|font|Bbb|Z>/m <with|font|Bbb|Z>> genau dann Nullteiler, wenn
    <math|m> keine Primzahl ist.
  </example>

  <\definition>
    Es sei <math|<around*|(|R,+,\<cdot\>|)>> ein Ring mit Einselement. Sei
    <math|r\<in\>R>. Falls ein <math|s\<in\>R> existiert, sodass
    <math|r\<cdot\>s=1>, so heiÿt <math|s> ein <em|(multiplikatives)
    Rechtsinverses> von <math|r>. Falls <math|s\<cdot\>r=1>, dann heiÿt
    <math|s> ein <em|(multiplikatives) Linksinverses> von <math|R>. Besitzt
    <math|r\<in\>R> ein Links- und ein Rechtsinverses, dann stimmen diese
    überein und heiÿen schlicht das <em|multiplikative Inverse>
    <math|s=r<rsup|-1>> von <math|r>. Solch ein <math|r> nennen wir dann
    <em|Einheit> in <math|R>. Die Menge aller Einheiten bezeichnen wir mit
    <math|R<rsup|\<ast\>>>.
  </definition>

  <\lemma>
    <label|einheitengruppe>Sei <math|R> ein Ring. Dann ist
    <math|<around*|(|R<rsup|\<ast\>>,\<cdot\>|)>> eine Gruppe.
  </lemma>

  <\proof>
    Seien <math|a,b\<in\>R<rsup|\<ast\>>> beliebig. Dann gilt offenbar auch
    <math|a<rsup|-1>,b<rsup|-1>\<in\>R<rsup|\<ast\>>>, sodass

    <\equation*>
      <around*|(|a b|)> <around*|(|b<rsup|-1> a<rsup|-1>|)>=a <around*|(|b
      b<rsup|-1>|)> a<rsup|-1>=a a<rsup|-1>=1.
    </equation*>

    Das heiÿt <math|a b\<in\>R<rsup|\<ast\>>>. Es folgt, dass
    <math|R<rsup|\<ast\>>> mit der Multiplikation eine Gruppe ist.
  </proof>

  <\example>
    <label|einheiten-in-zm>(1) In <math|<around*|(|<with|font|Bbb|Z>,+,\<cdot\>|)>>
    gilt offenbar <math|<with|font|Bbb|Z><rsup|\<ast\>>=<around*|{|-1,1|}>>.
    Leicht lässt sich überprüfen, dass <math|<with|font|Bbb|Z><rsup|\<ast\>>>,
    wie in Lemma <reference|einheitengruppe> bewiesen, eine Gruppe mit der
    Multiplikation ist.

    (2) Sei <math|m\<geq\>1> eine ganze Zahl. Was sind die Einheiten in
    <math|<with|font|Bbb|Z>/m <with|font|Bbb|Z>>? Ist
    <math|a\<in\><with|font|Bbb|Z>/m <with|font|Bbb|Z>> eine Einheit, so
    existiert <math|a<rsup|-1>\<in\><with|font|Bbb|Z>/m <with|font|Bbb|Z>>
    mit <math|a a<rsup|-1>=1>, was äquivalent zu <math|m \<mid\>a
    a<rsup|-1>-1> ist. (Siehe Beispiel <reference|restklassen-modulo-m> (5)).
    Also gibt es <math|x\<in\><with|font|Bbb|Z>>, sodass <math|m x=a
    a<rsup|-1>-1> oder <math|a a<rsup|-1>-m x=1>. Nach Korollar
    <reference|lemma-von-bezout> folgt also, dass
    <math|<with|font-family|rm|ggT><around*|(|a,m|)>=1>. Tatsächlich gilt
    auch die Umkehrung: Aus <math|<with|font-family|rm|ggT><around*|(|a,m|)>=1>
    folgt <math|a x+m y=1> für <math|x,y\<in\><with|font|Bbb|Z>>, also
    <math|a x=1> in <math|<with|font|Bbb|Z>/m <with|font|Bbb|Z>>.

    (3) Die Euler'sche <math|\<varphi\>>-Funktion weist jeder ganzen Zahl
    <math|m\<geq\>1> die Anzahl der Einheiten in <math|<with|font|Bbb|Z>/m
    <with|font|Bbb|Z>> zu, also

    <\equation*>
      \<varphi\><around*|(|m|)>\<assign\><around*|\||<around*|(|<with|font|Bbb|Z>/m
      <with|font|Bbb|Z>|)><rsup|\<ast\>>|\|>.
    </equation*>

    Ist <math|p\<in\><with|font|Bbb|P>> und <math|k\<in\><with|font|Bbb|N>>,
    so gilt <math|\<varphi\><around*|(|p<rsup|k>|)>=p<rsup|k>-p<rsup|k-1>>.
    Nach (2) sind die Einheiten in <math|<with|font|Bbb|Z>/p<rsup|k>
    <with|font|Bbb|Z>> nämlich jene ganzen Zahlen, die zu <math|p<rsup|k>>
    teilerfremd sind. Aber nur die <math|p<rsup|k-1>> Zahlen <math|p,2
    p,\<ldots\>,p<rsup|k-1> p> sind zu <math|p> <em|nicht> teilerfremd, was
    <math|\<varphi\><around*|(|p<rsup|k>|)>=p<rsup|k>-p<rsup|k-1>>
    teilerfremde Zahlen übrig lässt.
  </example>

  Die Definition einer Einheit motiviert die Definition weiterer
  algebraischer Strukturen:

  <\definition>
    Ein Ring mit Eins, in dem alle von <math|0> verschiedenen Elemente
    Einheiten sind, heiÿt <em|Schiefkörper> oder <em|Divisionsring>. Ein
    kommutativer Divisionsring heiÿt <em|Körper>.
  </definition>

  <\example>
    <label|quaternionen>(1) Offenbar sind
    <math|<with|font|Bbb|Q>,<with|font|Bbb|R>,<with|font|Bbb|C>> alle Körper.

    (2) Ein fundamentales Beispiel für einen Schiefkörper liefern die
    <em|Quaternionen> <math|<with|font|Bbb|H>>. Die Bezeichnung geht auf
    Hamilton<\footnote>
      William Rowan Hamilton (1805 \U 1865), irischer Mathematiker und
      Physiker
    </footnote> zurück, der diese zuerst beschrieben hat. Dazu betrachten wir
    <math|<around*|{|1,\<mathi\>,<text|j>,<text|k>|}>> als Basis des
    vierdimensionalen reellen Vektorraumes <math|<with|font|Bbb|R><rsup|4>>
    mit der gewohnten komponentenweisen Addition und Skalarmultiplikation.

    <space|1em>Wir versehen diesen Raum nun mit einer zusätzlichen bilinearen
    Abbildung <math|<with|font|Bbb|R><rsup|4>\<times\><with|font|Bbb|R><rsup|4>\<rightarrow\><with|font|Bbb|R><rsup|4>>,
    welche durch folgende Multiplikationstabelle für die Basiselemente
    gegeben ist:

    <\padded-center>
      <math|<tabular*|<tformat|<cwith|1|1|1|-1|cell-tborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|5|5|cell-rborder|0ln>|<cwith|1|1|1|1|cell-tborder|0ln>|<cwith|5|5|1|1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<table|<row|<cell|>|<cell|1>|<cell|\<mathi\>>|<cell|<text|j>>|<cell|<text|k>>>|<row|<cell|1>|<cell|1>|<cell|\<mathi\>>|<cell|<text|j>>|<cell|<text|k>>>|<row|<cell|\<mathi\>>|<cell|\<mathi\>>|<cell|-1>|<cell|<text|k>>|<cell|-<text|j>>>|<row|<cell|<text|j>>|<cell|<text|j>>|<cell|-<text|k>>|<cell|-1>|<cell|<text|i>>>|<row|<cell|<text|k>>|<cell|<text|k>>|<cell|<text|j>>|<cell|-\<mathi\>>|<cell|-1>>>>>>
    </padded-center>

    Man bezeichnet das dadurch entstehende Produkt als das
    <em|quaternionische Produkt>. Für die Elemente aus
    <math|<with|font|Bbb|R><rsup|4>>, die mit diesen Operationen versehen
    sind, schreiben wir dann <math|<with|font|Bbb|H>>. Insbesondere gilt für
    die Basiselemente die wichtige Relation

    <\equation*>
      \<mathi\> <text|j> <text|k>=-1.
    </equation*>

    <space|1em>Wie aus der linearen Algebra bekannt ist, lässt sich das
    quaternionische Produkt in eindeutiger Weise zu einer linearen Abbildung
    auf <math|<with|font|Bbb|H>> fortsetzen. Es lässt sich zeigen, dass
    <math|<with|font|Bbb|H>> ein Schiefkörper ist, wobei wir sofort aus der
    Multiplikationstabelle entnehmen, dass die Quaternionenmultiplikation
    nicht kommutativ ist.

    (3) Aus Beispiel <reference|einheiten-in-zm> (2) entnehmen wir sofort,
    dass <math|<with|font|Bbb|Z>/m <with|font|Bbb|Z>> genau dann ein Körper
    ist, wenn <math|m> eine Primzahl ist. Wir schreiben dann statt
    <math|<with|font|Bbb|Z>/p <with|font|Bbb|Z>> auch
    <math|<with|font|Bbb|F><rsub|p>> (engl.: \R<em|field>\P) für
    <math|p\<in\><with|font|Bbb|P>>.
  </example>

  <\lemma>
    <label|koerper-integritaetsbereich>Jeder Körper <math|K> ist ein
    Integritätsbereich.
  </lemma>

  <\proof>
    Sei <math|r\<in\>K> nicht das Nullelement. Dann existiert ein
    multiplikatives Inverses <math|r<rsup|-1>\<in\>K>, sodass aus
    Multiplikation der Gleichung <math|r\<cdot\>s=0>, <math|s\<in\>K>, mit
    <math|r<rsup|-1>> von links auch <math|s=0> folgt. Offenbar gilt auch
    <math|1\<neq\>0>, sodass <math|K> tatsächlich ein Integritätsbereich ist.
  </proof>

  <\proposition>
    <label|endlicher-integritaetsbereich-koerper>Sei <math|R> ein endlicher
    Integritätsring. Dann ist <math|R> sogar ein Körper.
  </proposition>

  <\proof>
    Sei für <math|0\<neq\>r\<in\>R> die Abbildung <math|\<varphi\><rsub|r>
    :R\<rightarrow\>R> durch <math|\<varphi\><rsub|r><around*|(|s|)>=r s> für
    alle <math|s\<in\>R> definiert. Gilt <math|\<varphi\><rsub|r><around*|(|s<rsub|1>|)>=\<varphi\><rsub|r><around*|(|s<rsub|2>|)>>
    für <math|s<rsub|1>,s<rsub|2>\<in\>R>, so folgt <math|r s<rsub|1>=r
    s<rsub|2>>. Das heiÿt <math|r <around*|(|s<rsub|1>-s<rsub|2>|)>=r
    s<rsub|1>-r s<rsub|2>=0>; da <math|R> ein Integritätsbereich ist, folgt
    <math|s<rsub|1>-s<rsub|2>=0> bzw. <math|s<rsub|1>=s<rsub|2>>. Also ist
    <math|\<varphi\><rsub|r>> injektiv und da <math|R> endlich ist, sogar
    surjektiv, das heiÿt bijektiv. Dann existiert aber <math|s\<in\>R>,
    sodass <math|\<varphi\><rsub|r><around*|(|s|)>=1>, i.e. <math|r s=1>;
    also ist <math|r> eine Einheit. Da <math|r> beliebig gewählt worden ist,
    folgt, dass <math|R> ein Körper ist.
  </proof>

  Abschlieÿend noch folgende Erkenntnis vom Zahlentheoretiker John
  Wilson<\footnote>
    John Wilson (1741 \U 1793), britischer Mathematiker und Jurist
  </footnote>:

  <\lemma>
    <dueto|Wilson><label|satz-von-wilson>Sei <math|p\<in\><with|font|Bbb|P>>
    eine Primzahl. Dann gilt

    <\equation*>
      <around*|(|p-1|)>!\<equiv\>-1 <pmod|p>.
    </equation*>
  </lemma>

  <\proof>
    Da <math|p> eine Primzahl ist, ist <math|<with|font|Bbb|F><rsub|p>> ein
    Körper. Wir zeigen zunächst, dass die einzigen selbstinversen Elemente in
    diesem Körper <math|\<pm\>1> sind. Gilt nämlich <math|u<rsup|2>\<equiv\>1
    <pmod|p>>, erhalten wir

    <\equation*>
      <around*|(|u+1|)> <around*|(|u-1|)>\<equiv\>u<rsup|2>-1\<equiv\>0
      <pmod|p>.
    </equation*>

    Weil <math|<with|font|Bbb|F><rsub|p>> ein Integritätsbereich ist (Lemma
    <reference|koerper-integritaetsbereich>), folgt also
    <math|u\<equiv\>\<pm\>1 <pmod|p>>.

    <space|1em>Betrachten wir nun das Produkt

    <\equation*>
      <around*|(|p-1|)>!=<around*|(|p-1|)> <around*|(|p-2|)> \<cdots\>
      <around*|(|2|)> <around*|(|1|)>.
    </equation*>

    Aus dem vorherigen Absatz folgt, dass in dieser Liste für beliebiges
    <math|n\<in\><around*|{|2,\<ldots\>,p-2|}>> auch sein multiplikatives
    Inverses <math|n<rsup|-1>\<neq\>n> vorkommt. Weil multiplikative Inverse
    eindeutig sind, vereinfacht sich das Produkt also zu

    <\equation*>
      <around*|(|p-2|)> <around*|(|p-3|)> \<cdots\> <around*|(|3|)>
      <around*|(|2|)>\<equiv\>1 <pmod|p>,
    </equation*>

    d.h.

    <\equation*>
      <around*|(|p-1|)>!\<equiv\><around*|(|p-1|)> <around*|(|1|)>\<equiv\>-1
      <pmod|p>,
    </equation*>

    wie gewünscht.
  </proof>

  <section|Noethersche, faktorielle und euklidische Ringe>

  <\definition>
    (1) Es sei <math|R> ein Ring und <math|I\<subseteq\>R> eine Untergruppe
    von <math|<around*|(|R,+|)>>. Dann nennen wir <math|I> <em|Linksideal>
    von <math|R>, wenn

    <\equation*>
      r\<cdot\>x\<in\>I<text| für alle <math|r\<in\>R> und <math|x\<in\>I>.>
    </equation*>

    Analog heiÿt <math|I> <em|Rechtsideal> von <math|R>, wenn

    <\equation*>
      x\<cdot\>r\<in\>I<text| für alle <math|r\<in\>R> und <math|x\<in\>I>.>
    </equation*>

    Ist <math|I> sowohl Links- als auch Rechtsideal, dann heiÿt <math|I> ein
    (zweiseitiges) <em|Ideal>. Wir schreiben dann
    <math|I\<trianglelefteqslant\>R>.

    (2) Es sei <math|R> ein Ring mit Eins. Ein Ideal
    <math|I\<trianglelefteqslant\>R> heiÿt <em|endlich erzeugt>, wenn
    <math|n\<in\><with|font|Bbb|N>> und <math|a<rsub|1>,\<ldots\>,a<rsub|n>\<in\>R>
    existieren, sodass <math|I=<around*|{|<big|sum><rsub|i=1><rsup|n>a<rsub|i>
    r<rsub|i> <around*|\|||\<nobracket\>> r<rsub|i>\<in\>R|}>>; wir schreiben
    dann <math|I=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|n>|)>> und nennen
    <math|a<rsub|1>,\<ldots\>,a<rsub|n>> die Erzeuger von <math|I>. Falls
    <math|n=1>, nennen wir <math|I=<around*|(|a|)>> das <em|von <math|a>
    erzeugte Hauptideal> in <math|R>.

    (3) Ein kommutativer Ring mit Eins <math|R> heiÿt
    <em|noethersch><\footnote>
      Emmy Noether (1882 \U 1935), deutsche Mathematikerin
    </footnote>, wenn jedes Ideal von <math|R> endlich erzeugt ist. Ist
    <math|R> ein Integritätsbereich und jedes Ideal von <math|R> sogar ein
    Hauptideal, so heiÿt <math|R> ein <em|Hauptidealring><\footnote>
      Englisch: <em|principal ideal domain> (PID).
    </footnote> (HIR).
  </definition>

  <\example>
    (1) Jeder Ring <math|R> enthält die beiden (Haupt)ideale
    <math|<around*|{|0|}>> und <math|R>.

    (2) Für jedes <math|m\<in\><with|font|Bbb|N>> ist <math|m
    <with|font|Bbb|Z>> ein Ideal von <math|m <with|font|Bbb|Z>>, wie leicht
    überprüft werden kann.

    (3) Sei <math|K> ein Körper und <math|R> der Matrizenring über <math|K>
    aus Beispiel <reference|matrizenring>. Definieren wir

    <\equation*>
      I\<assign\><around*|{|<matrix|<tformat|<table|<row|<cell|a>|<cell|0>>|<row|<cell|b>|<cell|0>>>>>
      <around*|\|||\<nobracket\>> a,b\<in\>K|}><text| und
      >J\<assign\><around*|{|<matrix|<tformat|<table|<row|<cell|a>|<cell|b>>|<row|<cell|0>|<cell|0>>>>>
      <around*|\|||\<nobracket\>> a,b\<in\>K|}>,
    </equation*>

    so ist <math|I> ein Linksideal von <math|R> (aber kein Rechtsideal von
    <math|R>) und <math|J> ein Rechtsideal von <math|R> (aber kein Linksideal
    von <math|R>), denn

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>>>>>\<in\>I,<space|1em><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>\<in\>J<text|
      aber ><matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>>>>>\<cdot\><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>>>>>\<notin\>I\<cup\>J.
    </equation*>
  </example>

  <\lemma>
    Es sei <math|R> ein Ring und <math|I,J\<trianglelefteqslant\>R> Ideale.
    Dann sind auch <math|I\<cap\>J,I+J> und
    <math|I\<cdot\>J=<around*|{|<big|sum><rsub|i=1><rsup|n>r<rsub|i>
    s<rsub|i> <around*|\|||\<nobracket\>>
    n\<in\><with|font|Bbb|N>,r<rsub|i>\<in\>I,s<rsub|i>\<in\>J|}>> Ideale von
    <math|R>.
  </lemma>

  <\proof>
    Wir zeigen exemplarisch die erste Aussage; der Beweis, dass <math|I+J>
    und <math|I\<cdot\>J> Ideale sind, verläuft dann ähnlich.

    <space|1em>Sei dazu <math|x\<in\>I\<cap\>J> und <math|r\<in\>R> beliebig.
    Dann folgt <math|r x\<in\>I>, da <math|I> ein Ideal ist und ebenso
    <math|r x\<in\>J>, also <math|r x\<in\>I\<cap\>J>. Da <math|I> und
    <math|J> beide additive Untergruppen von <math|R> sind, ist auch
    <math|I\<cap\>J> eine additive Untergruppe von <math|R>. Es folgt, dass
    <math|I\<cap\>J> ein Ideal von <math|R> ist.
  </proof>

  <\example>
    Sei <math|R=<with|font|Bbb|Z>> und <math|a,b\<in\><with|font|Bbb|Z>>
    ganze Zahlen. Betrachten wir die Hauptideale <math|<around*|(|a|)>> und
    <math|<around*|(|b|)>>. Dann gilt:

    <\itemize-dot>
      <item><math|<around*|(|a|)>+<around*|(|b|)>=<around*|(|a,b|)>=<around*|(|<with|font-family|rm|ggT><around*|(|a,b|)>|)>>:
      Offenbar gilt <math|<around*|(|a|)>+<around*|(|b|)>=<around*|(|a,b|)>>,
      wir müssen also nur <math|<around*|(|a,b|)>=<around*|(|<with|font-family|rm|ggT><around*|(|a,b|)>|)>>
      zeigen. Sei <math|d=a r<rsub|1>+b r<rsub|2>> für
      <math|r<rsub|1>,r<rsub|2>\<in\><with|font|Bbb|Z>> beliebig. Da
      <math|<with|font-family|rm|ggT><around*|(|a,b|)>> sowohl <math|a> als
      auch <math|b> teilt, gilt insbesondere
      <math|d\<in\><around*|(|<with|font-family|rm|ggT><around*|(|a,b|)>|)>>.
      Die Umkehrung folgt wiederum aus Folgerung
      <reference|lemma-von-bezout-2>.

      <item><math|<around*|(|a|)>\<cap\><around*|(|b|)>=<around*|(|<with|font-family|rm|kgV><around*|(|a,b|)>|)>>:
      Falls <math|d\<in\><around*|(|a|)>\<cap\><around*|(|b|)>>, existieren
      <math|r<rsub|1>,r<rsub|2>\<in\><with|font|Bbb|Z>> mit <math|d=a
      r<rsub|1>> und <math|d=b r<rsub|2>>, sodass <math|d> alle Primfaktoren
      von <math|a> und <math|b> enthält, also
      <math|<with|font-family|rm|kgV><around*|(|a,b|)>\<mid\>d>. Es folgt
      <math|d\<in\><around*|(|<with|font-family|rm|kgV><around*|(|a,b|)>|)>>.
      Umgekehrt, ist <math|d\<in\><around*|(|<with|font-family|rm|kgV><around*|(|a,b|)>|)>>,
      so gilt erneut <math|<with|font-family|rm|kgV><around*|(|a,b|)>\<mid\>d>,
      d.h. <math|d> enthält alle Primfaktoren von
      <math|<with|font-family|rm|kgV><around*|(|a,b|)>>, insbesondere jene
      von <math|a> und jene von <math|b>, sodass
      <math|d\<in\><around*|(|a|)>> und <math|d\<in\><around*|(|b|)>>.

      <item><math|<around*|(|a|)>\<cdot\><around*|(|b|)>=<around*|(|a b|)>>:
      Sei <math|d=<big|sum><rsub|i=1><rsup|n><around*|(|a r<rsub|i>|)>
      <around*|(|b s<rsub|i>|)>> für <math|r<rsub|i>,s<rsub|i>\<in\><with|font|Bbb|Z>,1\<leq\>i\<leq\>n>
      beliebig. Dann gilt <math|d=<big|sum><rsub|i=1><rsup|n><around*|(|a
      r<rsub|i>|)> <around*|(|b s<rsub|i>|)>=<around*|(|a b|)>
      <around*|(|<big|sum><rsub|i=1><rsup|n>r<rsub|i> s<rsub|i>|)>,> also
      <math|d\<in\><around*|(|a b|)>>. Die Umkehrung ist offensichtlich.
    </itemize-dot>
  </example>

  <\lemma>
    <label|koerper-noethersch>Sei <math|R> ein kommutativer Ring mit Eins.
    Dann ist <math|R> genau dann ein Körper, wenn <math|R> nur zwei Ideale
    enthält.
  </lemma>

  <\proof>
    Sei zunächst vorausgesetzt, dass <math|R> ein Körper ist. Dann sind die
    einzigen Ideale von <math|R> das Nullideal <math|<around*|{|0|}>> und
    <math|R> selbst. In der Tat, falls <math|I\<neq\><around*|{|0|}>> ein
    Ideal ist, so enthält es <math|0\<neq\>x\<in\>I\<subseteq\>R>. Da
    <math|R> ein Körper ist, existiert <math|x<rsup|-1>\<in\>R> mit <math|1=x
    x<rsup|-1>\<in\>I>. Daraus folgt aber, dass <math|I=R> gelten muss.

    <space|1em>Umgekehrt, sei <math|R> ein kommutativer Ring mit Eins mit
    genau zwei Idealen. Diese müssen <math|<around*|{|0|}>> und <math|R>
    sein. Falls <math|0\<neq\>r\<in\>R>, so muss offenbar
    <math|<around*|(|r|)>\<neq\><around*|{|0|}>> sein, also
    <math|<around*|(|r|)>=R>. Aber dann gilt insbesondere, dass
    <math|1\<in\>R>, d.h. es existiert <math|r<rsup|-1>\<in\>R>, sodass
    <math|1=r r<rsup|-1>\<in\><around*|(|r|)>>. Es folgt, dass <math|r> eine
    Einheit ist und <math|R> ein Körper.
  </proof>

  Wir untersuchen nun eine bestimmte Konstruktion, um aus einem beliebigen
  Ring <math|R> einen weiteren Ring <math|R> zu \Rschöpfen\P. Es stellt sich
  dann die Frage, welche Eigenschaften diesem Ring von <math|R> vererbt
  werden.

  <\example>
    <label|polynomringe>Es sei <math|R> ein Ring. Mit <math|R<around*|[|X|]>>
    bezeichnen wir die Menge aller <math|R>-wertigen Folgen
    <math|<around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>> mit
    <math|a<rsub|i>\<in\>R>, sodass <math|a<rsub|i>=0> für alle bis auf
    endlich viele <math|i\<in\><with|font|Bbb|N><rsub|0>>. Dann ist
    <math|R<around*|[|X|]>> ein Ring vermöge der Operationen

    <math|<align*|<tformat|<table|<row|<cell|<around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>+<around*|(|b<rsub|0>,b<rsub|1>,\<ldots\>|)>\<assign\>>|<cell|<around*|(|a<rsub|0>+b<rsub|0>,a<rsub|1>+b<rsub|1>,\<ldots\>|)>,>>|<row|<cell|<around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>\<cdot\><around*|(|b<rsub|0>,b<rsub|1>,\<ldots\>|)>\<assign\>>|<cell|<around*|(|c<rsub|0>,c<rsub|1>,\<ldots\>|)><text|
    mit >c<rsub|k>=<big|sum><rsub|i=0><rsup|k>a<rsub|k-i> b<rsub|i><text| für
    >k\<geq\>0.>>>>>>

    Offenbar identifiziert die injektive Einbettungsabbildung
    <math|\<iota\><rsub|R> :R\<rightarrow\>R<around*|[|X|]>,\<iota\><rsub|R><around*|(|r|)>\<assign\><around*|(|r,0,0,\<ldots\>|)>>
    den Ring <math|R> mit einem Teilring <math|\<iota\><rsub|R><around*|(|R|)>\<leq\>R<around*|[|X|]>>
    von <math|R<around*|[|X|]>>.

    <space|1em>Ist <math|R> ein Ring mit Einselement <math|1>, dann ist
    <math|<around*|(|1,0,0,\<ldots\>|)>> ein Einselement in
    <math|R<around*|[|X|]>>, sodass wir

    <\equation*>
      X\<assign\><around*|(|0,1,0,\<ldots\>|)>
    </equation*>

    definieren können. Dann gilt offenbar
    <math|X<rsup|n>=<around*|(|0,\<ldots\>,0,1,0,\<ldots\>|)>> für alle
    <math|n\<in\><with|font|Bbb|N><rsub|0>>. Setzen wir für <math|a\<in\>R>
    <math|a X<rsup|n>=\<iota\><rsub|R><around*|(|a|)> X<rsup|n>> und
    <math|X<rsup|n> a=X<rsup|n> \<iota\><rsub|R><around*|(|a|)>>, dann gilt
    <math|a X<rsup|n>=X<rsup|n> a>, sodass wir jedes Element
    <math|f\<in\>R<around*|[|X|]>> in der Form

    <\equation*>
      f=<big|sum><rsub|i=0><rsup|n>a<rsub|i> X<rsup|i><text| für ein
      >n\<in\><with|font|Bbb|N><rsub|0>
    </equation*>

    darstellen können.

    <space|1em>Ist <math|f\<neq\>0>, so setzen wir voraus, dass <math|n>
    maximal mit der Eigenschaft <math|a<rsub|n>\<neq\>0> gewählt worden ist.
    Die Koeffizienten <math|a<rsub|0>,\<ldots\>,a<rsub|n>\<in\>R> sind dann
    eindeutig bestimmt und wir nennen <math|n> den <em|Grad von <math|f>>.
    Wir schreiben <math|deg<around*|(|f|)>\<assign\>n>, wobei wir
    insbesondere <math|deg<around*|(|0|)>=-\<infty\>> setzen.

    <space|1em>Den Ring <math|R<around*|[|X|]>> nennen wir dann
    <em|Polynomring über <math|R> mit Variablen <math|X>> und seine Elemente
    <em|Polynome in <math|X>> (mit Koeffizienten in <math|R>). Die Elemente
    der Menge <math|\<iota\><rsub|R><around*|(|R|)>> nennen wir auÿerdem
    <em|konstante Polynome>.

    <space|1em>Der Polynomring <math|R<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>>
    in <math|n> Variablen <math|X<rsub|1>,\<ldots\>,X<rsub|n>> ist dann
    rekursiv definiert durch

    <\equation*>
      R<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>\<assign\><around*|(|R<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n-1>|]>|)><around*|[|X<rsub|n>|]>
    </equation*>

    für <math|n\<geq\>2>. Sei beispielsweise

    <\equation*>
      f<around*|(|X,Y|)>=a<rsub|0 0>+a<rsub|1 0> X+a<rsub|0 1> Y+a<rsub|2 0>
      X<rsup|2>+a<rsub|1 1> X Y+a<rsub|0 2> Y<rsup|2>.
    </equation*>

    Dann lässt sich <math|f> als <math|f<around*|(|X,Y|)>=<around*|(|<wide*|a<rsub|0
    0>+a<rsub|1 0> X+a<rsub|2 0> X<rsup|2>|\<wide-underbrace\>><rsub|\<in\>R<around*|[|X|]>>|)>+<around*|(|<wide*|a<rsub|1
    1> X+a<rsub|0 1>|\<wide-underbrace\>><rsub|\<in\>R<around*|[|X|]>>|)>
    Y+<around*|(|<wide*|a<rsub|0 2>|\<wide-underbrace\>><rsub|\<in\>R<around*|[|X|]>>|)>
    Y<rsup|2>> schreiben.
  </example>

  Folgende Eigenschaften werden von <math|R> an <math|R<around*|[|X|]>>
  weitergegeben.

  <\proposition>
    <label|polynomring-proposition>Sei <math|R> ein Ring. Dann gilt:

    <\indent>
      (1) Ist <math|R> kommutativ, so ist auch <math|R<around*|[|X|]>>
      kommutativ.

      (2) Ist <math|R> nullteilerfrei, so ist auch <math|R<around*|[|X|]>>
      nullteilerfrei.

      (3) Ist <math|R> ein Integritätsbereich, so ist auch
      <math|R<around*|[|X|]>> ein Integritätsbereich.
    </indent>
  </proposition>

  <\proof>
    (1) Sei <math|R> kommutativ. Eine Rechnung zeigt, dass

    <math|<align*|<tformat|<table|<row|<cell|<around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>\<cdot\><around*|(|b<rsub|0>,b<rsub|1>,\<ldots\>|)>=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|0>a<rsub|0-i>
    b<rsub|0>,<big|sum><rsub|i=0><rsup|1>a<rsub|1-i>
    b<rsub|0>,\<ldots\>|)>=<around*|(|<big|sum><rsub|i=0><rsup|0>b<rsub|0-i>
    a<rsub|0>,<big|sum><rsub|i=0><rsup|1>b<rsub|1-i>
    a<rsub|0>,\<ldots\>|)>>>|<row|<cell|=>|<cell|<around*|(|b<rsub|0>,b<rsub|1>,\<ldots\>|)>\<cdot\><around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>>>>>>>

    für alle <math|<around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>> und
    <math|<around*|(|b<rsub|0>,b<rsub|1>,\<ldots\>|)>\<in\>R<around*|[|X|]>>,
    sodass auch <math|R<around*|[|X|]>> kommutativ ist.

    (2) Sei <math|R> nullteilerfrei und <math|<around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>,<around*|(|b<rsub|0>,b<rsub|1>,\<ldots\>|)>\<in\>R<around*|[|X|]>>
    nicht das Nullelement. Dann existieren minimale Indizes
    <math|k<rsub|1>,k<rsub|2>\<in\><with|font|Bbb|N><rsub|0>>, sodass
    <math|a<rsub|k<rsub|1>>\<neq\>0> und <math|b<rsub|k<rsub|2>>\<neq\>0>.
    Sei <math|k\<assign\>k<rsub|1>+k<rsub|2>>; das <math|k>-te Glied des
    Produktes dieser Folgen ist dann durch
    <math|<big|sum><rsub|i=0><rsup|k>a<rsub|k-i> b<rsub|i>> gegeben. Ist
    <math|i=0,\<ldots\>,k<rsub|2>-1>, dann ist offenbar <math|b<rsub|i>=0>.
    Falls <math|i=k<rsub|2>+1,\<ldots\>,k<rsub|1>+k<rsub|2>>, dann

    <\equation*>
      k-i\<leq\>k-<around*|(|k<rsub|2>+1|)>=<around*|(|k<rsub|1>+k<rsub|2>|)>-1=k<rsub|1>-1,
    </equation*>

    sodass <math|a<rsub|k-i>=0> für diese <math|i>. Also verbleibt nur der
    Summand <math|a<rsub|k<rsub|1>> b<rsub|k<rsub|2>>>, der nach Annahme
    jedenfalls nicht Null ist. Daraus folgt nun unmittelbar, dass
    <math|<around*|(|a<rsub|0>,a<rsub|1>,\<ldots\>|)>\<cdot\><around*|(|b<rsub|0>,b<rsub|1>,\<ldots\>|)>\<neq\>0>,
    i.e. <math|R<around*|[|X|]>> ist nullteilerfrei.

    (3) Sei <math|R> nun ein Integritätsbereich. Die Kommutativität und
    Nullteilerfreiheit von <math|R<around*|[|X|]>> folgt aus (1) und (2).
    Offenbar ist auch <math|<around*|(|1,0,\<ldots\>|)>\<neq\><around*|(|0,0,\<ldots\>|)>>,
    also ist auch <math|R<around*|[|X|]>> ein Integritätsbereich.
  </proof>

  <\example>
    <label|zx-nicht-hauptidealring>Der Polynomring
    <math|<with|font|Bbb|Z><around*|[|X|]>> ist kein Hauptidealring, da das
    Ideal <math|<around*|(|2,X|)>> kein Hauptideal ist. Wäre nämlich
    <math|<around*|(|2,X|)>=<around*|(|f|)>> für ein
    <math|f\<in\><with|font|Bbb|Z><around*|[|X|]>>, so würde
    <math|2\<in\><around*|(|f|)>> und <math|X\<in\><around*|(|f|)>> folgen.
    Das ist nur möglich, falls <math|f=\<pm\>1>. Aber dann folgt
    <math|<around*|(|2,X|)>=<around*|(|f|)>=<with|font|Bbb|Z><around*|[|X|]>>,
    was offenbar nicht der Fall ist.
  </example>

  Nun zu einem bekannten Ergebnis aus der kommutativen Algebra. Er stammt von
  <\footnote>
    David Hilbert (1862 \U 1943), deutscher Mathematiker, Physiker und
    Philosoph
  </footnote>.

  <\theorem>
    <dueto|Hilbert'scher Basissatz><label|hilbert-basissatz>Sei <math|R> ein
    noetherscher Ring. Dann ist auch <math|R<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>>
    noethersch.
  </theorem>

  <\proof>
    Zeigen wir den Satz für <math|n=1>, so ergibt sich induktiv, dass der
    Satz für alle <math|n\<in\><with|font|Bbb|N>> hält.\ 

    <space|1em>Betrachten wir für <math|R> noethersch also den Polynomring in
    einer Variablen <math|R<around*|[|X|]>>. Sei indirekt angenommen, dass
    <math|R<around*|[|X|]>> nicht noethersch ist. Dann existiert ein Ideal
    <math|I\<subseteq\>R<around*|[|X|]>>, das nicht endlich erzeugt ist. Wir
    konstruieren nun rekursiv eine Folge von Polynomen
    <math|<around*|(|f<rsub|k>|)><rsub|k\<in\><with|font|Bbb|N>>> in
    <math|I>:

    <\indent>
      (1) Sei <math|f<rsub|1>> ein von Null verschiedenes Polynom in <math|I>
      mit minimalem Grad.

      (2) Für <math|k\<geq\>1>, sei <math|I<rsub|k>\<assign\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|k>|)>>
      das von <math|f<rsub|1>,\<ldots\>,f<rsub|k>> erzeugte Ideal. Da
      <math|I> nicht endlich erzeugt ist, ist <math|I<rsub|k>> eine echte
      Teilmenge von <math|I>. Wir können also <math|f<rsub|k+1>> als ein
      Polynom minimalen Grades in <math|I\<setminus\>I<rsub|k>> wählen.
    </indent>

    So ergibt sich eine Folge von Polynomen mit
    <math|deg<around*|(|f<rsub|1>|)>\<leq\>deg<around*|(|f<rsub|2>|)>\<leq\>deg<around*|(|f<rsub|3>|)>\<leq\>\<cdots\>>.
    Sei <math|d<rsub|k>\<assign\>deg<around*|(|f<rsub|k>|)>> und sei
    <math|a<rsub|k>\<in\>R> der Leitkoeffizient von <math|f<rsub|k>> für
    jedes <math|k\<geq\>1>. Betrachten wir das von diesen Leitkoeffizienten
    in <math|R> erzeugte Ideal <math|J\<assign\><around*|(|a<rsub|1>,a<rsub|2>,a<rsub|3>,\<ldots\>|)>\<subseteq\>R>.
    Da <math|R> noethersch ist, ist <math|J> endlich erzeugt. Es gibt also
    ein <math|m\<in\><with|font|Bbb|N>> mit
    <math|J=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|m>|)>><\footnote>
      Wir werden in Proposition <reference|noethersche-ringe-proposition>
      sehen, warum die Erzeuger von <math|J> auch unter den <math|a<rsub|k>>
      sein müssen.
    </footnote>. Insbesondere liegt der Leitkoeffizient <math|a<rsub|m+1>> in
    <math|J>, sodass Elemente <math|r<rsub|1>,\<ldots\>,r<rsub|m>\<in\>R> mit
    <math|a<rsub|m+1>=<big|sum><rsub|i=1><rsup|m>r<rsub|i> a<rsub|i>>
    existieren.

    <space|1em>Wir setzen nun

    <\equation*>
      h\<assign\><big|sum><rsub|i=1><rsup|m>r<rsub|i>
      X<rsup|d<rsub|m+1>-d<rsub|i>> f<rsub|i>.
    </equation*>

    Da <math|d<rsub|i>\<leq\>d<rsub|m+1>> für <math|i\<leq\>m> gilt, sind die
    Exponenten <math|d<rsub|m+1>-d<rsub|i>> nicht negativ, also ist <math|h>
    wohldefiniert. Weiterhin gilt <math|h\<in\>I<rsub|m>=<around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)>>
    mit <math|deg<around*|(|h|)>=d<rsub|m+1>> und Leitkoeffizient
    <math|<big|sum><rsub|i=1><rsup|m>r<rsub|i> a<rsub|i>=a<rsub|m+1>>.
    Betrachten wir nun das Polynom <math|g\<assign\>f<rsub|m+1>-h>. Dann
    folgt aus <math|f<rsub|m+1>\<in\>I,h\<in\>I<rsub|m>\<subseteq\>I>, dass
    <math|g=f<rsub|m+1>-h\<in\>I> und <math|g\<notin\>I<rsub|m>>, da sonst
    <math|f<rsub|m+1>=g+h\<in\>I<rsub|m>>; also
    <math|g\<in\>I\<setminus\>I<rsub|m>>. Aber nach Definition ist
    <math|deg<around*|(|g|)>\<less\>deg<around*|(|f<rsub|m+1>|)>>. Wir haben
    also ein Polynom <math|g\<in\>I\<setminus\>I<rsub|m>> gefunden, dessen
    Grad echt kleiner als der Grad von <math|f<rsub|m+1>> ist, im Widerspruch
    zur Wahl von <math|f<rsub|m+1>> als Polynom minimalen Grades in
    <math|I\<setminus\>I<rsub|m>>.
  </proof>

  Aus Satz <reference|hilbert-basissatz> lässt sich ein interessantes
  (Gegen)beispiel gewinnen.

  <\example>
    <label|noethersch-aber-kein-hir>Wir betrachten den Polynomring
    <math|<with|font|Bbb|Q><around*|[|X<rsub|1>,X<rsub|2>|]>=<with|font|Bbb|Q><around*|[|X,Y|]>>
    in zwei Variablen über den rationalen Zahlen. Nach Lemma
    <reference|koerper-noethersch> ist <math|<with|font|Bbb|Q>> ein
    Hauptidealring und daher noethersch, also ist nach Satz
    <reference|hilbert-basissatz> auch <math|<with|font|Bbb|Q><around*|[|X,Y|]>>
    noethersch. Sei <math|I\<assign\><around*|(|X,Y|)>> die Menge aller
    Polynome in <math|<with|font|Bbb|Q><around*|[|X,Y|]>> ohne konstante
    Koeffizienten; dann ist <math|I> kein Hauptideal. In der Tat, wäre
    <math|I=<around*|(|f|)>> für ein <math|f\<in\><with|font|Bbb|Q><around*|[|X,Y|]>>,
    so würde <math|f <around*|\|||\<nobracket\>> X> und <math|f \<mid\>Y>
    folgen, i.e. <math|f=\<pm\>1>. Also <math|I=<around*|(|f|)>=<with|font|Bbb|Q><around*|[|X,Y|]>>,
    was offenbar ein Widerspruch ist. Der Ring
    <math|<with|font|Bbb|Q><around*|[|X,Y|]>> ist also ein noetherscher Ring,
    der kein Hauptidealring ist.
  </example>

  Diese Überlegungen dienen als erster Schritt in unserer
  Konkretisierung/Präzisierung von Kästchen <reference|kaestchen>: Ideale
  scheinen eine gute Verallgemeinerung des Begriffes eines
  \R<math|R>-Unterraums\P zu sein. Wir fahren auf diese Art und Weise fort.

  <\definition>
    Sei <math|R> ein kommutativer Ring mit Eins mit <math|a,b\<in\>R>. Wir
    sagen, dass <math|a> ein <em|Teiler> von <math|b> ist, falls ein Element
    <math|r\<in\>R> existiert, sodass <math|a r=b>. Wir schreiben dann
    <math|a \<mid\>b>, in Worten \R<math|a> teilt <math|b>\P.
  </definition>

  <\definition>
    Sei <math|R> ein kommutativer Ring mit Eins mit <math|a,b\<in\>R>. Wir
    sagen, dass <math|a> und <math|b> <em|zueinander assoziiert sind>, falls
    eine Einheit <math|\<varepsilon\>\<in\>R<rsup|\<ast\>>> existiert, sodass
    <math|a=\<varepsilon\> b>. Wir schreiben dann <math|a\<sim\>b>.
  </definition>

  Die Ähnlichkeit zu den analogen Definitionen in <math|<with|font|Bbb|Z>>
  ist kaum zu übersehen. Entsprechend übertragen sich Teile des folgenden
  Lemmas fast wortgleich aus Lemma <reference|teilbarkeit-lemma>.

  <\lemma>
    <label|teilbarkeit-lemma-ring>Sei <math|R> ein kommutativer Ring mit
    Eins. Dann gilt:

    <\indent>
      (1) Die Relation \R<math|\<sim\>>\P ist auf <math|R> eine
      Äquivalenzrelation.

      (2) Ist <math|R> sogar ein Integritätsbereich, so gilt <math|a
      \<mid\>b> und <math|b \<mid\>a> genau dann, wenn <math|a\<sim\>b>.

      (3) Falls <math|b \<mid\>a> für <math|a,b\<in\>R>, so folgt <math|b c
      \<mid\>a c> für alle <math|c\<in\>R>.

      (4) Sei <math|a\<in\>R> ein Teiler von
      <math|b<rsub|1>,\<ldots\>,b<rsub|n>\<in\>R,n\<in\><with|font|Bbb|N>>
      und seien <math|c<rsub|1>,\<ldots\>,c<rsub|n>\<in\>R> beliebig. Dann
      folgt, dass <math|a \<mid\><big|sum><rsub|i=1><rsup|n>c<rsub|i>
      b<rsub|i>>.
    </indent>
  </lemma>

  <\proof>
    (1) Die Reflexivität folgt aus <math|a=1\<cdot\>a>. Die Symmetrie folgt
    aus

    <\equation*>
      a\<sim\>b<space|1em>\<Leftrightarrow\><space|1em>a=\<varepsilon\>\<cdot\>b<space|1em>\<Leftrightarrow\><space|1em>\<varepsilon\><rsup|-1>\<cdot\>a=b<space|1em>\<Leftrightarrow\><space|1em>b\<sim\>a
    </equation*>

    für eine Einheit <math|\<varepsilon\>\<in\>R<rsup|\<ast\>>>. Für die
    Transitivität sei angemerkt, dass falls <math|a\<sim\>b> und
    <math|b\<sim\>c>, Einheiten <math|\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>\<in\>R<rsup|\<ast\>>>
    existieren, sodass <math|a=\<varepsilon\><rsub|1>\<cdot\>b> und
    <math|b=\<varepsilon\><rsub|2>\<cdot\>c>, also

    <\equation*>
      a=\<varepsilon\><rsub|1>\<cdot\>b=\<varepsilon\><rsub|1>\<cdot\><around*|(|\<varepsilon\><rsub|2>\<cdot\>c|)>=<around*|(|\<varepsilon\><rsub|1>\<cdot\>\<varepsilon\><rsub|2>|)>\<cdot\>c
    </equation*>

    für die Einheit <math|\<varepsilon\><rsub|1>\<cdot\>\<varepsilon\><rsub|2>\<in\>R<rsup|\<ast\>>>
    (nach Lemma <reference|einheitengruppe>).

    (2) Sei zunächst vorausgesetzt, dass <math|a \<mid\>b> und <math|b
    \<mid\>a>. Dann ist <math|a \<varepsilon\><rsub|1>=b> und <math|b
    \<varepsilon\><rsub|2>=a> für <math|\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>\<in\>R>.
    Also

    <\equation*>
      b=a \<varepsilon\><rsub|1>=<around*|(|b \<varepsilon\><rsub|2>|)>
      \<varepsilon\><rsub|1>=b <around*|(|\<varepsilon\><rsub|2>
      \<varepsilon\><rsub|1>|)>.
    </equation*>

    Da <math|R> ein Integritätsbereich ist, folgt
    <math|\<varepsilon\><rsub|2> \<varepsilon\><rsub|1>=1>, also insbesondere
    <math|\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>\<in\>R<rsup|\<ast\>>>.
    Aber das heiÿt <math|a\<sim\>b>. Die Umkehrung folgt unmittelbar.

    (3) & (4) Der Beweis verläuft wie in <math|<with|font|Bbb|Z>> (siehe
    Lemma <reference|teilbarkeit-lemma>).
  </proof>

  <\definition>
    Sei <math|R> ein kommutativer Ring mit Eins. Ein Element
    <math|p\<in\>R\<setminus\>R<rsup|\<ast\>>> ungleich Null heiÿt
    <em|irreduzibel>, wenn aus <math|p=a\<cdot\>b> stets folgt, dass <math|a>
    oder <math|b> eine Einheit ist. Ferner heiÿt <math|p> <em|prim>, wenn für
    alle <math|a,b\<in\>R> aus <math|p \<mid\>a b> auch <math|p \<mid\>a>
    oder <math|p \<mid\>b> folgt.
  </definition>

  <\example>
    (1) In <math|<with|font|Bbb|Z>> sind die irreduziblen Elemente von der
    Form <math|\<pm\>p> für eine Primzahl <math|p\<in\><with|font|Bbb|P>>.

    (2) Wegen <math|0=0\<cdot\>0> ist <math|0\<in\>R> für einen beliebigen
    kommutativen Ring mit Eins nicht irreduzibel.

    (3) Sind <math|p,p<rprime|'>\<in\>R> mit <math|p\<sim\>p<rprime|'>> und
    ist <math|p> sogar irreduzibel, so ist auch <math|p<rprime|'>>
    irreduzibel. Es gilt nämlich <math|p=\<varepsilon\>\<cdot\>p<rprime|'>>
    für eine Einheit <math|\<varepsilon\>>. Ist also
    <math|p<rprime|'>=a\<cdot\>b> für <math|a,b\<in\>R>, so auch
    <math|p=\<varepsilon\>\<cdot\>p<rprime|'>=\<varepsilon\> a b>, i.e.
    <math|\<varepsilon\> a> oder <math|b> ist eine Einheit. Da
    <math|\<varepsilon\>\<in\>R<rsup|\<ast\>>>, muss also insbesondere
    <math|a> oder <math|b> eine Einheit sein.

    (4) Sind <math|p,p<rprime|'>\<in\>R> mit <math|p\<sim\>p<rprime|'>> und
    ist <math|p> sogar prim, so ist auch <math|p<rprime|'>> prim. Gilt
    <math|p<rprime|'> \<mid\>a b>, dann folgt aus Lemma
    <reference|teilbarkeit-lemma-ring>, dass
    <math|p=\<varepsilon\>\<cdot\>p<rprime|'> \<mid\>\<varepsilon\> a b>,
    sodass <math|p \<mid\>\<varepsilon\> a> oder <math|p \<mid\>b>. Also
    folgt <math|p<rprime|'> \<mid\>p \<mid\>\<varepsilon\> a> oder
    <math|p<rprime|'> \<mid\>p \<mid\>b>, i.e. <math|p<rprime|'> \<mid\>a>
    oder <math|p<rprime|'>\<mid\>b>.
  </example>

  <\lemma>
    <label|prim-irreduzibel>Sei <math|R> ein Integritätsbereich. Ist
    <math|p\<in\>R> prim, dann auch irreduzibel.
  </lemma>

  <\proof>
    Sei vorausgesetzt, dass <math|p\<in\>R> Primelement ist mit
    <math|p=a\<cdot\>b> für fixierte <math|a,b\<in\>R>. Dann ist <math|p> per
    Definition keine Einheit und nicht Null; wir müssen also nur zeigen, dass
    <math|a> oder <math|b> eine Einheit ist. Da <math|p> prim ist, teilt
    <math|p> entweder <math|a> oder <math|b>. Nehmen wir beispielsweise an,
    dass <math|p \<mid\>a>. Dann gilt <math|a=p r> für <math|r\<in\>R>,
    sodass <math|p=a b=<around*|(|p r|)> b=p <around*|(|r b|)>>. Aber
    <math|R> ist ein Integritätsbereich, also muss schon folgen, dass <math|r
    b=1>, i.e., dass <math|b> Einheit ist.
  </proof>

  <\example>
    (1) Die Voraussetzung in Lemma <reference|prim-irreduzibel>, dass
    <math|R> ein Integritätsbereich ist, ist wesentlich. In
    <math|<with|font|Bbb|Z>/6 <with|font|Bbb|Z>> ist leicht zu überprüfen,
    dass die Elemente <math|2,3,4> prim sind, aber

    <\equation*>
      2=2\<cdot\>4,<space|1em>4=2\<cdot\>2,<space|1em>3=3\<cdot\>3
    </equation*>

    gilt, also keines davon irreduzibel ist.

    (2) Die Umkehrung von Lemma <reference|prim-irreduzibel> gilt im
    Allgemeinen nicht. Sei <math|R\<assign\><with|font|Bbb|Q>+<with|font|Bbb|R><around*|[|X|]>>
    der Ring der reellen Polynome mit rationalen konstanten Koeffizienten.
    Dann ist das Polynom <math|X> in <math|R> irreduzibel, aber nicht prim:
    Aus <math|X \<mid\><around*|(|<sqrt|2> X|)><rsup|2>> folgt nicht, dass
    <math|X \<mid\><sqrt|2> X> in <math|R>, da <math|<sqrt|2>\<notin\>R>.
  </example>

  Die Definition von primen und irreduziblen Elementen motiviert die folgende
  Definition.

  <\definition>
    <label|ufd-definition>Sei <math|R> ein Integritätsbereich. Dann heiÿt
    <math|R> ein <em|Ring mit Faktorzerlegung>, falls für alle
    <math|r\<in\>R>, sodass <math|r\<neq\>0> und <math|r> keine Einheit ist,
    irreduzible Elemente <math|p<rsub|1>,\<ldots\>,p<rsub|n>\<in\>R>
    existieren mit

    <\equation*>
      r=<big|prod><rsub|i=1><rsup|n>p<rsub|i>.
    </equation*>

    Sind diese Faktoren sogar eindeutig, im Sinne, dass falls eine weitere
    Zerlegung <math|p<rsub|1><rprime|'>,\<ldots\>,p<rsub|m><rprime|'>\<in\>R>
    mit

    <\equation*>
      p=<big|prod><rsub|i=1><rsup|n>p<rsub|i>=<big|prod><rsub|i=1><rsup|m>p<rsub|i><rprime|'>,
    </equation*>

    erstens <math|m=n> gelten muss und zweitens eine Bijektion
    <math|\<varphi\> :<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,m|}>>
    existiert, sodass <math|p<rsub|i>\<sim\>p<rprime|'><rsub|\<varphi\><around*|(|i|)>>>
    für alle <math|i\<in\><around*|{|1,\<ldots\>,n|}>>, so nennen wir
    <math|R> <em|faktoriell><\footnote>
      Englisch: <em|unique factorization domain> (UFD)
    </footnote>.
  </definition>

  Aus Satz <reference|existenz-primfaktorzerlegung> folgt, dass
  <math|<with|font|Bbb|Z>> ein Ring mit Faktorzerlegung ist und aus Satz
  <reference|eindeutigkeit-primfaktorzerlegung> folgt, dass
  <math|<with|font|Bbb|Z>> sogar faktoriell ist. Diese Begriffe erlauben es
  uns, Kasten <reference|kaestchen> etwas zu präzisieren:

  <with|ornament-shape|cartoon|<\ornamented>
    <\padded-center>
      Existiert eine \RDivision mit Rest\P im <em|Ring> <math|R>,

      so ist <math|R> ein <em|Hauptidealring>,

      und deswegen sogar <em|faktoriell>.
    </padded-center>
  </ornamented>>

  Natürlich ist die obige Implikationskette zurzeit eine Aussage, die wir
  noch nicht bewiesen haben. Widmen wir uns zunächst einer etwas
  allgemeineren Frage: Ist <math|R> ein Hauptidealring, so sind seine Ideal
  in gewissem Sinne \Reindimensional\P. Anstatt (bis auf Weiteres) der Frage
  nachzugehen, ob <math|R> dann auch faktoriell ist, nehmen wir an, dass
  <math|R> ein noetherscher Integritätsbereich ist, i.e. wir haben nicht
  unbedingt \Reindimensionale\P, sondern \Rendlichdimensionale\P Ideale.
  Folgt dann, dass <math|R> ein Ring mit Faktorzerlegung ist? Sogar, dass er
  faktoriell ist? Die Antwort auf die erste Frage ist ja und die Antwort auf
  die zweite Frage ist nein, wie wir später sehen werden.

  <\theorem>
    <label|noethersch-dann-faktorzerlegung>Sei <math|R> ein noetherscher
    Integritätsbereich. Dann ist <math|R> ein Ring mit Faktorzerlegung.
  </theorem>

  Für den Beweis brauchen wir zuerst einige Hilfsresultate.

  <\lemma>
    <label|integritaetsbereich-ideale-lemma>Sei <math|R> ein
    Integritätsbereich. Dann gilt für alle <math|a,b\<in\>R>:

    <\indent>
      (1) <math|<around*|(|b|)>\<subseteq\><around*|(|a|)>> genau dann, wenn
      <math|a \<mid\>b>.

      (2) <math|<around*|(|a|)>=<around*|(|b|)>> genau dann, wenn
      <math|a\<sim\>b>.

      (3) <math|a> ist genau dann irreduzibel, wenn <math|<around*|(|a|)>>
      maximal unter den echten Hauptidealen von <math|R> bezüglich der
      Mengeninklusion ist.
    </indent>
  </lemma>

  <\proof>
    (1) Falls <math|<around*|(|b|)>\<subseteq\><around*|(|a|)>>, so folgt
    <math|b\<in\><around*|(|b|)>\<subseteq\><around*|(|a|)>>, also <math|b=a
    r> für <math|r\<in\>R>. Das heiÿt aber <math|a \<mid\>b>.

    (2) Das folgt aus (1) und Lemma <reference|teilbarkeit-lemma-ring> (2).

    (3) Sei zuerst angenommen, dass <math|a> irreduzibel ist. Sei
    <math|<around*|(|a|)>\<subseteq\><around*|(|b|)>\<neq\>R> für
    <math|b\<in\>R>. Dann ist <math|b> keine Einheit. Wegen (1) haben wir
    <math|b \<mid\>a>, also <math|a=b r> für <math|r\<in\>R>. Aber <math|a>
    ist irreduzibel, also muss <math|r> Einheit sein, d.h. <math|a\<sim\>b>.
    Aus (2) folgt <math|<around*|(|a|)>=<around*|(|b|)>>.

    <space|1em>Umgekehrt sei <math|<around*|(|a|)>> nun unter den echten
    Hauptidealen von <math|R> bezüglich <math|\<subseteq\>> maximal gewählt.
    Dann ist <math|a> jedenfalls keine Einheit. Sei <math|a=b r> für
    <math|b,r\<in\>B> und o. B. d. A. vorausgesetzt, dass <math|r> keine
    Einheit ist; wir müssen zeigen, dass <math|b> Einheit ist. Es gilt
    <math|<around*|(|a|)>\<subseteq\><around*|(|r|)>> nach (1) und nach
    Voraussetzung <math|<around*|(|a|)>=<around*|(|r|)>>. Aus (2) folgt, dass
    <math|a\<sim\>r>, i.e. <math|b> ist Einheit.
  </proof>

  <\proposition>
    <label|noethersche-ringe-proposition>Sei <math|R> ein kommutativer Ring
    mit Eins. Dann sind äquivalent:

    <\indent>
      (1) <math|R> ist noethersch.

      (2) Jede aufsteigende Kette <math|I<rsub|1>\<subseteq\>I<rsub|2>\<subseteq\>\<cdots\>>
      von Idealen in <math|R> wird stationär, d.h., es existiert ein Index
      <math|N\<in\><with|font|Bbb|N>>, sodass <math|I<rsub|n>=I<rsub|N>> für
      alle <math|n\<geq\>N>.

      (3) Jede nichtleere Menge <math|<with|font|cal|I>> von Idealen in
      <math|R> besitzt ein maximales Element bezüglich der Mengeninklusion.
    </indent>
  </proposition>

  <\proof>
    <math|<around*|(|1|)>\<Rightarrow\><around*|(|2|)>> Sei
    <math|I<rsub|1>\<subseteq\>I<rsub|2>\<subseteq\>\<cdots\>> eine
    aufsteigende Kette von Idealen in <math|R>. Wir betrachten die
    Vereinigung <math|I\<assign\><big|cup><rsub|n=1><rsup|\<infty\>>I<rsub|n>>;
    dann ist <math|I> ein Ideal. Offenbar ist <math|I> nicht leer, da
    <math|0\<in\>I<rsub|1>\<subseteq\>I<rsub|>>. Falls <math|a,b\<in\>I>, so
    gibt es Indizes <math|k<rsub|1>,k<rsub|2>\<in\><with|font|Bbb|N>> mit
    <math|a\<in\>I<rsub|k<rsub|1>>,b\<in\>I<rsub|k<rsub|2>>>. Setzen wir
    <math|k\<assign\>max<around*|{|k<rsub|1>,k<rsub|2>|}>>, dann folgt
    <math|a,b\<in\>I<rsub|k>> und insbesondere
    <math|a-b\<in\>I<rsub|k>\<subseteq\>I>. Ist wiederum <math|a\<in\>I> und
    <math|r\<in\>R>, dann existiert <math|k\<in\><with|font|Bbb|N>> mit
    <math|a\<in\>I<rsub|k>> und damit auch <math|r
    a\<in\>I<rsub|k>\<subseteq\>I>. Also ist <math|I> ein Ideal.

    <space|1em>Da <math|R> noethersch ist, ist <math|I> endlich erzeugt. Sei
    <math|I=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|k>|)>> für
    <math|a<rsub|1>,\<ldots\>,a<rsub|k>\<in\>I>. Für jedes
    <math|j\<in\><around*|{|1,\<ldots\>,k|}>> gibt es einen Index
    <math|n<rsub|j>\<in\><with|font|Bbb|N>>, sodass
    <math|a<rsub|j>\<in\>I<rsub|n<rsub|j>>>. Sei
    <math|N\<assign\>max<around*|{|n<rsub|1>,\<ldots\>,n<rsub|k>|}>>. Wegen
    <math|I<rsub|n<rsub|j>>\<subseteq\>I<rsub|N>> für alle
    <math|j\<in\><around*|{|1,\<ldots\>,n|}>>, gilt
    <math|a<rsub|1>,\<ldots\>,a<rsub|k>\<in\>I<rsub|N>> und deshalb
    <math|I=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|k>|)>\<subseteq\>I<rsub|N>>.
    Andererseits folgt per Konstruktion von <math|I>, dass
    <math|I<rsub|N>\<subseteq\>I>, also <math|I=I<rsub|N>>.

    <space|1em>Für jedes <math|n\<geq\>N> folgt nun
    <math|I<rsub|N>\<subseteq\>I<rsub|n>\<subseteq\>I> und da
    <math|I<rsub|N>=I> muss <math|I<rsub|n>=I<rsub|N>> gelten, d.h. die Kette
    <math|I<rsub|1>\<subseteq\>I<rsub|2>\<subseteq\>\<cdots\>> wird ab dem
    Index <math|N> stationär.

    <math|<around*|(|2|)>\<Rightarrow\><around*|(|3|)>> Sei
    <math|<with|font|cal|I>> eine nichtleere Menge von Idealen in <math|R>.
    Sei indirekt angenommen, dass <math|<with|font|cal|I>> kein maximales
    Element hat. Weil <math|<with|font|cal|I>> nichtleer ist, können wir ein
    Ideal <math|I<rsub|1>\<in\><with|font|cal|I>> wählen; dann ist
    <math|I<rsub|1>> nicht maximal, sodass ein Ideal
    <math|I<rsub|2>\<in\><with|font|cal|I>> mit
    <math|I<rsub|1>\<subsetneq\>I<rsub|2>> existiert. Ebenso ist
    <math|I<rsub|2>> nicht maximal in <math|<with|font|cal|I>>, also muss es
    <math|I<rsub|3>\<in\><with|font|cal|I>> geben mit
    <math|I<rsub|1>\<subsetneq\>I<rsub|2>\<subsetneq\>I<rsub|3>> und wir
    können diesen Prozess fortsetzen, um eine unendliche aufsteigende Kette
    <math|I<rsub|1>\<subsetneq\>I<rsub|2>\<subsetneq\>\<cdots\>> von Idealen
    in <math|R> zu finden, die nicht stationär wird, im Widerspruch zur
    Annahme.

    <math|<around*|(|3|)>\<Rightarrow\><around*|(|1|)>> Sei <math|I> ein
    beliebiges Ideal in <math|R>; wir wollen zeigen, dass <math|I> endlich
    erzeugt ist. Sei

    <\equation*>
      <with|font|cal|I>\<assign\><around*|{|J\<trianglelefteqslant\>R
      <around*|\|||\<nobracket\>> J\<subseteq\>I<text| und <math|J> ist
      endlich erzeugt>|}>.
    </equation*>

    Dann ist die Familie <math|<with|font|cal|I>> jedenfalls nicht leer, da
    <math|<around*|(|0|)>\<in\><with|font|cal|I>>. Nach Voraussetzung besitzt
    <math|<with|font|cal|I>> also ein maximales Element <math|J<rsub|0>>. Per
    Definition ist <math|J<rsub|0>> endlich erzeugt mit
    <math|J<rsub|0>\<subseteq\>I>. Sei zum Widerspruch angenommen, dass
    <math|J<rsub|0>\<subsetneq\>I>. Dann existiert <math|a\<in\>I> mit
    <math|a\<notin\>J<rsub|0>>. Betrachten wir das Ideal
    <math|J<rsub|1>\<assign\>J<rsub|0>+<around*|(|a|)>>; da <math|J<rsub|0>>
    endlich erzeugt ist mit <math|J<rsub|0>=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|k>|)>>
    für <math|a<rsub|1>,\<ldots\>,a<rsub|k>\<in\>R> ist auch
    <math|J<rsub|1>=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|k>,a|)>> endlich
    erzeugt. Dann ist <math|J<rsub|0>\<subsetneq\>J<rsub|1>>. Aber offenbar
    gilt dann <math|J<rsub|1>\<trianglelefteqslant\>R,J<rsub|1>\<subseteq\>I>
    und <math|J<rsub|1>> ist endlich erzeugt, i.e.
    <math|J<rsub|1>\<in\><with|font|cal|I>>, im Widerspruch zur Annahme, dass
    <math|J<rsub|0>> maximal in <math|<with|font|cal|I>> gewählt worden ist.
    Es muss also <math|J<rsub|0>=I> gelten.\ 
  </proof>

  Bedingung (2) in Proposition <reference|noethersche-ringe-proposition> wird
  <em|aufsteigende Kettenbedingung> (engl.: <em|ascending chain condition>)
  genannt und ist auch auÿerhalb der Algebra, insbesondere der Mengentheorie,
  geläufig. Kommen wir nun zum Beweis von Satz
  <reference|noethersch-dann-faktorzerlegung>.

  <\proof>
    Sei

    <\equation*>
      <with|font|cal|I>\<assign\><around*|{|<around*|(|a|)>
      <around*|\|||\<nobracket\>> a\<neq\>0,a\<notin\>R<rsup|\<ast\>>,a<text|
      hat keine Zerlegung in irreduzible Elemente>|}>.
    </equation*>

    Wir zeigen, dass <math|<with|font|cal|I>> die leere Menge ist. Wäre das
    nicht der Fall, so würde nach Proposition
    <reference|noethersche-ringe-proposition> ein maximales Element
    <math|<around*|(|a|)>\<in\><with|font|cal|I>> für ein <math|a\<in\>R>
    existieren. Da <math|a> offenbar nicht irreduzibel ist, existieren
    Elemente <math|u,v\<in\>R\<setminus\>R<rsup|\<ast\>>> mit <math|a=u v>.
    Aus Lemma <reference|integritaetsbereich-ideale-lemma> (1) und (2) folgt,
    dass <math|<around*|(|a|)>\<subsetneq\><around*|(|u|)>> sowie
    <math|<around*|(|a|)>\<subsetneq\><around*|(|v|)>>, sodass wegen der
    Maximalität von <math|<around*|(|a|)>> in <math|<with|font|cal|I>> nur
    die Möglichkeit <math|<around*|(|u|)>,<around*|(|v|)>\<notin\><with|font|cal|I>>
    verbleibt. Insbesondere müssen <math|u> und <math|v> eine Zerlegung in
    irreduzible Elemente haben; dann hat aber auch das Produkt <math|a=u v>
    eine Zerlegung in irreduzible Elemente; ein Widerspruch. Es gilt also
    tatsächlich <math|<with|font|cal|I>=\<emptyset\>>.
  </proof>

  Damit haben wir erfolgreich bewiesen, dass jeder noethersche Ring ein Ring
  mit Faktorzerlegung ist. Gilt auch die Umkehrung? Für die Antwort begeben
  wir uns ins Unendliche.

  <\example>
    <label|ring-mit-faktorzerlegung-aber-nicht-noethersch>(1) Sei <math|R>
    ein Ring. Wir definieren den <em|Polynomring
    <math|R<around*|[|X<rsub|1>,X<rsub|2>,\<ldots\>|]>> in abzählbar
    unendlich vielen Variablen> als

    <\equation*>
      R<around*|[|X<rsub|1>,X<rsub|2>,\<ldots\>|]>\<assign\><big|cup><rsub|n=1><rsup|\<infty\>>R<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>
    </equation*>

    mit der gewohnten Addition und Multiplikation aus Beispiel
    <reference|polynomringe>. Jedes Polynom
    <math|f\<in\>R<around*|[|X<rsub|1>,X<rsub|2>,\<ldots\>|]>> ist offenbar
    Element eines Polynomrings <math|R<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>>
    in nur <math|n> Variablen. Sei <math|R> nun ein noetherscher
    Integritätsbereich. Dann ist <math|R<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>>
    nach Proposition <reference|polynomring-proposition> (3) und Satz
    <reference|hilbert-basissatz> auch ein noetherscher Integritätsbereich
    und <math|f> hat damit nach Satz <reference|noethersch-dann-faktorzerlegung>
    eine Zerlegung in irreduzible Polynome in
    <math|R<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>>. Somit ist
    <math|R<around*|[|X<rsub|1>,X<rsub|2>,\<ldots\>|]>> ein Ring mit
    Faktorzerlegung, der nicht noethersch ist. In der Tat, die unendlich
    aufsteigende Kette von Idealen

    <\equation*>
      <around*|(|X<rsub|1>|)>\<subsetneq\><around*|(|X<rsub|1>,X<rsub|2>|)>\<subsetneq\><around*|(|X<rsub|1>,X<rsub|2>,X<rsub|3>|)>\<subsetneq\>\<cdots\>
    </equation*>

    wird nicht stationär, im Widerspruch zu Proposition
    <reference|noethersche-ringe-proposition> (2).

    (2) Wie wichtig ist die Vorausssetzung, dass <math|R> in Satz
    <reference|noethersch-dann-faktorzerlegung> noethersch ist? Betrachten
    wir dazu folgende Konstruktion.<\footnote>
      Vielen Dank an Noah Maxwell Arbesfeld (Universität Wien) für dieses
      Beispiel.
    </footnote> Sei <math|S> die Menge aller Folgen in
    <math|<with|font|Bbb|N><rsub|0>>. Wir betrachten die formalen Monome

    <\equation*>
      X<rsup|a>\<assign\>X<rsub|1><rsup|a<rsub|1>> X<rsub|2><rsup|a<rsub|2>>
      \<cdots\>,<space|1em>a=<around*|(|a<rsub|1>,a<rsub|2>,\<ldots\>|)>\<in\>S,
    </equation*>

    wobei auch unendlich viele der <math|a<rsub|i>> von Null verschieden sein
    dürfen. Definieren wir <math|R> als den
    <math|<with|font|Bbb|C>>-Vektorraum mit diesen Monomen als Basis und
    versehen <math|R> mit der Multiplikation <math|X<rsup|a>
    X<rsup|b>\<assign\>X<rsup|a+b>>, so ist <math|R> ein Integritätsbereich.
    Die irreduziblen Monome in <math|R> sind dann (bis auf Multiplikation mit
    Einheiten) genau die <math|X<rsub|i>,i\<geq\>1>. Zusammen mit der
    Beobachtung, dass die Faktoren eines Monoms auch Monome sein müssen,
    folgt, dass <math|X<rsub|1> X<rsub|2> X<rsub|3>
    \<cdots\>=X<rsup|<around*|(|1,1,1,\<ldots\>|)>>> keine endliche
    Faktorisierung in irreduzible Elemente hat. Insbesondere ist <math|R> ein
    Ring ohne Faktorzerlegung.

    (3) Ein weiteres Gegenbeispiel im Sinne von (2): Sei
    <math|R\<assign\><around*|{|f\<in\><with|font|Bbb|Q><around*|[|X|]>
    <around*|\|||\<nobracket\>> f<around*|(|0|)>\<in\><with|font|Bbb|Z>|}>>
    zusammen mit der üblichen Addition und Multiplikation von Polynomen ein
    Ring. Da <math|R> ein Unterring von <math|<with|font|Bbb|Q><around*|[|X|]>>
    ist, ist <math|R> ein Integritätsbereich. Sei zunächst festgestellt, dass
    <math|2> keine Einheit in <math|R> ist. Ferner existiert kein
    irreduzibles lineares Polynom mit konstantem Term Null. In der Tat, ist
    <math|f\<in\>R> mit <math|deg<around*|(|f|)>=1> und
    <math|f<around*|(|0|)>=0>, so können wir <math|f=a X> für ein
    <math|a\<in\><with|font|Bbb|Q>> schreiben und es folgt

    <\equation*>
      a X=2\<cdot\><around*|(|<frac|a|2> X|)>=2\<cdot\><around*|(|2\<cdot\><frac|a|4>
      X|)>=\<cdots\>=2<rsup|k> <around*|(|<frac|a|2<rsup|k>>
      X|)><space|1em><text|für >k\<in\><with|font|Bbb|N><rsub|0>.
    </equation*>

    Insbesondere erhalten wir eine unendliche \RFaktorisierungskette\P

    <\equation*>
      X=2\<cdot\><around*|(|<frac|1|2> X|)>,<space|1em><frac|1|2>
      X=2\<cdot\><around*|(|<frac|1|4> X|)>,<space|1em>\<ldots\>,<space|1em><frac|1|2<rsup|k>>
      X=2\<cdot\><around*|(|<frac|1|2<rsup|k+1>> X|)>
    </equation*>

    für <math|k\<in\><with|font|Bbb|N><rsub|0>>. Also ist <math|R> kein Ring
    mit Faktorzerlegung. Offenbar ist <math|R> auch nicht noethersch (Satz
    <reference|noethersch-dann-faktorzerlegung>), was wir konkret durch die
    aufsteigende Kette von Hauptidealen <math|<around*|(|X|)>\<subsetneq\><around*|(|<frac|1|2>
    X|)>\<subsetneq\><around*|(|<frac|1|4> X|)>\<subsetneq\>\<cdots\>> sehen
    können. Zuletzt sei noch bemerkt, dass obwohl <math|R> kein Ring mit
    Faktorzerlegung ist, irreduzible Elemente trotzdem existieren
    (beispielsweise <math|2>); vgl. auch das vorherige Beispiel.
  </example>

  <\theorem>
    <label|faktoriell-irreduzibel-equiv-prim>Sei <math|R> ein Ring mit
    Faktorzerlegung. Dann ist <math|R> genau dann faktoriell, wenn jedes
    irreduzible Element von <math|R> auch prim ist.
  </theorem>

  <\proof>
    <math|<around*|(|\<Rightarrow\>|)>> Sei <math|R> faktoriell. Wir müssen
    zeigen, dass jedes irreduzible Element auch prim ist. Sei also
    <math|p\<in\>R> irreduzibel. Angenommen, <math|p> teilt das Produkt
    <math|a b> für <math|a,b\<in\>R>; dann existiert <math|c\<in\>R> mit
    <math|p c=a b>. Sind <math|a> oder <math|b> Null oder eine Einheit, so
    ist <math|p \<mid\>a> oder <math|p \<mid\>b> unmittelbar erfüllt.
    Andererseits, da <math|R> faktoriell ist, gibt es eindeutig bestimmte
    irreduzible Elemente <math|p<rsub|1>,\<ldots\>,p<rsub|n>\<in\>R> und
    <math|p<rsub|n+1>,\<ldots\>,p<rsub|m>\<in\>R> mit

    <\equation*>
      a=<big|prod><rsub|i=1><rsup|n>p<rsub|i><space|1em><text|und><space|1em>b=<big|prod><rsub|j=n+1><rsup|m>p<rsub|j>,
    </equation*>

    d.h. <math|p c=<big|prod><rsub|i=1><rsup|m>p<rsub|i>>. Da <math|p> selbst
    irreduzibel ist, folgt aus der Eindeutigkeit dieser Zerlegung, dass
    <math|p\<sim\>p<rsub|i>> für ein <math|i\<in\><around*|{|1,\<ldots\>,m|}>>.
    Gilt <math|i\<in\><around*|{|1,\<ldots\>,n|}>>, so folgt insbesondere,
    dass <math|p \<mid\>a> und gilt <math|i\<in\><around*|{|n+1,\<ldots\>,m|}>>,
    muss jedenfalls <math|p \<mid\>b> folgen. Somit ist <math|p> prim.

    <math|<around*|(|\<Leftarrow\>|)>> Sei <math|R> nun ein Ring mit
    Faktorzerlegung, in dem jedes irreduzible Element prim ist. Sei
    <math|r\<in\>R> mit

    <\equation*>
      r=<big|prod><rsub|i=1><rsup|n>p<rsub|i>=<big|prod><rsub|i=1><rsup|m>p<rprime|'><rsub|i>
    </equation*>

    für irreduzible Elemente <math|p<rsub|1>,\<ldots\>,p<rsub|n>\<in\>R> und
    <math|p<rsub|1><rprime|'>,\<ldots\>,p<rprime|'><rsub|n>\<in\>R>; wir
    wollen zeigen, dass diese Zerlegung eindeutig ist, im Sinne von
    Definition <reference|ufd-definition>.

    <space|1em>Wir führen Induktion nach <math|m> durch. Der Fall <math|m=1>
    folgt unmittelbar. Sei vorausgesetzt, dass die Behauptung für Zerlegungen
    der Länge <math|m-1> bereits bewiesen ist. Aus
    <math|<big|prod><rsub|i=1><rsup|n>p<rsub|i>=<big|prod><rsub|i=1><rsup|m>p<rprime|'><rsub|i>>
    folgt, dass <math|p<rsub|1> \<mid\><big|prod><rsub|i=1><rsup|m>p<rprime|'><rsub|i>>.
    Da <math|p<rsub|1>> irreduzibel ist, ist es nach Annahme prim und daher
    existiert <math|j\<in\><around*|{|1,\<ldots\>,m|}>>, sodass
    <math|p<rsub|1> \<mid\>p<rprime|'><rsub|j>>; nehmen wir o. B. d. A. an,
    dass <math|p<rsub|1> \<mid\>p<rprime|'><rsub|1>>. Dann gibt es
    <math|q\<in\>R> mit <math|p<rsub|1> q=p<rsub|1><rprime|'>>. Da
    <math|p<rsub|1><rprime|'>> irreduzibel ist und <math|p<rsub|1>> keine
    Einheit ist, folgt, dass <math|q\<in\>R<rsup|\<ast\>>>, i.e.
    <math|p<rsub|1>\<sim\>p<rsub|1><rprime|'>>. Wir können ohne Einschränkung
    annehmen, dass <math|q=1>, also bekommen wir
    <math|<big|prod><rsub|i=2><rsup|n>p<rsub|i>=<big|prod><rsub|i=2><rsup|m>p<rsub|i><rprime|'>>.
    Nach Induktionsvoraussetzung gilt also <math|n-1=m-1> und es existiert
    eine Bijektion <math|\<varphi\><rprime|'>
    :<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,m-1|}>>
    mit <math|p<rsub|i>\<sim\>p<rprime|'><rsub|\<varphi\><around*|(|i|)>>>
    für <math|i=1,\<ldots\>,n-1>. Insbesondere gilt <math|n=m>. Definieren
    wir auÿerdem

    <\equation*>
      \<varphi\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,m|}>,<space|1em>\<varphi\><around*|(|k|)>\<assign\><choice|<tformat|<table|<row|<cell|m<text|,
      falls >k=n,>>|<row|<cell|\<varphi\><rprime|'><around*|(|k|)><text|,
      sonst>>>>>>
    </equation*>

    so folgt die Behauptung.
  </proof>

  Ein Integritätsbereich ist also genau dann faktoriell, wenn die Begriffe
  \Rprim\P und \Rfaktoriell\P zusammenfallen. Wir sind nun bereit die erste
  Implikation aus Kästchen <math|<reference|kaestchen>> zu beweisen.

  <\theorem>
    <label|hauptidealring-dann-faktoriell>Jeder Hauptidealring <math|R> ist
    faktoriell.
  </theorem>

  <\proof>
    Da <math|R> ein Hauptidealring ist, ist <math|R> noethersch und somit ein
    Ring mit Faktorzerlegung, nach Satz <reference|noethersch-dann-faktorzerlegung>.
    Wir müssen noch zeigen, dass jedes irreduzible Element <math|p\<in\>R>
    auch prim ist. Seien also <math|a,b\<in\>R> mit <math|p \<mid\>a b> und
    o. B. d. A. <math|p\<nmid\>a>; wir müssen zeigen, dass <math|p \<mid\>b>.
    Wegen <math|p\<nmid\>a> gilt <math|a\<notin\><around*|(|p|)>>, also
    insbesondere <math|<around*|(|p|)>\<subsetneq\><around*|(|a|)>+<around*|(|p|)>>.
    Da <math|R> ein Hauptidealring ist, muss
    <math|<around*|(|a|)>+<around*|(|p|)>> ein Hauptideal sein. Wegen Lemma
    <reference|integritaetsbereich-ideale-lemma> ist <math|<around*|(|p|)>>
    unter den echten Hauptidealen aber maximal, sodass
    <math|<around*|(|a|)>+<around*|(|p|)>=R> gelten muss. Also gibt es
    <math|u,v\<in\>R> mit <math|a u+p v=1>, woraus folgt <math|b=a b u+b p
    v>. Aus <math|p\<mid\>a b> folgt also <math|p\<mid\>b>, d.h. <math|p> ist
    prim.
  </proof>

  Uns fehlt noch eine Präzisierung der \RDivision mit Rest\P. Das wollen wir
  mit folgender Definition erreichen.

  <\definition>
    Es sei <math|R> ein Integritätsbereich. Dann heiÿt <math|R>
    <em|euklidisch>, wenn es eine Abbildung <math|\<omega\>
    :R\<setminus\><around*|{|0|}>\<rightarrow\><with|font|Bbb|N><rsub|0>>
    gibt, sodass für alle <math|a,b\<in\>R>, mit <math|b\<neq\>0>, Elemente
    <math|q,r\<in\>R> existieren mit <math|a=b q+r> und <math|r=0> oder
    <math|\<omega\><around*|(|r|)>\<less\>\<omega\><around*|(|b|)>>.
  </definition>

  <\example>
    <label|koerper-euklidisch>(1) Der Ring <math|<with|font|Bbb|Z>> der
    ganzen Zahlen ist ein euklidischer Ring, wenn wir <math|\<omega\>
    :<with|font|Bbb|Z>\<setminus\><around*|{|0|}>\<rightarrow\><with|font|Bbb|N><rsub|0>,\<omega\><around*|(|n|)>\<assign\><around*|\||n|\|>>
    setzen.

    (2) Jeder Körper <math|K> ist ein euklidischer Ring mit
    Bewertungsfunktion <math|\<omega\> :K\<setminus\><around*|{|0|}>\<rightarrow\><with|font|Bbb|N><rsub|0>>
    indem wir beispielsweise <math|\<omega\><around*|(|x|)>=1> für alle
    <math|x\<in\>K> setzen. Für <math|x\<in\>K> und <math|0\<neq\>y\<in\>K>
    gilt nämlich immer, dass <math|x=<around*|(|<frac|x|y>|)>\<cdot\>y>.
  </example>

  <\proposition>
    Sei <math|R> ein euklidischer Ring bezüglich der Abbildung
    <math|\<omega\> :R\<setminus\><around*|{|0|}>\<rightarrow\><with|font|Bbb|N><rsub|0>>.
    Dann ist <math|R> auch euklidisch bezüglich der Abbildung

    <\equation*>
      \<omega\><rsup|\<ast\>> :R\<setminus\><around*|{|0|}>\<rightarrow\><with|font|Bbb|N><rsub|0>,<space|1em>\<omega\><rsup|\<ast\>><around*|(|r|)>\<assign\>min<rsub|s\<in\><around*|(|r|)>\<setminus\><around*|{|0|}>>
      \<omega\><around*|(|s|)>
    </equation*>

    und erfüllt die Ungleichung <math|\<omega\><rsup|\<ast\>><around*|(|r|)>\<leq\>\<omega\><rsup|\<ast\>><around*|(|r
    s|)>> für alle <math|r,s\<in\>R\<setminus\><around*|{|0|}>>.
  </proposition>

  <\proof>
    Seien <math|a,b\<in\>R> mit <math|b\<neq\>0>. Dann existiert
    <math|b<rsub|0>\<in\><around*|(|b|)>>, sodass
    <math|\<omega\><around*|(|b<rsub|0>|)>=\<omega\><rsup|\<ast\>><around*|(|b|)>>.
    Sei <math|c\<in\>R> mit <math|b<rsub|0>=b c>. Da <math|R> euklidisch ist,
    gibt es <math|q<rsub|0>,r\<in\>R> mit <math|a=b<rsub|0> q<rsub|0>+r>,
    wobei <math|r=0> oder <math|\<omega\><around*|(|r|)>\<less\>\<omega\><around*|(|b<rsub|0>|)>>.
    Daraus folgt <math|a=<around*|(|b c|)> q<rsub|0>+r=b <around*|(|c
    q<rsub|0>|)>+r>. Setzen wir <math|q\<assign\>c q<rsub|0>>, so folgt
    <math|a=b q+r>. Ist <math|r=0>, so ist der Beweis, dass <math|R>
    bezüglich <math|\<omega\><rsup|\<ast\>>> euklidisch ist, fertig.
    Ansonsten folgt <math|\<omega\><rsup|\<ast\>><around*|(|r|)>\<leq\>\<omega\><around*|(|r|)>\<less\>\<omega\><around*|(|b<rsub|0>|)>=\<omega\><rsup|\<ast\>><around*|(|b|)>>.

    <space|1em>Um die Ungleichung zu zeigen seien
    <math|r,s\<in\>R\<setminus\><around*|{|0|}>>. Dann gilt <math|r \<mid\>r
    s>, also <math|<around*|(|r s|)>\<subseteq\><around*|(|r|)>> nach Lemma
    <reference|integritaetsbereich-ideale-lemma> (1), sodass

    <\equation*>
      \<omega\><rsup|\<ast\>><around*|(|r|)>=min<rsub|s\<in\><around*|(|r|)>\<setminus\><around*|{|0|}>>
      \<omega\><around*|(|s|)>\<leq\>min<rsub|t\<in\><around*|(|r
      s|)>\<setminus\><around*|{|0|}>> \<omega\><around*|(|t|)>=\<omega\><rsup|\<ast\>><around*|(|r
      s|)>,
    </equation*>

    was wir zeigen wollten.
  </proof>

  <\theorem>
    <label|euklidisch-dann-hauptidealring>Jeder euklidische Ring <math|R> ist
    ein Hauptidealring.
  </theorem>

  <\proof>
    Sei <math|I\<trianglelefteqslant\>R> ein Ideal in <math|R>, das nicht das
    Nullideal ist. Wir wählen <math|a\<in\>I\<setminus\><around*|{|0|}>> so,
    dass <math|\<omega\><around*|(|a|)>\<in\><with|font|Bbb|N><rsub|0>> in
    <math|I> minimal ist. Ist <math|b\<in\>I> beliebig, so existieren
    <math|q,r\<in\>R> mit <math|b=a q+r> und <math|r=0> bzw.
    <math|\<omega\><around*|(|r|)>\<less\>\<omega\><around*|(|a|)>>. Da
    <math|r=b-a q\<in\>I> und <math|\<omega\><around*|(|a|)>> in <math|I>
    minimal ist, folgt <math|r=0>. Das heiÿt <math|b=a q>, i.e.
    <math|b\<in\><around*|(|a|)>>. Es folgt, dass <math|I=<around*|(|a|)>>
    und damit ist <math|I> ein Hauptideal, was zu zeigen war.
  </proof>

  Der Polynomring <math|<with|font|Bbb|Z><around*|[|X|]>> ist nach Beispiel
  <reference|zx-nicht-hauptidealring> kein Hauptidealring und nach Satz
  <reference|euklidisch-dann-hauptidealring> also kein euklidischer Ring.
  Zusammenfassend ergibt das:<label|kaestchen-2>

  <with|ornament-shape|cartoon|<\ornamented>
    <\padded-center>
      Ist <math|R> ein <em|euklidischer Ring>,

      so ist <math|R> ein <em|Hauptidealring>,

      und deswegen sogar <em|faktoriell>.
    </padded-center>
  </ornamented>>

  Zum Abschluss führen wir noch einen wichtigen Begriffe ein.

  <\definition>
    Sei <math|R> ein Integritätsbereich und <math|A\<subseteq\>R> eine
    nichtleere Teilmenge von <math|R>. Wir sagen, dass <math|d\<in\>R> ein
    <em|gemeinsamer Teiler> von <math|A> ist, falls <math|d \<mid\>a> für
    alle <math|a\<in\>A>. Ein gemeinsamer Teiler <math|d> von <math|A> wird
    <em|Maximalteiler> genannt, falls für jeden gemeinsamen Teiler <math|c>
    von <math|A> gilt, dass <math|c \<mid\>d>.
  </definition>

  <\lemma>
    <label|ufd-maximalteiler>Sei <math|R> ein Integritätsbereich,
    <math|A\<subseteq\>R> eine nichtleere Teilmenge. Sei <math|d\<in\>R> ein
    Maximalteiler von <math|A> und <math|d<rprime|'>\<in\>R>. Dann ist
    <math|d<rprime|'>> genau dann Maximalteiler, wenn
    <math|d\<sim\>d<rprime|'>>.
  </lemma>

  <\proof>
    Nehmen wir zunächst an, dass <math|d\<sim\>d<rprime|'>>. Dann gilt
    <math|d \<mid\>d<rprime|'>> und <math|d<rprime|'> \<mid\>d>, also
    <math|d\<sim\>d<rprime|'>> nach Lemma <reference|teilbarkeit-lemma-ring>
    (2). Um die Umkehrung zu zeigen, nehmen wir an, dass
    <math|d\<sim\>d<rprime|'>>. Dann folgt wieder aus Lemma
    <reference|teilbarkeit-lemma-ring> (2), dass <math|d \<mid\>d<rprime|'>>
    und <math|d<rprime|'> \<mid\>d>. Ist <math|a\<in\>A> also beliebig, so
    folgt <math|d<rprime|'> \<mid\>d \<mid\>a>, da die Teilerrelation
    transitiv ist, i.e. <math|d<rprime|'>> ist ein gemeinsamer Teiler von
    <math|A>. Ist nun <math|e\<in\>R> ein weiterer gemeinsamer Teiler von
    <math|A>, so folgt jedenfalls <math|e \<mid\>d \<mid\>d<rprime|'>>,
    sodass <math|d<rprime|'>> tatsächlich Maximalteiler von <math|A> ist.
  </proof>

  <\proposition>
    Sei <math|R> ein faktorieller Ring. Dann hat jede nichtleere Teilmenge
    <math|A\<subseteq\>R> von <math|R> einen Maximalteiler.
  </proposition>

  <\proof>
    Sei

    <\equation*>
      D\<assign\><around*|{|x\<in\>R <around*|\|||\<nobracket\>> x\<neq\>0,x
      \<mid\>a<text| für alle >a\<in\>A|}>.
    </equation*>

    Dann ist <math|D> offenbar nicht leer. Sei <math|\<ell\>
    :R\<rightarrow\><with|font|Bbb|N><rsub|0>> jene Funktion, die jedem
    Element die Länge seiner (eindeutigen) Primfaktorisierung zuweist, wobei
    wir für Einheiten <math|u\<in\>R> vereinbaren, dass
    <math|\<ell\><around*|(|u|)>=0>. Jedenfalls gilt dann
    <math|\<ell\><around*|(|x|)>\<leq\>\<ell\><around*|(|a|)>> für alle
    <math|a\<in\>A> und <math|x\<in\>D>. Somit ist
    <math|\<ell\><around*|(|D|)>\<subseteq\><with|font|Bbb|N><rsub|0>> eine
    von oben beschränkte Teilmenge und wir können <math|d\<in\>D> mit
    <math|\<ell\><around*|(|d|)>> maximal wählen. Wir zeigen, dass <math|d>
    ein Maximalteiler von <math|A> ist.

    <space|1em>Per Definition ist <math|d> ein gemeinsamer Teiler von
    <math|A>. Ist <math|d<rprime|'>\<in\>D> beliebig, so müssen wir noch
    zeigen, dass <math|d<rprime|'> \<mid\>d>. Sei <math|c\<in\>R> ein
    gemeinsamer Faktor von <math|d> und <math|d<rprime|'>> mit
    <math|\<ell\><around*|(|c|)>> maximal. Schreiben wir dann

    <\equation*>
      d=c y,<space|1em>d<rprime|'>=c y<rprime|'>,<space|1em>y,y<rprime|'>\<in\>R,
    </equation*>

    so wollen wir <math|y<rprime|'>\<in\>R<rsup|\<ast\>>> zeigen. Ist
    <math|y<rprime|'>> aber keine Einheit, so folgt, dass <math|y<rprime|'>>
    einen Primfaktor <math|p \<mid\>y<rprime|'>> hat. Da
    <math|\<ell\><around*|(|c p|)>=\<ell\><around*|(|c|)>+1> und <math|c> so
    gewählt war, dass <math|\<ell\><around*|(|c|)>> maximal unter allen
    gemeinsamen Faktoren von <math|d> und <math|d<rprime|'>> ist, folgt,
    <math|c p\<nmid\>d> und daher <math|p\<nmid\>y>.

    <space|1em>Sei <math|a\<in\>A> beliebig mit <math|a=d z=c y z> für ein
    <math|z\<in\>R>. Da <math|d<rprime|'> \<mid\>a>, folgt <math|c p
    \<mid\>a> und daraus <math|c p \<mid\>c y z>, sodass <math|p \<mid\>y z>.
    Da <math|p> ein Primelement ist und <math|p\<nmid\>y>, folgt <math|p
    \<mid\>z>, d.h. <math|d p \<mid\>a>. Insbesondere, weil <math|a> beliebig
    gewählt war, <math|d p\<in\>D>. Aber das ist ein Widerspruch dazu, dass
    <math|d> maximale Länge <math|\<ell\><around*|(|d|)>> unter allen
    Elementen von <math|D> hat, da <math|\<ell\><around*|(|d
    p|)>=\<ell\><around*|(|d|)>+1>. Somit muss <math|y<rprime|'>> Einheit
    sein und <math|d<rprime|'> \<mid\>d>.
  </proof>

  Eine Bemerkung: In vielen Lehrbüchern ist die Bezeichnung \Rgröÿter
  gemeinsamer Teiler\P anstatt der hier eingeführen Bezeichnung des
  \RMaximalteilers\P gängig. Streng genommen sind diese Begriffe aber nicht
  (beliebig) austauschbar. In den ganzen Zahlen, ordnen wir die Menge der
  gemeinsamen Teiler anhand der natürlichen
  \R<math|\<leq\>>\P-Ordnungsrelation. Für allgemeine Integritätsbereiche ist
  die Existenz einer solchen Relation aber nicht garantiert, also müssen wir
  auf die schwächere \R<math|\<mid\>>\P-Quasiordnung zurückgreifen. Das führt
  dazu, dass Maximalteiler nur bis auf Assoziiertheit eindeutig sind: Die
  Maximalteiler von <math|15> und <math|20> in <math|<with|font|Bbb|Z>> sind
  <math|\<pm\>5>, deren gröÿter gemeinsamer Teiler hingegen beschränkt sich
  nur auf <math|+5>.

  <section|Quotientenringe und Homomorphismen>

  Wir beschäftigen uns nun mit den Umkehrungen und einigen weiteren
  Implikationen von Kästchen <math|<reference|kaestchen-2>>. Wir wissen aus
  Beispiel <reference|noethersch-aber-kein-hir>, dass es noethersche Ringe
  gibt, die keine Hauptidealringe sind. In Beispiel
  <reference|ring-mit-faktorzerlegung-aber-nicht-noethersch> (1) haben wir
  einen Ring mit Faktorzerlegung gesehen, der nicht noethersch ist, in
  Beispiel <reference|ring-mit-faktorzerlegung-aber-nicht-noethersch> (2)
  einen Integritätsbereich, der kein Ring mit Faktorzerlegung ist. Wir
  beschäftigen uns also mit folgenden Fragen:<label|kaestchen-3>

  <\padded-center>
    <tabular*|<tformat|<cwith|1|1|1|1|cell-valign|c>|<cwith|1|1|3|3|cell-valign|c>|<cwith|1|1|5|5|cell-valign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|3|3|5|5|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|5|5|cell-rborder|1ln>|<table|<row|<cell|<math|R>
    ist euklidisch>|<cell|<subtable|<tformat|<table|<row|<cell|<math|\<Longrightarrow\>>>>|<row|<cell|<math|<with|color|red|<long-arrow|\<rubber-Leftarrow\>|?>>>>>>>>>|<cell|<math|R>
    ist ein Hauptidealring>|<cell|<subtable|<tformat|<table|<row|<cell|<math|\<Longrightarrow\>>>>|<row|<cell|<with|color|red|<math|<long-arrow|\<rubber-Leftarrow\>|?>>>>>>>>>|<cell|<math|R>
    ist faktoriell>>|<row|<cell|>|<cell|>|<cell|<math|<neg|\<Uparrow\>><space|1em>\<Downarrow\>>>|<cell|>|<cell|<math|<with|color|red|\<Uparrow\>?><space|1em>\<Downarrow\>>>>|<row|<cell|>|<cell|>|<cell|<math|R>
    ist noethersch>|<cell|<subtable|<tformat|<table|<row|<cell|<math|\<Longrightarrow\>>>>|<row|<cell|<math|<neg|\<Longleftarrow\>>>>>>>>>|<cell|<math|R>
    ist ein Ring mit Faktorzerlegung>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<math|<neg|\<Uparrow\>><space|1em>\<Downarrow\>>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<math|R>
    ist ein Integritätsbereich>>>>>
  </padded-center>

  Wir werden auch weitere Gegenbeispiele für jene Implikationen sehen, die
  nur in eine Richtung gelten. Folgende Proposition wird sich jedenfalls als
  nützlich erweisen.

  <\proposition>
    <label|polynomring-euklidisch>Sei <math|R> ein Integritätsbereich. Dann
    sind folgende Aussagen äquivalent:

    <\indent>
      (1) <math|R> ist ein Körper.

      (2) <math|R<around*|[|X|]>> ist euklidisch mit <math|\<omega\>=deg>,
      wobei der Quotient und der Rest sogar eindeutig bestimmt sind.

      (3) <math|R<around*|[|X|]>> ist ein Hauptidealring.
    </indent>
  </proposition>

  Aktuell können wir Proposition <reference|polynomring-euklidisch> noch
  nicht vollständig beweisen. Zum Beweis benötigen wir u. a. folgendes
  Hilfsresultat.

  <\lemma>
    <label|polynomring-lemma>Sei <math|R> ein Integritätsbereich und
    <math|f,g\<in\>R<around*|[|X|]>>. Dann gilt:

    <\indent>
      (1) <math|deg<around*|(|f\<cdot\>g|)>=deg<around*|(|f|)>+deg<around*|(|g|)>>.

      (2) <math|R<around*|[|X|]><rsup|\<ast\>>> ist die Menge der
      invertierbaren konstanten Polynome.
    </indent>
  </lemma>

  <\proof>
    (1) Das folgt sofort aus der Definition der Polynommultiplikation.

    (2) Falls <math|f\<cdot\>g=1> für <math|f,g\<in\>R<around*|[|X|]>> mit
    <math|f,g\<neq\>0>, so gilt nach (1), dass

    <\equation*>
      deg<around*|(|f|)>+deg<around*|(|g|)>=deg<around*|(|f\<cdot\>g|)>=deg<around*|(|1|)>=0.
    </equation*>

    Das kann nur der Fall sein, falls <math|deg<around*|(|f|)>=deg<around*|(|g|)>=0>.
    Dann sind aber <math|f> und <math|g> konstante Polynome, die insbesondere
    in <math|R> invertierbar sein müssen.
  </proof>

  <\definition>
    Sei <math|R> ein kommutativer Ring mit Eins und
    <math|I\<vartriangleleft\>R> ein echtes Ideal von <math|R>.

    <\indent>
      (1) <math|I> heiÿt <em|Primideal>, falls für alle <math|r,s\<in\>R> aus
      <math|r s\<in\>I> auch <math|r\<in\>I> oder <math|s\<in\>I> folgt. Wir
      nennen die Menge aller Primideale von <math|R> das <em|Spektrum von
      <math|R>> und schreiben

      <\equation*>
        <with|font-family|rm|Spec> R\<assign\><around*|{|I\<vartriangleleft\>R
        <around*|\|||\<nobracket\>> I<text| Primideal>|}>.
      </equation*>

      (2) <math|I> heiÿt <em|maximales Ideal>, falls <math|I> in der Menge
      aller echten Ideale bezüglich <math|\<subseteq\>> maximal ist; i.e.
      falls für alle Ideale <math|J\<vartriangleleft\>R> aus
      <math|I\<subseteq\>J> auch <math|I=J> folgt. Wir nennen die Menge aller
      maximalen Ideale von <math|R> das <em|maximale Spektrum von <math|R>>
      und schreiben

      <\equation*>
        <with|font-family|rm|MSpec> R\<assign\><around*|{|I\<vartriangleleft\>R
        <around*|\|||\<nobracket\>> I<text| maximales Ideal>|}>.
      </equation*>
    </indent>
  </definition>

  <\example>
    (1) Sei <math|R=<with|font|Bbb|Z>>. Ist <math|p\<in\><with|font|Bbb|P>>
    eine Primzahl, dann ist <math|p <with|font|Bbb|Z>> ein Primideal.
    Auÿerdem ist auch das von Null erzeugte Hauptideal <math|<around*|(|0|)>>
    ein Primideal. Allgemein gilt, dass <math|R> genau dann ein
    Integritätsbereich ist, wenn <math|<around*|(|0|)>\<in\><with|font-family|rm|Spec>
    R>.

    (2) Sei wieder <math|R=<with|font|Bbb|Z>>. Ist
    <math|p\<in\><with|font|Bbb|P>> eine Primzahl, dann ist <math|p
    <with|font|Bbb|Z>> auch ein maximales Ideal, aber
    <math|<around*|(|0|)>\<notin\><with|font-family|rm|MSpec> R>. Allgemein
    gilt, dass <math|<around*|(|0|)>\<in\><with|font-family|rm|MSpec> R>
    genau dann, wenn <math|R> ein Körper ist.

    (3) Aus Lemma <reference|integritaetsbereich-ideale-lemma> (3) folgt,
    dass in einem Integritätsbereich <math|R> ein Element <math|a\<in\>R>
    genau dann irreduzibel ist, wenn <math|<around*|(|a|)>> in der Menge der
    echten <em|Hauptideale> von <math|R> maximal ist. Ist <math|R> also ein
    Hauptidealring, dann ist <math|a\<in\>R> genau dann irreduzibel, wenn
    <math|<around*|(|a|)>> ein maximales Ideal ist.
  </example>

  <\lemma>
    <label|primelement-wenn-primideal>Sei <math|R> ein Integritätsbereich.
    Dann ist <math|0\<neq\>a\<in\>R> genau dann ein Primelement, wenn
    <math|<around*|(|a|)>\<in\><with|font-family|rm|Spec>
    R\<setminus\><around*|{|<around*|(|0|)>|}>>.
  </lemma>

  <\proof>
    Sei <math|a\<in\>R> prim und <math|b c\<in\><around*|(|a|)>> für
    <math|b,c\<in\>R>. Dann ist <math|a> ein Teiler von <math|b c> und daher
    <math|a\<mid\>b> oder <math|a\<mid\>c>, woraus
    <math|b\<in\><around*|(|a|)>> oder <math|c\<in\><around*|(|a|)>> folgt.
    Also <math|<around*|(|a|)>\<in\><with|font-family|rm|Spec>
    R\<setminus\><around*|{|<around*|(|0|)>|}>>. Umgekehrt sei
    <math|<around*|(|a|)>\<neq\><around*|(|0|)>> ein Primideal; dann folgt
    <math|a\<neq\>0> und <math|a\<notin\>R<rsup|\<ast\>>>. Aus
    <math|a\<mid\>b c> folgt <math|b c\<in\><around*|(|a|)>>, sodass
    <math|b\<in\><around*|(|a|)>> oder <math|c\<in\><around*|(|a|)>>, d.h.
    <math|a\<mid\>b> oder <math|a\<mid\>c>.
  </proof>

  Ist <math|R> insbesondere ein Hauptidealring, so ist <math|p\<in\>R> genau
  dann prim, wenn <math|p> irreduzibel ist, sodass in Hauptidealringen gilt
  <math|<with|font-family|rm|Spec> R=<with|font-family|rm|MSpec>
  R\<cup\><around*|{|<around*|(|0|)>|}>>. Das halten wir auch fest:

  <\proposition>
    <label|spec-mspec-formel>Sei <math|R> ein Hauptidealring. Dann gilt
    <math|<with|font-family|rm|Spec> R=<with|font-family|rm|MSpec>
    R\<cup\><around*|{|<around*|(|0|)>|}>>.
  </proposition>

  Bis jetzt kennen wir nur eine Methode, um aus einem Ring <math|R> einen
  weiteren Ring zu schaffen. Wir lernen jetzt eine weitere kennen.

  <\definition>
    Sei <math|R> ein kommutativer Ring mit Eins und
    <math|I\<trianglelefteqslant\>R> ein Ideal. Dann ist

    <\equation*>
      R/I\<assign\><around*|{|r+I <around*|\|||\<nobracket\>> r\<in\>R|}>
    </equation*>

    mit den Operationen

    <\math>
      <align*|<tformat|<table|<row|<cell|<around*|(|a+I|)>+<around*|(|b+I|)>\<assign\>>|<cell|<around*|(|a+b|)>+I,>>|<row|<cell|<around*|(|a+I|)>\<cdot\><around*|(|b+I|)>\<assign\>>|<cell|<around*|(|a\<cdot\>b|)>+I>>>>>
    </math>

    ein kommutativer Ring mit Einselement <math|1+I>. Wir nennen <math|R/I>
    den <em|Restklassenring von <math|R> modulo <math|I>><\footnote>
      Andere Sprechweisen für <math|R/I>: Quotientenring, Faktorring.
    </footnote>.
  </definition>

  Wir haben Quotientenringe bereits unter dem Deckmantel der Restklassenringe
  in den ganzen Zahlen kennengelernt. In der Tat, setzen wir
  <math|R=<with|font|Bbb|Z>> und <math|I=m <with|font|Bbb|Z>> für
  <math|m\<in\><with|font|Bbb|Z>>, so gilt <math|R/I=<with|font|Bbb|Z>/m
  <with|font|Bbb|Z>>. Setzen wir beispielsweise <math|m=0>, so erhalten wir
  <math|<with|font|Bbb|Z>/0 <with|font|Bbb|Z>=<with|font|Bbb|Z>> und setzen
  wir <math|m=1>, gilt <math|<with|font|Bbb|Z>/1
  <with|font|Bbb|Z>=<around*|{|0|}>>. Intuitiv forcieren wir in <math|R/I>,
  dass alle Elemente in <math|I> dem Nullelement entsprechen (in den obigen
  Beispielen setzen wir einerseits nur die Null auf Null bzw. ganz
  <math|<with|font|Bbb|Z>> auf Null). Man vergleiche Restklassenringe auch
  mit Quotientenvektorräumen aus der linearen Algebra.

  <\example>
    <label|quotientenring-konstante-polynome>Sei <math|R> ein kommutativer
    Ring mit Eins und <math|R<around*|[|X|]>> der Polynomring. Sei
    <math|I\<assign\><around*|(|X|)>> das von <math|X> erzeugte Hauptideal.
    Dann ist <math|R<around*|[|X|]>/<around*|(|X|)>=<around*|{|f+<around*|(|X|)>
    <around*|\|||\<nobracket\>> f\<in\>R<around*|[|X|]>|}>>, wobei wir

    <\equation*>
      f=<big|sum><rsub|i=0><rsup|n>a<rsub|i> X<rsup|i>=a<rsub|0>+X
      <around*|(|<big|sum><rsub|i=1><rsup|n>a<rsub|i> X<rsup|i-1>|)>
    </equation*>

    schreiben können. Also <math|f+I=a<rsub|0>+I>, i.e.
    <math|R<around*|[|X|]>/<around*|(|X|)>> ist die Menge der konstanten
    Polynome. Wir können <math|R> also mit
    <math|R<around*|[|X|]>/<around*|(|X|)>> identifizieren.
  </example>

  <\proposition>
    <label|ideale-quotientenring>Sei <math|R> ein kommutativer Ring mit Eins
    und <math|I\<trianglelefteqslant\>R> ein Ideal.

    <\indent>
      (1) <math|I\<in\><with|font-family|rm|Spec> R> genau dann, wenn
      <math|R/I> ein Integritätsbereich ist.

      (2) <math|I\<in\><with|font-family|rm|MSpec> R> genau dann, wenn
      <math|R/I> ein Körper ist.
    </indent>
  </proposition>

  <\proof>
    (1) Wir müssen zeigen, dass <math|R/I> nicht der Nullring und
    nullteilerfrei ist. Dazu bemerken wir:

    <math|<align*|<tformat|<table|<row|<cell|R/I<text| nullteilerfrei, nicht
    Nullring >\<Leftrightarrow\>>|<cell|I\<vartriangleleft\>R<text| und aus
    ><around*|(|r+I|)>\<cdot\><around*|(|s+I|)>=I<text| folgt >r+I=I<text|
    oder >s+I=I>>|<row|<cell|\<Leftrightarrow\>>|<cell|I\<vartriangleleft\>R<text|
    und aus >r s+I=I<text| folgt >r+I=I<text| oder
    >s+I=I>>|<row|<cell|\<Leftrightarrow\>>|<cell|I\<vartriangleleft\>R<text|
    und aus >r s\<in\>I<text| folgt >r\<in\>I<text| oder
    >s\<in\>I>>|<row|<cell|\<Leftrightarrow\>>|<cell|I\<in\><with|font-family|rm|Spec>
    R.>>>>>>

    (2) Sei <math|I\<vartriangleleft\>R> ein maximales Ideal. Nach Definition
    ist <math|I\<neq\>R>, also ist <math|R/I> nicht der Nullring. Sei also
    <math|a+I\<in\>R/I> mit <math|a\<notin\>I> beliebig. Dann folgt
    <math|I\<subsetneq\><around*|(|a|)>+I=R>, da <math|I> maximal ist, sodass
    ein <math|b\<in\>R> und <math|s\<in\>I> existiert mit <math|a b+s=1>.
    Dann folgt aber <math|a b-1=s\<in\>I>, i.e. <math|<around*|(|a
    b-1|)>+I=I> oder

    <\equation*>
      <around*|(|a+I|)>\<cdot\><around*|(|b+I|)>=a b+I=1+I,
    </equation*>

    d.h. <math|a+I> hat multiplikatives Inverses <math|b+I>.

    <space|1em>Sei umgekehrt <math|R/I> ein Körper. Sei
    <math|J\<trianglelefteqslant\>R> ein Ideal mit <math|I\<subsetneq\>J>.
    Dann ist <math|J=R>. In der Tat, sei <math|a\<in\>J\<setminus\>I>. Dann
    existiert <math|b\<in\>R> mit <math|a
    b+I=<around*|(|a+I|)>\<cdot\><around*|(|b+I|)>=1+I>, i.e. <math|a
    b-1\<in\>I\<subsetneq\>J>. Da <math|a\<in\>J> folgt insbesondere <math|a
    b\<in\>J> und damit <math|1\<in\>J>, d.h. <math|J=R>.
  </proof>

  <\example>
    Setzen wir in Beispiel <reference|quotientenring-konstante-polynome>
    <math|R=<with|font|Bbb|Z>>, so sehen wir insbesondere, dass
    <math|I=<around*|(|X|)>> ein Primideal in
    <math|<with|font|Bbb|Z><around*|[|X|]>> ist (da die ganzen Zahlen ein
    Integritätsbereich sind), aber kein maximales Ideal (da die ganzen Zahlen
    kein Körper sind).
  </example>

  <\theorem>
    Jeder kommutative Ring <math|R> mit Eins hat ein maximales Ideal.
  </theorem>

  <\proof>
    Siehe<nbsp><cite|Conrad2018>.
  </proof>

  <\example>
    <label|vervollständigung-von-körpern>(1) Ist <math|R> ein kommutativer
    Ring mit Eins und <math|I\<vartriangleleft\>R> ein maximales Ideal von
    <math|R>, dann ist <math|R/I> nach Proposition
    <reference|ideale-quotientenring> ein Körper und <em|a fortiori> ein
    Integritätsbereich, d.h. <math|I> ist ein Primideal. Es gilt also
    <math|<with|font-family|rm|MSpec> R\<subseteq\><with|font-family|rm|Spec>
    R>.

    (2) In <math|<with|font|Bbb|Z>> ist <math|<with|font|Bbb|Z>/m
    <with|font|Bbb|Z>> genau dann ein Körper, wenn <math|m> eine Primzahl
    ist, i.e. die maximalen Ideale von <math|<with|font|Bbb|Z>> sind jene der
    Form <math|<with|font|Bbb|Z>/p <with|font|Bbb|Z>,p\<in\><with|font|Bbb|P>>.
    Die Primideale sind nach Proposition <reference|spec-mspec-formel> dann
    von der Form <math|<with|font|Bbb|Z>/p
    <with|font|Bbb|Z>,p\<in\><with|font|Bbb|P>> und das Nullideal.

    (3) Beschränken wir uns in Beispiel <reference|polynomringe> nicht nur
    auf Folgen von <math|<with|font|Bbb|N><rsub|0>> nach <math|R> mit
    endlichem Träger, sondern lassen auch unendlich viele Folgenglieder, die
    nicht Null sind, zu, so erhalten wir (vermöge derselben Operationen) den
    Ring <math|R<around*|[|<around*|[|X|]>|]>> der <em|formalen
    Potenzreihen>. Offenbar gilt <math|R<around*|[|X|]>\<subseteq\>R<around*|[|<around*|[|X|]>|]>>.
    Gibt es auch einen Ring, der \Rdazwischen\P liegt?

    <space|1em>Sei <math|K> ein beliebiger Körper mit rationaler Norm, d.h.
    es gibt eine Funktion <math|<around*|\||\<cdot\>|\|>
    :K\<rightarrow\><with|font|Bbb|Q>>, welche die Eigenschaften einer Norm
    erfüllt. Sei

    <\equation*>
      <with|font|cal|C><rsub|K>\<assign\><around*|{|<around*|(|a<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>
      <around*|\|||\<nobracket\>> \<forall\>\<varepsilon\>\<in\><with|font|Bbb|Q>,\<varepsilon\>\<gtr\>0
      :\<exists\>N\<in\><with|font|Bbb|N> :\<forall\>n,m\<geq\>N
      :<around*|\||a<rsub|n>-a<rsub|m>|\|>\<less\>\<varepsilon\>|}>
    </equation*>

    die Menge der Cauchyfolgen bezüglich <math|<around*|\||\<cdot\>|\|>>. Wir
    definieren

    <\math>
      <align*|<tformat|<table|<row|<cell|<around*|(|a<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>+<around*|(|b<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>\<assign\>>|<cell|<around*|(|a<rsub|n>+b<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>,>>|<row|<cell|<around*|(|a<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>\<cdot\><around*|(|b<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>\<assign\>>|<cell|<around*|(|a<rsub|n>\<cdot\>b<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>>>>>>
    </math>

    für Cauchyfolgen <math|<around*|(|a<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>,<around*|(|b<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>>.
    Aus der Analysis wissen wir, dass diese Operationen wohldefiniert sind.
    Tatsächlich ist <math|<around*|(|<with|font|cal|C><rsub|K>,+,\<cdot\>|)>>
    sogar ein kommutativer Ring mit Eins, wie leicht überprüft werden kann.
    Ferner ist die Menge der Nullfolgen

    <\equation*>
      N<rsub|K>\<assign\><around*|{|<around*|(|a<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>\<in\><with|font|cal|C><rsub|K>
      <around*|\|||\<nobracket\>> \<forall\>\<varepsilon\>\<in\><with|font|Bbb|Q>,\<varepsilon\>\<gtr\>0
      : \<exists\>N\<in\><with|font|Bbb|N> :\<forall\>n\<geq\>N
      :<around*|\||a<rsub|n>|\|>\<less\>\<varepsilon\>|}>
    </equation*>

    ein maximales Ideal in <math|<with|font|cal|C><rsub|K>>. Damit ist
    <math|<wide|K|^>\<assign\><with|font|cal|C><rsub|K>/N<rsub|K>> ein Körper
    und, wie gezeigt werden kann (siehe beispielsweise<nbsp><cite|Kaltenbaeck2015>,
    Kapitel 4.1), sogar vollständig. Wir erhalten auÿerdem eine injektive
    Abbildung <math|<wide|\<iota\>|^> :K\<rightarrow\><wide|K|^>>, die jedem
    <math|a\<in\>K> das Element

    <\equation*>
      <wide|\<iota\>|^><around*|(|a|)>\<assign\><around*|(|a,a,a,\<ldots\>|)>+N<rsub|K>
    </equation*>

    zuweist. Setzen wir insbesondere <math|K\<assign\><with|font|Bbb|Q>>, so
    erhalten wir als Vervollständigung von <math|<with|font|Bbb|Q>> die
    reellen Zahlen <math|<wide|<with|font|Bbb|Q>|^>=<with|font|Bbb|R>>.

    <space|1em>Ganz allgemein kann man mit einem ähnlichen Verfahren aus
    einem beliebigen normierten Vektorraum <math|V> dessen Vervollständigung
    <math|<wide|V|\<bar\>>> konstruieren; diese ist dann ein
    Banach<\footnote>
      Stefan Banach (1892 \U 1945), polnischer Mathematiker
    </footnote>raum, in den <math|V> isometrisch und dicht eingebettet ist.
  </example>

  Dieses Beispiel entspringt einem allgemeineren Konzept und führt uns zu
  folgender Definition.

  <\definition>
    Sei <math|A> eine nichtleere Indexmenge und
    <math|<around*|(|R<rsub|a>|)><rsub|a\<in\>A>> eine Familie von Ringen.
    Dann ist

    <\equation*>
      <big|prod><rsub|a\<in\>A>R<rsub|a>\<assign\><around*|{|<around*|(|r<rsub|a>|)><rsub|a\<in\>A>
      <around*|\|||\<nobracket\>> \<forall\>a\<in\>A
      :r<rsub|a>\<in\>R<rsub|a>|}>
    </equation*>

    ein Ring vermöge der komponentenweisen Operationen

    <\math>
      <align*|<tformat|<table|<row|<cell|<around*|(|r<rsub|a>|)><rsub|a\<in\>A>+<around*|(|s<rsub|a>|)><rsub|a\<in\>A>\<assign\>>|<cell|<around*|(|r<rsub|a>+s<rsub|a>|)><rsub|a\<in\>A>,>>|<row|<cell|<around*|(|r<rsub|a>|)><rsub|a\<in\>A>\<cdot\><around*|(|s<rsub|a>|)><rsub|a\<in\>A>\<assign\>>|<cell|<around*|(|r<rsub|a>\<cdot\>s<rsub|a>|)><rsub|a\<in\>A>.>>>>>
    </math>

    Wir nennen <math|<big|prod><rsub|a\<in\>A>R<rsub|a>> den <em|Produktring>
    der <math|R<rsub|a>> und sagen, dass <math|<big|prod><rsub|a\<in\>A>R<rsub|a>>
    <em|äuÿeres Produkt der <math|R<rsub|a>>> ist.
  </definition>

  Kehren wir nun zurück zum noch ausstehenden Beweis von Proposition
  <math|<reference|polynomring-euklidisch>>:

  <\proof>
    <math|<around*|(|1|)>\<Rightarrow\><around*|(|2|)>> Seien
    <math|f,g\<in\>R<around*|[|X|]>> mit <math|g\<neq\>0> beliebig. Wir
    müssen zeigen, dass Polynome <math|q,r\<in\>R<around*|[|X|]>> existieren,
    sodass <math|f=g q+r> und <math|deg<around*|(|r|)>\<less\>deg<around*|(|g|)>>.
    Ist <math|deg<around*|(|f|)>\<less\>deg<around*|(|g|)>>, so können wir
    einfach <math|q=0> und <math|r=f> setzen. Seien nun
    <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i>
    X<rsup|i>,g=<big|sum><rsub|j=0><rsup|m>b<rsub|j> X<rsup|j>> wobei
    <math|m=deg<around*|(|g|)>\<leq\>deg<around*|(|f|)>=n>. Wir führen jetzt
    Induktion nach <math|n>: Ist <math|n=0>, dann folgt die Aussage
    unmittelbar aus Beispiel <reference|koerper-euklidisch> (2). Gilt die
    Aussage für <math|n-1>, so setzen wir zunächst
    <math|s\<assign\>f-<frac|a<rsub|n>|b<rsub|m>>\<cdot\>g\<cdot\>X<rsup|n-m>>.
    Dann ist <math|s\<in\>R<around*|[|X|]>> und
    <math|deg<around*|(|s|)>\<less\>deg<around*|(|f|)>>; also gibt es nach
    Induktionsvoraussetzung <math|q<rsub|0>,r\<in\>R<around*|[|X|]>>, sodass
    <math|s=q<rsub|0> g+r> und <math|deg<around*|(|r|)>\<less\>deg<around*|(|g|)>>.
    Daraus folgt aber, dass <math|f=<around*|(|q<rsub|0>+<frac|a<rsub|n>|b<rsub|m>>
    X<rsup|n-m>|)> g+r>. Somit können wir
    <math|q\<assign\>q<rsub|0>+<frac|a<rsub|n>|b<rsub|m>> X<rsup|n-m>> setzen
    und die Behauptung folgt.

    <space|1em>Zur Eindeutigkeit: Seien <math|q<rsub|1>,q<rsub|2>,r<rsub|1>,r<rsub|2>\<in\>R<around*|[|X|]>>,
    sodass <math|f=q<rsub|1> g+r<rsub|1>=q<rsub|2> g+r<rsub|2>> mit
    <math|deg<around*|(|r<rsub|1>|)>,deg<around*|(|r<rsub|2>|)>\<less\>deg<around*|(|g|)>>.
    Dann ist <math|<around*|(|q<rsub|1>-q<rsub|2>|)> g=r<rsub|2>-r<rsub|1>>.
    Da im Fall <math|q<rsub|2>-q<rsub|1>\<neq\>0> folgen würde, dass

    <\equation*>
      deg<around*|(|<around*|(|q<rsub|1>-q<rsub|2>|)>
      g|)>=deg<around*|(|q<rsub|1>-q<rsub|2>|)>+deg<around*|(|g|)>\<geq\>deg<around*|(|g|)>,
    </equation*>

    gäbe es einen Widerspruch zu <math|deg<around*|(|r<rsub|2>-r<rsub|1>|)>\<less\>deg<around*|(|g|)>>.
    Also ist <math|q<rsub|1>=q<rsub|2>> und <math|r<rsub|1>=r<rsub|2>>.

    <math|<around*|(|2|)>\<Rightarrow\><around*|(|3|)>> Das folgt unmittelbar
    aus Satz <reference|euklidisch-dann-hauptidealring>.

    <math|<around*|(|3|)>\<Rightarrow\><around*|(|1|)>> Sei
    <math|R<around*|[|X|]>> ein Hauptidealring. Wegen Beispiel
    <reference|quotientenring-konstante-polynome> können wir
    <math|R<around*|[|X|]>/<around*|(|X|)>> mit <math|R> selbst
    identifizieren. Da <math|R> nach Annahme ein Integritätsbereich ist, ist
    nach Proposition <reference|ideale-quotientenring>
    <math|R<around*|[|X|]>/<around*|(|X|)>> also auch ein Integritätsbereich,
    d.h. <math|<around*|(|X|)>> ist ein Primideal in <math|R<around*|[|X|]>>.
    Aber <math|R<around*|[|X|]>> ist ein Hauptidealring, daher
    <math|<around*|(|X|)>\<neq\><around*|(|0|)>> nach Proposition
    <reference|spec-mspec-formel> auch ein maximales Ideal. Wieder aus
    Proposition <reference|ideale-quotientenring> folgt, dass
    <math|R<around*|[|X|]>/<around*|(|X|)>> ein Körper ist, insbesondere also
    <math|R>, was wir zeigen wollten.
  </proof>

  Um mehr über die Umkehrung \R<math|<text|HIR >\<Rightarrow\><text|
  euklidisch>>\P in Kästchen <reference|kaestchen-3> zu erfahren, werden uns
  Polynomringe alleine also nicht weiterhelfen. Womöglich ist ein
  Zusammenspiel von Polynomringen und den uns nun zur Verfügung stehenden
  Quotientenringe ausreichend, um diese Frage zu klären.

  <\lemma>
    <dueto|Korrespondenzsatz für Ideale><label|ideal-korrespondenz-satz>Sei
    <math|R> ein kommutativer Ring mit Eins und
    <math|I\<trianglelefteqslant\>R> ein Ideal. Dann entsprechen die Ideale
    <math|<wide|J|\<bar\>>\<trianglelefteqslant\>R/I> von <math|R/I> bijektiv
    den Idealen <math|J\<trianglelefteqslant\>R> von <math|R>, die <math|I>
    enthalten. Formal existiert also eine Bijektion

    <\equation*>
      \<Phi\> :<with|font|cal|J>\<assign\><around*|{|J\<trianglelefteqslant\>R
      <around*|\|||\<nobracket\>> I\<subseteq\>J|}>\<rightarrow\><wide|<with|font|cal|J>|\<bar\>>\<assign\><around*|{|<wide|J|\<bar\>>\<trianglelefteqslant\>R/I|}>.
    </equation*>
  </lemma>

  <\proof>
    Es sei <math|\<pi\> :R\<rightarrow\>R/I,\<pi\><around*|(|r|)>\<assign\>r+I>
    die <em|natürliche Projektion>. Offenbar gilt

    <\equation*>
      \<pi\><around*|(|r+s|)>=\<pi\><around*|(|r|)>+\<pi\><around*|(|s|)>,<space|1em>\<pi\><around*|(|r\<cdot\>s|)>=\<pi\><around*|(|r|)>\<cdot\>\<pi\><around*|(|s|)>,<space|1em>\<pi\><around*|(|1|)>=1+I
    </equation*>

    und ferner ist <math|\<pi\>> surjektiv.

    <space|1em>Sei <math|J\<in\><with|font|cal|J>>; dann ist
    <math|\<pi\><around*|(|J|)>\<in\><wide|<with|font|cal|J>|\<bar\>>>. In
    der Tat, seien <math|a+I,b+I\<in\>\<pi\><around*|(|J|)>> und
    <math|r+I\<in\>R/I> beliebig. Dann existieren
    <math|a<rsub|0>,b<rsub|0>\<in\>J> mit
    <math|\<pi\><around*|(|a<rsub|0>|)>=a<rsub|0>+I,\<pi\><around*|(|b<rsub|0>|)>=b+I>,
    und da <math|\<pi\>> surjektiv ist auch <math|r<rsub|0>\<in\>R> mit
    <math|\<pi\><around*|(|r<rsub|0>|)>=r+I>, sodass einerseits

    <\equation*>
      <around*|(|a+I|)>-<around*|(|b+I|)>=\<pi\><around*|(|a<rsub|0>|)>-\<pi\><around*|(|b<rsub|0>|)>=\<pi\><around*|(|a<rsub|0>-b<rsub|0>|)>\<in\>\<pi\><around*|(|J|)>,
    </equation*>

    da <math|a<rsub|0>-b<rsub|0>\<in\>J>, und andererseits

    <\equation*>
      <around*|(|r+I|)>\<cdot\><around*|(|a+I|)>=\<pi\><around*|(|r<rsub|0>|)>\<cdot\>\<pi\><around*|(|a<rsub|0>|)>=\<pi\><around*|(|r<rsub|0>
      a<rsub|0>|)>\<in\>\<pi\><around*|(|J|)>
    </equation*>

    wegen <math|r<rsub|0> a<rsub|0>\<in\>J> folgt. Also folgt
    <math|\<pi\><around*|(|J|)>\<in\><wide|<with|font|cal|J>|\<bar\>>>.

    <space|1em>Somit ist die Abbildung <math|\<Phi\>:<with|font|cal|J>\<rightarrow\><wide|<with|font|cal|J>|\<bar\>>,\<Phi\><around*|(|J|)>\<assign\>\<pi\><around*|(|J|)>>
    wohldefiniert. Wir zeigen, dass <math|\<Phi\>> bijektiv ist. Um die
    Surjektivität zu zeigen, beweisen wir zunächst, dass
    <math|\<pi\><rsup|-1><around*|(|<wide|J|\<bar\>>|)>\<in\><with|font|cal|J>>
    für alle <math|<wide|J|\<bar\>>\<in\><wide|<with|font|cal|J>|\<bar\>>>.
    Sind <math|a,b\<in\>\<pi\><rsup|-1><around*|(|<wide|J|\<bar\>>|)>>, so
    folgt

    <\equation*>
      \<pi\><around*|(|a-b|)>=<wide*|\<pi\><around*|(|a|)>|\<wide-underbrace\>><rsub|\<in\><wide|J|\<bar\>>>-<wide*|\<pi\><around*|(|b|)>|\<wide-underbrace\>><rsub|\<in\><wide|J|\<bar\>>>\<in\><wide|J|\<bar\>>,
    </equation*>

    i.e. <math|a-b\<in\>\<pi\><rsup|-1><around*|(|<wide|J|\<bar\>>|)>> und
    für beliebiges <math|r\<in\>R> gilt ähnlich

    <\equation*>
      \<pi\><around*|(|r a|)>=<wide*|\<pi\><around*|(|r|)>|\<wide-underbrace\>><rsub|\<in\>R/I>
      <wide*|\<pi\><around*|(|a|)>|\<wide-underbrace\>><rsub|\<in\><wide|J|\<bar\>>>\<in\><wide|J|\<bar\>>,
    </equation*>

    also auch <math|r a\<in\>\<pi\><rsup|-1><around*|(|<wide|J|\<bar\>>|)>>.
    Es folgt, dass <math|\<pi\><rsup|-1><around*|(|<wide|J|\<bar\>>|)>\<in\><with|font|cal|J>>.
    Ist also <math|<wide|J|\<bar\>>\<in\><wide|<with|font|cal|J>|\<bar\>>>
    beliebig, so folgt aus der Surjektivität von <math|\<pi\>>, dass
    <math|\<Phi\><around*|(|\<pi\><rsup|-1><around*|(|<wide|J|\<bar\>>|)>|)>=\<pi\><around*|(|\<pi\><rsup|-1><around*|(|<wide|J|\<bar\>>|)>|)>=<wide|J|\<bar\>>>,
    wie gewünscht.

    <space|1em>Zur Injektivität: Gilt <math|\<Phi\><around*|(|J|)>=\<Phi\><around*|(|J<rprime|'>|)>>
    für Ideale <math|J,J<rprime|'>\<in\><with|font|cal|J>>, so folgt

    <\equation*>
      J=J+I=\<pi\><around*|(|J|)>=\<Phi\><around*|(|J|)>=\<Phi\><around*|(|J<rprime|'>|)>=\<pi\><around*|(|J<rprime|'>|)>=J<rprime|'>+I=J<rprime|'>
    </equation*>

    da <math|I\<subseteq\>J,J<rprime|'>>.
  </proof>

  Als Anwendung davon haben wir folgendes hilfreiches Ergebnis.

  <\lemma>
    Sei <math|R> ein noetherscher Ring und <math|I\<trianglelefteqslant\>R>
    ein Ideal. Dann ist <math|R/I> noethersch.
  </lemma>

  <\proof>
    Sei <math|<wide|J<rsub|1>|\<bar\>>\<subseteq\><wide|J<rsub|2>|\<bar\>>\<subseteq\>\<cdots\>>
    eine aufsteigende Kette <math|<around*|(|<wide|J|\<bar\>><rsub|n>|)><rsub|n\<geq\>1>>
    von Idealen in <math|R/I>. Mit der Notation von Lemma
    <reference|ideal-korrespondenz-satz>, existiert eine Bijektion
    <math|\<Phi\> :<with|font|cal|J>\<rightarrow\><wide|<with|font|cal|J>|\<bar\>>>,
    sodass <math|<around*|(|\<Phi\><rsup|-1><around*|(|<wide|J|\<bar\>><rsub|n>|)>|)><rsub|n\<geq\>1>>
    eine aufsteigende Kette von Idealen in <math|R> ist. Da <math|R>
    noethersch ist, wird <math|<around*|(|\<Phi\><rsup|-1><around*|(|<wide|J|\<bar\>><rsub|n>|)>|)><rsub|n\<geq\>1>>
    nach Proposition <reference|noethersche-ringe-proposition> stationär und
    dementsprechend auch <math|<around*|(|\<Phi\><around*|(|\<Phi\><rsup|-1><around*|(|<wide|J|\<bar\>><rsub|n>|)>|)>|)><rsub|n\<geq\>1>=<around*|(|<wide|J|\<bar\>><rsub|n>|)><rsub|n\<geq\>1>>,
    d.h. <math|R/I> ist noethersch.\ 
  </proof>

  Unmittelbar folgern lässt sich aus diesem Lemma, aus Proposition
  <reference|ideale-quotientenring> und Satz
  <reference|noethersch-dann-faktorzerlegung>:

  <\corollary>
    Ist <math|R> ein noetherscher Integritätsbereich und
    <math|I\<in\><with|font-family|rm|Spec> R>, dann ist <math|R/I> ein
    noetherscher Integritätsbereich und in Folge ein Ring mit
    Faktorzerlegung.
  </corollary>

  <\definition>
    Seien <math|R> und <math|S> Ringe.

    <\indent>
      (1) Eine Abbildung <math|\<phi\> :R\<rightarrow\>S> heiÿt
      <em|(Ring)-Homomorphismus>, wenn für alle <math|r,s\<in\>R> gilt, dass

      <\equation*>
        \<phi\><around*|(|r+s|)>=\<phi\><around*|(|r|)>+\<phi\><around*|(|s|)><space|1em><text|und><space|1em>\<phi\><around*|(|r\<cdot\>s|)>=\<phi\><around*|(|r|)>\<cdot\>\<phi\><around*|(|s|)>.
      </equation*>

      Haben <math|R> und <math|S> zusätzlich Einselemente <math|1<rsub|R>>
      bzw. <math|1<rsub|S>>, verlangen wir auch, dass
      <math|\<phi\><around*|(|1<rsub|R>|)>=1<rsub|S>> und nennen
      <math|\<phi\>> dann einen <em|Homomorphismus (von <math|R> nach
      <math|S>) mit Eins>.

      (2) Ein injektiver Homomorphismus heiÿt <em|Monomorphismus> oder
      <em|(isomorphe) Einbettung> und wir schreiben <math|\<phi\>
      :R\<hookrightarrow\>S>.

      (3) Ein surjektiver Homomorphismus heiÿt <em|Epimorphismus> und wir
      schreiben <math|\<phi\> :R\<twoheadrightarrow\>S>.

      (4) Ein bijektiver Homomorphismus heiÿt <em|Isomorphismus>. Wir
      schreiben dann <math|\<phi\>:R <wide|\<rightarrow\>|~> S> und
      <math|R\<cong\>S>. Man nennt <math|R> und <math|S> dann zueinander
      <em|isomorph>.
    </indent>
  </definition>

  <\example>
    <label|ringhomomorphismus-beispiele>(1) Die Einbettungsabbildung
    <math|\<iota\><rsub|R> :R\<rightarrow\>R<around*|[|X|]>> aus Beispiel
    <reference|polynomringe> ist ein injektiver Homomorphismus; hat <math|R>
    ein Einselement, dann ist <math|\<iota\><rsub|R>> auch ein Homomorphismus
    mit Eins. Ebenso ist <math|<wide|\<iota\>|^> :K\<rightarrow\><wide|K|^>>
    aus Beispiel <reference|vervollständigung-von-körpern> ein injektiver
    Homomorphismus mit Eins.

    (2) In Beispiel <math|<reference|quotientenring-konstante-polynome>>
    haben wir gezeigt, dass <math|R> und <math|R<around*|[|X|]>/<around*|(|X|)>>
    miteinander identifizierbar sind (dieses Faktum haben wir dann in
    Proposition <reference|polynomring-euklidisch> verwendet). Formal gilt
    also <math|R\<cong\>R<around*|[|X|]>/<around*|(|X|)>>.

    (3) Die natürliche Projektion <math|\<pi\> :R\<rightarrow\>R/I>, die wir
    im Beweis von Lemma <reference|ideal-korrespondenz-satz> verwendet haben
    ist ein Epimorphismus und wird dementsprechend auch <em|kanonischer
    Homomorphismus> bzw. <em|kanonischer Epimorphismus> genannt.

    (4) Für alle Ringe <math|R,S> ist die Nullabbildung
    <math|r\<mapsto\>0<rsub|S>> ein Homomorphismus. Haben <math|R> und
    <math|S> allerdings Einselemente, so ist diese Abbildung nicht
    notwendigerweise (sofern das Null- und Einselement nicht zusammenfallen)
    ein Homomorphismus mit Eins.

    (5) Die Identität auf einem Ring <math|R> ist immer ein Isomorphismus von
    <math|R> nach <math|R>.
  </example>

  <\lemma>
    <label|homomorphismus-null-lemma>Seien <math|R> und <math|S> Ringe,
    <math|\<phi\> :R\<rightarrow\>S> ein Homomorphismus. Dann gilt
    <math|\<phi\><around*|(|0<rsub|R>|)>=0<rsub|S>> und
    <math|\<phi\><around*|(|-r|)>=-\<phi\><around*|(|r|)>> für alle
    <math|r\<in\>R>.
  </lemma>

  <\proof>
    Für beliebiges <math|r\<in\>R> haben wir

    <\equation*>
      \<phi\><around*|(|r|)>=\<phi\><around*|(|0<rsub|R>+r|)>=\<phi\><around*|(|0<rsub|R>|)>+\<phi\><around*|(|r|)>,
    </equation*>

    i.e. <math|\<phi\><around*|(|0<rsub|R>|)>=0<rsub|S>> und demnach

    <\equation*>
      0<rsub|S>=\<phi\><around*|(|0<rsub|R>|)>=\<phi\><around*|(|r+<around*|(|-r|)>|)>=\<phi\><around*|(|r|)>+\<phi\><around*|(|-r|)>,
    </equation*>

    also <math|\<phi\><around*|(|-r|)>=-\<phi\><around*|(|r|)>>.
  </proof>

  Im Gegensatz dazu folgt aus der Definition eines Ringhomomorphismus von
  <math|R> nach <math|S> <em|ohne> Eins nicht, dass das Einselement von
  <math|R> ins Einselement von <math|S> übergeht. Dementsprechend haben wir
  den zusätzlichen Homomorphismus von <math|R> nach <math|S> <em|mit> Eins
  eingeführt, wo dies garantiert ist.

  <\definition>
    Seien <math|R> und <math|S> Ringe, <math|\<phi\> :R\<rightarrow\>S> ein
    Homomorphismus. Dann heiÿt die Menge

    <\equation*>
      ker \<phi\>\<assign\><around*|{|r\<in\>R <around*|\|||\<nobracket\>>
      \<phi\><around*|(|r|)>=0<rsub|S>|}>
    </equation*>

    der <em|Kern von <math|\<phi\>>>. Ferner definieren wir das <em|Bild von
    <math|\<phi\>>> als

    <\equation*>
      <with|font-family|rm|im> \<phi\>\<assign\><around*|{|\<phi\><around*|(|r|)>
      <around*|\|||\<nobracket\>> r\<in\>R|}>.
    </equation*>
  </definition>

  <\lemma>
    <label|kern-ist-ideal>Seien <math|R> und <math|S> Ringe, <math|\<phi\>
    :R\<rightarrow\>S> ein Homomorphismus. Dann gilt:

    <\indent>
      (1) <math|ker \<phi\>> ist ein Ideal von <math|R> und
      <math|<with|font-family|rm|im> \<phi\>> ist ein Teilring von <math|S>.

      (2) <math|\<phi\>> ist genau dann ein Monomorphismus, wenn <math|ker
      \<phi\>=<around*|{|0<rsub|R>|}>>.
    </indent>
  </lemma>

  <\proof>
    (1) Seien <math|r<rsub|1>,r<rsub|2>\<in\>ker \<phi\>> und <math|r\<in\>R>
    beliebig. Dann gilt

    <\equation*>
      \<phi\><around*|(|r<rsub|1>-r<rsub|2>|)>=\<phi\><around*|(|r<rsub|1>|)>-\<phi\><around*|(|r<rsub|2>|)>=0<rsub|S>-0<rsub|S>=0<rsub|S>,
    </equation*>

    also <math|r<rsub|1>-r<rsub|2>\<in\>ker \<phi\>>, sodass <math|ker
    \<phi\>> eine additive Untergruppe von <math|R> ist. Ferner sehen wir
    <math|\<phi\><around*|(|r r<rsub|1>|)>=\<phi\><around*|(|r|)>
    \<phi\><around*|(|r<rsub|1>|)>=\<phi\><around*|(|r|)>\<cdot\>0<rsub|S>=0<rsub|S>>,
    also ist <math|ker \<phi\>> ein Linksideal. Ähnlich zeigt man, dass
    <math|ker \<phi\>> auch ein Rechtsideal ist, i.e. <math|ker \<phi\>> ist
    ein Ideal von <math|R>.

    <space|1em>Die Behauptung, dass <math|<with|font-family|rm|im> \<phi\>>
    ein Teilring von <math|S> ist folgt unmittelbar aus der Definition von
    <math|<with|font-family|rm|im> \<phi\>>.

    (2) Ist <math|\<phi\>> ein Monomorphismus, so folgt unmittelbar aus Lemma
    <reference|homomorphismus-null-lemma>, dass <math|ker \<phi\>> trivial
    ist. Umgekehrt, falls <math|ker \<phi\>=<around*|{|0<rsub|R>|}>>, so
    folgt aus <math|\<phi\><around*|(|r<rsub|1>|)>=\<phi\><around*|(|r<rsub|2>|)>>
    für <math|r<rsub|1>,r<rsub|2>\<in\>R>, dass
    <math|\<phi\><around*|(|r<rsub|1>-r<rsub|2>|)>=\<phi\><around*|(|r<rsub|1>|)>-\<phi\><around*|(|r<rsub|2>|)>=0<rsub|S>>,
    also <math|r<rsub|1>-r<rsub|2>\<in\>ker \<phi\>>, d.h.
    <math|r<rsub|1>=r<rsub|2>>.
  </proof>

  <\theorem>
    <dueto|Erster Isomorphiesatz für Ringe><label|erster-isomorphiesatz-fuer-ringe>Es
    sei <math|\<phi\> :R\<rightarrow\>S> ein Ringhomomorphismus von <math|R>
    nach <math|S>. Dann induziert <math|\<phi\>> einen Isomorphismus

    <\equation*>
      \<phi\><rsup|\<ast\>> :R/ker \<phi\> <wide|\<rightarrow\>|~>
      <with|font-family|rm|im> \<phi\>,<space|1em>\<phi\><rsup|\<ast\>><around*|(|r+ker
      \<phi\>|)>\<assign\>\<phi\><around*|(|r|)>.
    </equation*>

    Insbesondere gilt <math|R/ker \<phi\>\<cong\><with|font-family|rm|im>
    \<phi\>>.
  </theorem>

  <\proof>
    Sei <math|K\<assign\>ker \<phi\>>. Wir zeigen schrittweise, dass
    <math|\<phi\><rsup|\<ast\>>> ein wohldefinierter Isomorphismus von
    <math|R> nach <math|S> ist.

    Wohldefiniertheit: Seien <math|r<rsub|1>,r<rsub|2>\<in\>R> mit
    <math|r<rsub|1>+K=r<rsub|2>+K>. Dann gilt
    <math|r<rsub|1>-r<rsub|2>\<in\>K>, also
    <math|\<phi\><around*|(|r<rsub|1>|)>-\<phi\><around*|(|r<rsub|2>|)>=\<phi\><around*|(|r<rsub|1>-r<rsub|2>|)>=0>.
    Insbesondere muss <math|\<phi\><around*|(|r<rsub|1>|)>=\<phi\><around*|(|r<rsub|2>|)>>
    gelten, d.h. <math|\<phi\><rsup|\<ast\>><around*|(|r<rsub|1>+K|)>=\<phi\><rsup|\<ast\>><around*|(|r<rsub|2>+K|)>>.

    Homomorphieeigenschaft: Für alle <math|r,s\<in\>R> gilt

    <math|<align*|<tformat|<table|<row|<cell|\<phi\><rsup|\<ast\>><around*|(|<around*|(|r+K|)>+<around*|(|s+K|)>|)>=>|<cell|\<phi\><rsup|\<ast\>><around*|(|<around*|(|r+s|)>+K|)>=\<phi\><around*|(|r+s|)>=\<phi\><around*|(|r|)>+\<phi\><around*|(|s|)>>>|<row|<cell|=>|<cell|\<phi\><rsup|\<ast\>><around*|(|r+K|)>+\<phi\><rsup|\<ast\>><around*|(|s+K|)>.>>>>>>

    Analog zeigt man, dass <math|\<phi\><rsup|\<ast\>>> auch mit der
    Multiplikation verträglich ist.

    Injektivität: Ist <math|0=\<phi\><rsup|\<ast\>><around*|(|r+K|)>=\<phi\><around*|(|r|)>>
    für ein <math|r\<in\>R>, so gilt offenbar <math|r\<in\>K>. Daraus folgt,
    dass <math|ker \<phi\><rsup|\<ast\>>=<around*|{|0+K|}>> und somit ist
    <math|\<phi\><rsup|\<ast\>>> nach Lemma <reference|kern-ist-ideal> (2)
    injektiv.

    Surjektivität: Das folgt unmittelbar aus der Definition von
    <math|\<phi\><rsup|\<ast\>>>.
  </proof>

  <\example>
    (1) Sei <math|p\<in\><with|font|Bbb|P>> eine Primzahl. Dann ist
    <math|<with|font|Bbb|Z><around*|[|X|]>/<around*|(|p,X|)>> ein Körper, da
    die Abbildung

    <\equation*>
      \<phi\> :<with|font|Bbb|Z><around*|[|X|]>\<rightarrow\><with|font|Bbb|F><rsub|p>,<space|1em>\<phi\><around*|(|f|)>\<assign\>a<rsub|0>
      <pmod|p><space|1em><text|für <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i>
      X<rsup|i>>>,
    </equation*>

    Kern <math|<around*|(|p,X|)>> hat mit Bild
    <math|<with|font|Bbb|F><rsub|p>>. Nach Satz
    <reference|erster-isomorphiesatz-fuer-ringe> gilt also die Isomorphie
    <math|<with|font|Bbb|Z><around*|[|X|]>/<around*|(|p,X|)>\<cong\><with|font|Bbb|F><rsub|p>>
    und wir sehen insbesondere, dass <math|<around*|(|p,X|)>> ein maximales
    Ideal in <math|<with|font|Bbb|F><rsub|p>> ist.

    (2) Offenbar können wir Beispiel <reference|quotientenring-konstante-polynome>
    mit dem Ersten Isomorphiesatz für Ringe leicht formalisieren, indem wir
    die Abbildung <math|\<phi\> :R<around*|[|X|]>\<rightarrow\>R> betrachten,
    die jedem Polynom <math|f\<in\>R<around*|[|X|]>> sein konstantes Glied
    zuweist.
  </example>

  <section|Polynomringe>

  <\definition>
    Sei <math|S> ein Ring und <math|R\<leq\>S> ein Unterring von <math|S>.

    <\indent>
      (1) Es sei <math|b\<in\>S> und <math|f\<in\>R<around*|[|X|]>> beliebig
      mit <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i> X<rsup|i>> für
      <math|a<rsub|0>,\<ldots\>,a<rsub|n>\<in\>R>. Wir definieren die
      Abbildung

      <\equation*>
        <with|font-family|rm|ev><rsub|b> :R<around*|[|X|]>\<rightarrow\>S,<space|1em>f\<mapsto\><with|font-family|rm|ev><rsub|b><around*|(|f|)>\<assign\><choice|<tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n>a<rsub|i>
        b<rsup|i><text|, falls >f\<neq\>0,>>|<row|<cell|0<text|, falls
        >f=0,>>>>>
      </equation*>

      genannt <em|Evaluationsabbildung bei <math|b\<in\>S>>.

      (2) Sei umgekehrt <math|f\<in\>R<around*|[|X|]>> gegeben. Dann
      existiert eine natürliche Zuweisung <math|f\<mapsto\>F>, wobei

      <\equation*>
        F :S\<rightarrow\>S,<space|1em>b\<mapsto\>f<around*|(|b|)>\<assign\><with|font-family|rm|ev><rsub|b><around*|(|f|)>.
      </equation*>

      Wir nennen dann <math|b\<in\>S> eine <em|Nullstelle> von <math|f>,
      falls <math|f<around*|(|b|)>=0> gilt, i.e. <math|f\<in\>ker
      <with|font-family|rm|ev><rsub|b>>. Wir nennen diese Zuweisung

      <\equation*>
        <with|font-family|rm|Polfkt> :R<around*|[|X|]>\<rightarrow\><around*|{|\<phi\>
        :S\<rightarrow\>S<text| Abbildung>|}>.
      </equation*>
    </indent>
  </definition>

  <\example>
    <label|evaluationsabbildung-homomorphismus>Ist <math|S> ein kommutativer
    Ring mit Eins, so ist die Evaluationsabbildung offenbar ein
    Ringhomomorphismus. Bei nicht-kommutativen Ringen ist das nicht der Fall.
    Sei beispielsweise <math|R=S=M<rsub|2><around*|(|<with|font|Bbb|Z>|)>>
    der Matrizenring aus Beispiel <reference|matrizenring> (3). Setzen wir
    <math|f\<assign\>X-A> und <math|g\<assign\>X+A> für fixiertes
    <math|A\<in\>M<rsub|2><around*|(|<with|font|Bbb|Z>|)>>, dann folgt
    <math|f\<cdot\>g=X<rsup|2>-A<rsup|2>>. Insbesondere sei
    <math|A=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>>>>>>
    und <math|B\<assign\><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>>.
    Dann gilt

    <math|<align*|<tformat|<table|<row|<cell|<with|font-family|rm|ev><rsub|B><around*|(|f\<cdot\>g|)>=>|<cell|B<rsup|2>-A<rsup|2>=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>>>>><rsup|2>-<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>>>>><rsup|2>=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|-1>|<cell|0>>>>><text|,
    aber>>>|<row|<cell|<with|font-family|rm|ev><rsub|B><around*|(|f|)>\<cdot\><with|font-family|rm|ev><rsub|B><around*|(|g|)>=>|<cell|<around*|(|<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>-<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>>>>>|)>\<cdot\><around*|(|<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>>>>>+<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>>>>>|)>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|-2>|<cell|-1>>>>>,>>>>>>

    also ist <math|<with|font-family|rm|ev><rsub|B>> nicht multiplikativ.
  </example>

  In den reellen Zahlen verwenden wir die Begriffe \RPolynom\P und
  \RPolynomfunktion\P synonym. Formal ist <math|<with|font-family|rm|Polfkt>>
  in <math|<with|font|Bbb|R><around*|[|X|]>> also injektiv. Wann ist das
  allgemein der Fall, i.e. wann kann man ein Polynom mit seiner
  Polynomfunktion identifizieren? Seien dazu <math|f,g\<in\>R<around*|[|X|]>>
  mit <math|<with|font-family|rm|Polfkt><around*|(|f|)>=<with|font-family|rm|Polfkt><around*|(|g|)>>.
  Dann gilt:

  <math|<align*|<tformat|<table|<row|<cell|<with|font-family|rm|Polfkt><around*|(|f|)>=<with|font-family|rm|Polfkt><around*|(|g|)>\<Leftrightarrow\>>|<cell|f<around*|(|b|)>=g<around*|(|b|)><text|
  für alle <math|b\<in\>S>>>>|<row|<cell|\<Leftrightarrow\>>|<cell|<with|font-family|rm|ev><rsub|b><around*|(|f|)>=<with|font-family|rm|ev><rsub|b><around*|(|g|)><text|
  für alle <math|b\<in\>S>>>>|<row|<cell|\<Leftrightarrow\>>|<cell|<with|font-family|rm|ev><rsub|b><around*|(|f-g|)>=0<text|
  für alle <math|b\<in\>S>>>>|<row|<cell|\<Leftrightarrow\>>|<cell|f-g\<in\>ker
  <with|font-family|rm|ev><rsub|b><text| für alle
  <math|b\<in\>S>>>>|<row|<cell|\<Leftrightarrow\>>|<cell|f-g\<in\><big|cap><rsub|b\<in\>S>ker
  <with|font-family|rm|ev><rsub|b>.>>>>>>

  Also ist <math|<with|font-family|rm|Polfkt>> genau dann injektiv, wenn
  <math|<big|cap><rsub|b\<in\>S>ker <with|font-family|rm|ev><rsub|b>> trivial
  ist. Bei reellen Polynomen ist das offenbar der Fall, aber das ist nicht
  immer so:

  <\example>
    Betrachten wir die Polynome <math|f\<assign\>X<rsup|5>,g\<assign\>X> in
    <math|S\<assign\><with|font|Bbb|Z>/5 <with|font|Bbb|Z>>. Dann gilt

    <\equation*>
      f<around*|(|0|)>=0,<space|1em>f<around*|(|1|)>=1,<space|1em>f<around*|(|2|)>=2,<space|1em>f<around*|(|3|)>=3,<space|1em>f<around*|(|4|)>=4,
    </equation*>

    also <math|f=g>. Somit gilt <math|0\<neq\>X<rsup|5>-X\<in\><big|cap><rsub|b\<in\>S>ker
    <with|font-family|rm|ev><rsub|b>>.
  </example>

  <\proposition>
    <label|polynome-koerper-proposition>Sei <math|K> ein Körper und
    <math|f\<in\>K<around*|[|X|]>> ein Polynom mit
    <math|deg<around*|(|f|)>\<geq\>0>. Es gilt:

    <\indent>
      (1) <math|f\<in\>K<around*|[|X|]><rsup|\<ast\>>\<Leftrightarrow\>deg<around*|(|f|)>=0>.

      (2) Ist <math|deg<around*|(|f|)>=1>, dann ist <math|f> irreduzibel in
      <math|K<around*|[|X|]>>.

      (3) Ist <math|deg<around*|(|f|)>\<geq\>1> und hat <math|f> eine
      Nullstelle <math|\<alpha\>\<in\>K>, dann folgt
      <math|<around*|(|X-\<alpha\>|)> \<mid\>f>. Insbesondere gilt für
      <math|f> reduzibel dann, dass <math|deg<around*|(|f|)>\<gtr\>1>.

      (4) Ist <math|deg<around*|(|f|)>=2> oder <math|deg<around*|(|f|)>=3>,
      dann ist <math|f> genau dann irreduzibel, wenn <math|f> keine
      Nullstelle in <math|K> hat.
    </indent>
  </proposition>

  <\proof>
    (1) Siehe Lemma <reference|polynomring-lemma>.

    (2) Ist <math|deg<around*|(|f|)>=1>, dann gilt
    <math|f\<in\>K<around*|[|X|]>>, wobei <math|f\<neq\>0> und
    <math|f\<notin\>K<around*|[|X|]><rsup|\<ast\>>> nach (1). Sei
    <math|g\<in\>K<around*|[|X|]>> mit <math|g \<mid\>f>; dann gibt es
    <math|q\<in\>K<around*|[|X|]>> mit <math|f=g q>, sodass

    <\equation*>
      1=deg<around*|(|f|)>=deg<around*|(|g
      q|)>=deg<around*|(|g|)>+deg<around*|(|q|)>.
    </equation*>

    Dann muss aber mindestens eines der Polynome von Grad Null sein, i.e.
    Einheit.

    (3) Sei <math|deg<around*|(|f|)>\<geq\>1> und
    <math|f<around*|(|\<alpha\>|)>=0>. Sei <math|g\<assign\>X-\<alpha\>>.
    Nach Proposition <reference|polynomring-euklidisch> ist
    <math|K<around*|[|X|]>> euklidisch bezüglich <math|deg>, sodass
    <math|q,r\<in\>K<around*|[|X|]>> mit <math|f=g q+r> existieren und
    <math|deg<around*|(|r|)>\<less\>deg<around*|(|g|)>=1>. Dann folgt

    <\equation*>
      0=f<around*|(|\<alpha\>|)>=g<around*|(|\<alpha\>|)>
      q<around*|(|\<alpha\>|)>+r<around*|(|\<alpha\>|)>,
    </equation*>

    also <math|r<around*|(|\<alpha\>|)>=0>. Daraus folgt <math|f=g q>, i.e.
    <math|g \<mid\>f>. Ist <math|deg<around*|(|f|)>\<gtr\>1>, so ist
    <math|deg<around*|(|q|)>\<gtr\>0>, also <math|f> nicht irreduzibel.

    (4) Sei <math|deg<around*|(|f|)>=2> oder <math|deg<around*|(|f|)>=3>.
    Falls <math|f> eine Nullstelle <math|\<alpha\>\<in\>K> hat, dann ist
    <math|f> nach (3) nicht irreduzibel. Umgekehrt, nehmen wir an, dass
    <math|f> nicht irreduzibel in <math|K<around*|[|X|]>> ist. Dann können
    wir <math|f=p q> mit <math|p,q\<in\>K<around*|[|X|]>> schreiben, wobei
    <math|p,q\<neq\>0> und <math|p,q\<notin\>K<around*|[|X|]><rsup|\<ast\>>>.
    Insbesondere ist <math|deg<around*|(|p|)>\<gtr\>0> und
    <math|deg<around*|(|q|)>\<gtr\>0>, sodass aus

    <\equation*>
      deg<around*|(|p|)>+deg<around*|(|q|)>=deg<around*|(|p
      q|)>=deg<around*|(|f|)>\<in\><around*|{|2,3|}>
    </equation*>

    folgt, dass einer der beiden Grade genau Eins ist. Sei o. B. d. A.
    angenommen, dass <math|deg<around*|(|p|)>=1>, also <math|p=a<rsub|1>
    X+a<rsub|0>> für <math|a<rsub|0>,a<rsub|1>\<in\>K> und
    <math|a<rsub|1>\<neq\>0>. Dann gilt aber für
    <math|\<alpha\>\<assign\><around*|(|-a<rsub|0>|)> a<rsub|1><rsup|-1>>,
    dass

    <\equation*>
      f<around*|(|\<alpha\>|)>=p<around*|(|<around*|(|-a<rsub|0>|)>
      a<rsup|-1><rsub|1>|)> q<around*|(|<around*|(|-a<rsub|0>|)>
      a<rsub|1><rsup|-1>|)>=<around*|(|a<rsub|1> <around*|(|-a<rsub|0>|)>
      a<rsub|1><rsup|-1>+a<rsub|0>|)> q<around*|(|<around*|(|-a<rsub|0>|)>
      a<rsup|-1><rsub|1>|)>=0.
    </equation*>

    Also hat <math|f> eine Nullstelle bei <math|\<alpha\>\<in\>K>.
  </proof>

  Daraus ergibt sich ein wohlbekanntes Resultat:

  <\corollary>
    Sei <math|K> ein Körper und <math|f\<in\>K<around*|[|X|]>> nicht das
    konstante Nullpolynom. Dann hat <math|f> höchstens
    <math|deg<around*|(|f|)>> Nullstellen.
  </corollary>

  <\proof>
    Man wende vollständige Induktion nach <math|deg<around*|(|f|)>> an und
    verwende dann Proposition <math|<reference|polynome-koerper-proposition>>
    (3).
  </proof>

  Die Annahme, dass <math|K> ein Körper ist, ist wesentlich, wie folgendes
  Beispiel zeigt.

  <\example>
    (1) Das Polynom <math|2 X> hat in <math|<with|font|Bbb|Z>/4
    <with|font|Bbb|Z>> die zwei Nullstellen <math|0> und <math|2>, obwohl
    <math|deg<around*|(|2 X|)>=1>.

    (2) Das Polynom <math|f\<assign\>X<rsup|4>+2
    X<rsup|2>+1=<around*|(|X<rsup|2>+1|)><rsup|2>> ist offenbar reduzibel in
    <math|<with|font|Bbb|R><around*|[|X|]>>, hat aber keine reellen
    Nullstellen. Das zeigt, dass die Annahme <math|deg<around*|(|f|)>=2,3> in
    Proposition <math|<reference|polynome-koerper-proposition>> (4) wichtig
    ist.
  </example>

  <\corollary>
    <label|irreduzibel-polynom-quotientenring>Sei <math|K> ein Körper und
    <math|f\<in\>K<around*|[|X|]>> ein irreduzibles Polynom. Dann ist
    <math|K<around*|[|X|]>/<around*|(|f|)>> ein Körper.
  </corollary>

  <\proof>
    Da <math|f> irreduzibel ist, ist <math|<around*|(|f|)>> im Hauptidealring
    (wegen Proposition <reference|polynomring-euklidisch>)
    <math|K<around*|[|X|]>> maximal und somit ist
    <math|K<around*|[|X|]>/<around*|(|f|)>> nach Proposition
    <reference|ideale-quotientenring> sogar ein Körper.
  </proof>

  Später hilfreich sein wird dieses Resultat, das umgangssprachlich auch als
  \R<em|Freshman's Dream>\P bekannt ist:

  <\lemma>
    <label|freshmans-dream>Sei <math|p\<in\><with|font|Bbb|P>> eine Primzahl.
    Dann gilt in <math|<with|font|Bbb|F><rsub|p><around*|[|X,Y|]>>,

    <\equation*>
      <around*|(|X+Y|)><rsup|p>=X<rsup|p>+Y<rsup|p>.
    </equation*>
  </lemma>

  <\proof>
    Da <math|<with|font|Bbb|F><rsub|p><around*|[|X,Y|]>> ein kommutativer
    Ring ist gilt nach dem Binomischen Lehrsatz

    <\equation*>
      <around*|(|X+Y|)><rsup|p>=<big|sum><rsub|k=0><rsup|p><binom|p|k>
      X<rsup|p-k> Y<rsup|k>.
    </equation*>

    Untersuchen wir den dort vorkommenden Binomialkoeffizienten
    <math|<binom|p|k>> für <math|0\<less\>k\<less\>p>. Per Definition haben
    wir <math|<binom|p|k>=<frac|p!|<around*|(|p-k|)>! k!>>, also
    <math|p!=<binom|p|k> <around*|(|p-k|)>! k!>; insbesondere teilt <math|p>
    die rechte Seite dieser letzten Gleichung. Da <math|p> eine Primzahl ist,
    gilt <math|p \<mid\><binom|p|k>> oder <math|p \<mid\><around*|(|p-k|)>!>
    oder <math|p \<mid\>k!> und offenbar ist wegen <math|0\<less\>k\<less\>p>
    die einzige Möglichkeit <math|p \<mid\><binom|p|k>>. Folglich fallen alle
    Summanden mit <math|0\<less\>k\<less\>p> aus der obigen Summe weg und es
    verbleibt

    <\equation*>
      <around*|(|X+Y|)><rsup|p>=<binom|p|0> X<rsup|p-0> Y<rsup|0>+<binom|p|p>
      X<rsup|p-p> Y<rsup|p>=X<rsup|p>+Y<rsup|p>.
    </equation*>

    \;
  </proof>

  Unmittelbar hat dieses Lemma den <em|Kleinen Satz von Fermat<\footnote>
    Pierre de Fermat (1607 \U 1665), französischer Mathematiker und Jurist
  </footnote>> als Konsequenz.

  <\lemma>
    <dueto|Fermat><label|kleiner-fermat>Sei <math|p\<in\><with|font|Bbb|P>>
    eine Primzahl. Dann gilt <math|a<rsup|p>\<equiv\>a <pmod|p>> für alle
    <math|a\<in\><with|font|Bbb|Z>>.
  </lemma>

  <\proof>
    Es reicht die Behauptung für natürliches <math|a> zu zeigen, indem wir
    vollständige Induktion nach <math|a\<in\><with|font|Bbb|N><rsub|0>>
    führen. Für <math|a=0> ist die Aussage offensichtlich wahr und setzen wir
    voraus, dass sie für <math|a\<in\><with|font|Bbb|N><rsub|0>> stimmt, so
    folgt aus Lemma <reference|freshmans-dream> sofort

    <\equation*>
      <around*|(|a+1|)><rsup|p>\<equiv\>a<rsup|p>+1<rsup|p>\<equiv\>a+1,
    </equation*>

    was zu zeigen war.
  </proof>

  Kehren wir nun zum Studium von Polynomringen zurück. Unter anderem ergibt
  sich folgende wichtige Anwendung aus dem anfänglich etwas unscheinbar
  wirkenden Korollar <reference|irreduzibel-polynom-quotientenring>:

  <\theorem>
    <label|komplexe-zahlen-ideal>Es gilt <math|<with|font|Bbb|C>\<cong\><with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>>.
  </theorem>

  Dazu zunächst Wiederholung eines bekannten Hilfssatzes.

  <\lemma>
    <label|konjugiert-komplexer-wurzelsatz>Sei
    <math|f\<in\><with|font|Bbb|R><around*|[|X|]>> ein Polynom und
    <math|\<xi\>=a+b <sqrt|-1>> mit <math|a,b\<in\><with|font|Bbb|R>> eine
    Nullstelle von <math|f>. Dann ist auch <math|<wide|\<xi\>|\<bar\>>=a-b
    <sqrt|-1>> eine Nullstelle von <math|f>.
  </lemma>

  <\proof>
    Sei <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i> X<rsup|i>> für
    <math|a<rsub|0>,\<ldots\>,a<rsub|n>\<in\><with|font|Bbb|R>> und
    <math|n=deg<around*|(|f|)>>. Ist <math|f<around*|(|\<xi\>|)>=0>, so folgt

    <\equation*>
      0=<big|sum><rsub|i=0><rsup|n>a<rsub|i>
      \<xi\><rsup|i>=f<around*|(|\<xi\>|)>
    </equation*>

    und daher

    <\equation*>
      f<around*|(|<wide|\<xi\>|\<bar\>>|)>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>
      <around*|(|<wide|\<xi\>|\<bar\>>|)><rsup|i>=<big|sum><rsub|i=0><rsup|n>a<rsub|i>
      <wide|\<xi\><rsup|i>|\<bar\>>=<big|sum><rsub|i=0><rsup|n><wide|a<rsub|i>
      \<xi\><rsup|i>|\<bar\>>=<wide|<big|sum><rsub|i=0><rsup|n>a<rsub|i>
      \<xi\><rsup|i>|\<bar\>>=0,
    </equation*>

    wie gewünscht.
  </proof>

  Der Beweis ist nun eine einfache Anwendung von Satz
  <reference|erster-isomorphiesatz-fuer-ringe>.

  <\proof>
    Da <math|X<rsup|2>+1> keine reellen Nullstellen hat, ist das Polynom
    <math|X<rsup|2>+1> in <math|<with|font|Bbb|R><around*|[|X|]>> nach
    Proposition <reference|polynome-koerper-proposition> (4) irreduzibel,
    sodass

    <\equation*>
      <with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>
    </equation*>

    nach Folgerung <reference|irreduzibel-polynom-quotientenring> ein Körper
    ist. Nach Beispiel <reference|evaluationsabbildung-homomorphismus> ist

    <\equation*>
      \<phi\> :<with|font|Bbb|R><around*|[|X|]>\<rightarrow\><with|font|Bbb|C>,<space|1em>\<phi\><around*|(|f|)>\<assign\><with|font-family|rm|ev><rsub|<sqrt|-1>><around*|(|f|)>=f<around*|(|<sqrt|-1>|)>
    </equation*>

    ein Homomorphismus und sogar surjektiv. In der Tat, ist <math|z=a+b
    <sqrt|-1>> mit <math|a,b\<in\><with|font|Bbb|R>> eine komplexe Zahl, so
    gilt <math|\<phi\><around*|(|a+b X|)>=a+b <sqrt|-1>=z>. Weiterhin ist
    <math|ker \<phi\>=<around*|{|f\<in\><with|font|Bbb|R><around*|[|X|]>
    <around*|\|||\<nobracket\>> \<phi\><around*|(|f|)>=f<around*|(|<sqrt|-1>|)>=0|}>>,
    i.e. die Menge der reellen Polynome <math|f> mit Nullstelle
    <math|<sqrt|-1>>. Aus Lemma <reference|konjugiert-komplexer-wurzelsatz>
    ist für diese Polynome auch <math|-<sqrt|-1>> eine Nullstelle, <math|f>
    hat also Teiler <math|X\<pm\><sqrt|-1>> nach Proposition
    <reference|polynome-koerper-proposition>, i.e.
    <math|f\<in\><around*|(|X<rsup|2>+1|)>>. Daraus folgt <math|ker
    \<phi\>=<around*|(|X<rsup|2>+1|)>>, sodass aus dem Ersten Isomorphiesatz
    für Ringe (Satz <reference|erster-isomorphiesatz-fuer-ringe>) folgt,
    <math|<with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>\<cong\><with|font-family|rm|im>
    \<phi\>> und da <math|\<phi\>> surjektiv ist, insbesondere

    <\equation*>
      <with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>\<cong\><with|font|Bbb|C>,
    </equation*>

    was zu zeigen war.
  </proof>

  Tatsächlich verhält sich (wenig überraschend) der Körper
  <math|<with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>> wie die
  bereits bekannten komplexen Zahlen und verfügt über deren gewohnten
  Eigenschaften. Es ist also nicht nur denkbar, die <em|Isomorphie> von
  <math|<with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>> und dem
  bereits bestehenden<\footnote>
    Platonisten mögen hier \Rbestehend\P lesen, Formalisten \Reingeführt\P
    und Konstruktivisten \Rkonstruiert\P.
  </footnote> Objekt <math|<with|font|Bbb|C>> zu zeigen, sondern die
  komplexen Zahlen ausgehend von <math|<with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>>
  zu <em|definieren>.

  <space|1em>Setzen wir dazu <math|I\<assign\><around*|(|X<rsup|2>+1|)>> als
  das von <math|X<rsup|2>+1> erzeugte Hauptideal in
  <math|<with|font|Bbb|R><around*|[|X|]>>. Definieren wir dann

  <\equation*>
    <sqrt|-1><rsub|I>\<assign\>X+I,
  </equation*>

  so folgt

  <\equation*>
    <around*|(|<sqrt|-1><rsub|I>|)><rsup|2>=<around*|(|X+I|)><rsup|2>=<around*|(|X<rsup|2>+I|)>=-1+I,
  </equation*>

  wobei <math|-1+I> genau das additive Inverse der Eins in
  <math|<with|font|Bbb|R><around*|[|X|]>/I=<with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>>
  ist. Die Zahl <math|<sqrt|-1><rsub|I>> spielt also die Rolle der imaginären
  Einheit in diesem neuen Körper. Weitere Beobachtung zeigt auÿerdem, dass

  <math|<align*|<tformat|<table|<row|<cell|<with|font|Bbb|R><around*|[|X|]>/I=>|<cell|<around*|{|f+I
  <around*|\|||\<nobracket\>> f\<in\><with|font|Bbb|R><around*|[|X|]>|}>=<around*|{|<big|sum><rsub|i=0><rsup|n>a<rsub|i>
  X<rsup|i>+I <around*|\|||\<nobracket\>>
  a<rsub|0>,\<ldots\>,a<rsub|1>\<in\><with|font|Bbb|R>|}>>>|<row|<cell|=>|<cell|<around*|{|a<rsub|0>+a<rsub|1>
  X+I <around*|\|||\<nobracket\>> a<rsub|0>,a<rsub|1>\<in\><with|font|Bbb|R>|}>,>>>>>>

  wobei die Addition und Multiplikation von Elementen
  <math|a<rsub|0>+a<rsub|1> X+I> in <math|<with|font|Bbb|R><around*|[|X|]>/I>
  jener in <math|<with|font|Bbb|C>> entspricht. Das legt nahe,
  <math|<with|font|Bbb|C>> als die Menge der Restklassen
  <math|a<rsub|0>+a<rsub|1> X+I> zu definieren mit \Rreellem Teil\P
  <math|a<rsub|0>>, \Rimaginärem Teil\P <math|a<rsub|1>> und \Rimaginärer
  Einheit\P <math|<sqrt|-1><rsub|I>=X+I>.<\footnote>
    Alternativ ergibt sich aus dieser Darstellung ein expliziter
    Isomorphismus <math|a<rsub|0>+a<rsub|1> X\<mapsto\>a<rsub|0>+a<rsub|1>
    <sqrt|-1>> in Satz <reference|komplexe-zahlen-ideal>.
  </footnote>

  <space|1em>Ebenfalls erhalten wir die Einbettung

  <\equation*>
    \<rho\><rsub|<with|font|Bbb|R>> :<with|font|Bbb|R><long-arrow|\<rubber-hookrightarrow\>||\<iota\><rsub|<with|font|Bbb|R>>>
    <with|font|Bbb|R><around*|[|X|]><long-arrow|\<rubber-twoheadrightarrow\>||\<pi\>><with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>
  </equation*>

  der reellen Zahlen in den komplexen Zahlen. Das Bild
  <math|<with|font-family|rm|im> \<rho\><rsub|<with|font|Bbb|R>>=\<rho\><rsub|<with|font|Bbb|R>><around*|(|<with|font|Bbb|R>|)>>
  entspricht genau dem Unterkörper <math|<around*|{|a+0 <sqrt|-1>
  <around*|\|||\<nobracket\>> a\<in\><with|font|Bbb|R>|}>>. Die Bedeutung der
  komplexen Zahlen ergibt sich daraus, dass <math|<with|font|Bbb|C>> nicht
  nur topologisch vollständig ist (bezüglich der gewohnten euklidischen
  Metrik), sondern auch das algebraische Pendant erfüllt, die sogenannte
  <em|algebraische Abgeschlossenheit>.

  <\lemma>
    <label|algebraisch-abgeschlossen-lemma>Es sei <math|K> ein Körper und
    <math|f\<in\>K<around*|[|X|]>> ein Polynom. Dann sind äquivalent:

    <\indent>
      (1) <math|f> ist genau dann irreduzibel, wenn
      <math|deg<around*|(|f|)>=1>.

      (2) Ist <math|f> nicht konstant mit
      <math|n\<assign\>deg<around*|(|f|)>>, dann gibt es eindeutig bestimmte
      <math|\<alpha\><rsub|0>,\<ldots\>,\<alpha\><rsub|n>> mit

      <\equation*>
        f=\<alpha\><rsub|0> <big|prod><rsub|i=1><rsup|n><around*|(|X-\<alpha\><rsub|i>|)>.
      </equation*>

      (3) Falls <math|f> nicht konstant ist, hat <math|f> eine Nullstelle in
      <math|K>.
    </indent>
  </lemma>

  <\proof>
    <math|<around*|(|1|)>\<Rightarrow\><around*|(|2|)>> Sei
    <math|f\<in\>K<around*|[|X|]>> nicht-konstant mit
    <math|f=<big|sum><rsub|i=1><rsup|n>a<rsub|i> X<rsup|i>>. Da
    <math|K<around*|[|X|]>> ein Hauptidealring ist (Proposition
    <reference|polynomring-euklidisch>) und daher faktoriell (Satz
    <reference|hauptidealring-dann-faktoriell>) gibt es eindeutig bestimmte
    irreduzible Polynome <math|p<rsub|1>,\<ldots\>,p<rsub|m>\<in\>K<around*|[|X|]>>,
    sodass <math|f=\<varepsilon\>\<cdot\><big|prod><rsub|i=1><rsup|m>
    p<rsub|i>> für eine Einheit <math|\<varepsilon\>\<in\>K<around*|[|X|]><rsup|\<ast\>>>.
    Nach Annahme gilt <math|p<rsub|i>=c<rsub|i> X+b<rsub|i>> mit
    <math|c<rsub|i>\<neq\>0> für jedes <math|i\<in\><around*|{|1,\<ldots\>,m|}>>,
    sodass

    <\equation*>
      f=\<varepsilon\>\<cdot\><big|prod><rsub|i=1><rsup|m>p<rsub|i>=\<varepsilon\>\<cdot\><big|prod><rsub|i=1><rsup|m><around*|(|c<rsub|i>
      X+b<rsub|i>|)>.
    </equation*>

    Aus Proposition <reference|polynomring-lemma> (1) folgt, dass <math|m=n>,
    also

    <\equation*>
      f=\<varepsilon\>\<cdot\><big|prod><rsub|i=1><rsup|n>c<rsub|i><rsup|-1>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|X+b<rsub|i>
      c<rsup|-1><rsub|i>|)>.
    </equation*>

    Sei

    <\equation*>
      \<alpha\><rsub|0>\<assign\>\<varepsilon\>\<cdot\><big|prod><rsub|i=1><rsup|n>c<rsub|i><rsup|-1><space|1em><text|und><space|1em>a<rsub|i>\<assign\>-b<rsub|i>
      c<rsub|i><rsup|-1>;
    </equation*>

    dann folgt <math|f=\<alpha\><rsub|0> <big|prod><rsub|i=1><rsup|n><around*|(|X-\<alpha\><rsub|i>|)>>.

    <math|<around*|(|2|)>\<Rightarrow\><around*|(|3|)>> Das folgt unmittelbar
    aus der Darstellung von <math|f> als Produkt von Linearfaktoren.

    <math|<around*|(|3|)>\<Rightarrow\><around*|(|1|)>> Sei
    <math|f\<in\>K<around*|[|X|]>> irreduzibel. Dann ist <math|f> nicht das
    Nullpolynom und keine Einheit, daher <math|deg<around*|(|f|)>\<geq\>1>.
    Nach Annahme hat <math|f> also eine Nullstelle <math|\<alpha\>\<in\>K>;
    also folgt aus Proposition <reference|polynome-koerper-proposition> (3),
    dass <math|X-\<alpha\>> das Polynom <math|f> teilt. Da <math|f> aber
    irreduzibel ist, muss schon <math|f\<sim\>X-\<alpha\>> gelten, d.h.
    <math|deg<around*|(|f|)>=1>.
  </proof>

  <\definition>
    <label|algebraisch-abgeschlossen>Ein Körper, der die äquivalenten
    Bedingungen aus Lemma <reference|algebraisch-abgeschlossen-lemma>
    erfüllt, heiÿt <em|algebraisch abgeschlossen>.
  </definition>

  <\theorem>
    <dueto|Fundamentalsatz der Algebra><math|<with|font|Bbb|C>> ist
    algebraisch abgeschlossen.
  </theorem>

  <\proof>
    Siehe<nbsp><cite|Kaltenbaeck2015> für eine der unzähligen Beweismethoden.
  </proof>

  <\theorem>
    Es existiert kein endlicher algebraisch abgeschlossener Körper.
  </theorem>

  <\proof>
    Sei vorausgesetzt, dass <math|K> ein endlicher algebraisch
    abgeschlossener Körper mit Elementen <math|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>\<in\>K>
    ist. Da <math|K> insbesondere ein Integritätsbereich ist, gilt
    <math|n\<geq\>2> mit <math|0\<neq\>1>. Dann hat aber das nicht-konstante
    Polynom

    <\equation*>
      1+<big|prod><rsub|i=1><rsup|n><around*|(|X-\<alpha\><rsub|i>|)>
    </equation*>

    keine Nullstelle in <math|K>, im Widerspruch zu Lemma
    <reference|algebraisch-abgeschlossen-lemma>.
  </proof>

  <section|Quadratische Zahlkörper und Ganzheitsringe>

  Wir kennen mittlerweile einige interessante und hilfreiche Konstruktionen
  von Ringen. Eine weitere Konstruktion, um Gegenbeispiele von Kästchen
  <reference|kaestchen-2> zu finden, führen wir jetzt ein.

  <space|1em>Sei <math|d\<in\><with|font|Bbb|Z>> mit <math|d\<neq\>0> und
  <math|d\<neq\>1> eine quadratfreie ganze Zahl (d.h., aus <math|n \<mid\>d>
  und <math|n=m<rsup|2>> für ein <math|m\<in\><with|font|Bbb|Z>> folgt, dass
  <math|n=1>). Wir setzen<\footnote>
    Der Grund, warum wir <math|p<rsub|d>> und <math|\<omega\><rsub|d>> so
    wählen, wird in Proposition <reference|od-ganzer-abschluss-von-z>
    aufgeklärt.
  </footnote>

  <\equation*>
    p<rsub|d>\<assign\><choice|<tformat|<table|<row|<cell|X<rsup|2>-d<text|,
    falls <math|d\<equiv\>2,3 <pmod|4>>>,>>|<row|<cell|X<rsup|2>-X+<frac|1-d|4><text|,
    falls <math|d\<equiv\>1 <pmod|4>>>>>>>>
  </equation*>

  sowie

  <\equation*>
    \<omega\><rsub|d>\<assign\><choice|<tformat|<table|<row|<cell|<sqrt|d><text|,
    falls <math|d\<equiv\>2,3 <pmod|4>>>,>>|<row|<cell|<frac|1+<sqrt|d>|2><text|,
    falls <math|d\<equiv\>1 <pmod|4>>>>>>>>,<space|1em>\<omega\><rsup|\<ast\>><rsub|d>\<assign\><choice|<tformat|<table|<row|<cell|-<sqrt|d><text|,
    falls <math|d\<equiv\>2,3 <pmod|4>>>,>>|<row|<cell|<frac|1-<sqrt|d>|2><text|,
    falls <math|d\<equiv\>1 <pmod|4>>>.>>>>>
  </equation*>

  Dann ist <math|p<rsub|d>> ein ganzzahliges Polynom, also Element von
  <math|<with|font|Bbb|Z><around*|[|X|]>>, somit von
  <math|<with|font|Bbb|Q><around*|[|X|]>> und als Polynom in
  <math|<with|font|Bbb|Q><around*|[|X|]>> sogar irreduzibel. In der Tat
  zerfällt <math|p<rsub|d>=<around*|(|X-\<omega\><rsub|d>|)>
  <around*|(|X-\<omega\><rsub|d><rsup|\<ast\>>|)>> in Linearfaktoren über
  <math|<with|font|Bbb|C>>, wobei aber <math|<sqrt|d>\<notin\><with|font|Bbb|Q>>,
  da wir <math|d> quadratfrei gewählt haben, sodass per Definition
  <math|\<omega\><rsub|d>,\<omega\><rsub|d><rsup|\<ast\>>\<notin\><with|font|Bbb|Q>>.
  Es folgt, dass <math|p<rsub|d>> keine rationalen Nullstellen hat, nach
  Proposition <reference|polynome-koerper-proposition> (4) also irreduzibel
  in <math|<with|font|Bbb|Q><around*|[|X|]>> ist. Aus Folgerung
  <math|<reference|irreduzibel-polynom-quotientenring>> folgt, dass
  <math|<with|font|Bbb|Q><around*|[|X|]>/<around*|(|p<rsub|d>|)>> ein Körper
  ist.

  <\definition>
    <label|quadratischer-zahlkoerper>Wir nennen den Körper

    <\equation*>
      <with|font|Bbb|Q><around*|(|<sqrt|d>|)>\<assign\><with|font|Bbb|Q><around*|[|X|]>/<around*|(|p<rsub|d>|)>,
    </equation*>

    für <math|d\<in\><with|font|Bbb|Z>\<setminus\><around*|{|0,1|}>>
    quadratfrei, <em|quadratischen Zahlkörper>.
  </definition>

  Die Elemente dieses Körpers können ähnlich wie in <math|<with|font|Bbb|C>>
  dargestellt werden:

  <\lemma>
    <label|quadratischer-zahlkoerper-isomorphismus>Es gilt

    <\equation*>
      <with|font|Bbb|Q><around*|(|<sqrt|d>|)>\<cong\><around*|{|a+b <sqrt|d>
      <around*|\|||\<nobracket\>> a,b\<in\><with|font|Bbb|Q>|}>.
    </equation*>
  </lemma>

  <\proof>
    Sei, ähnlich wie im Beweis von Satz <reference|komplexe-zahlen-ideal>

    <\equation*>
      \<phi\> :<with|font|Bbb|Q><around*|[|X|]>\<rightarrow\><with|font|Bbb|C>,<space|1em>\<phi\><around*|(|f|)>\<assign\>f<around*|(|\<omega\><rsub|d>|)>
    </equation*>

    die Evaluationsabbildung. Ist <math|f\<in\><with|font|Bbb|Q><around*|[|X|]>>
    ein beliebiges Polynom, so folgt aus Proposition
    <reference|polynomring-euklidisch>, dass <math|f=q p<rsub|d>+r> für
    <math|q,r\<in\><with|font|Bbb|Q><around*|[|X|]>> und
    <math|deg<around*|(|r|)>\<less\>deg<around*|(|p<rsub|d>|)>=2>. Wir können
    also <math|r=a+b X> für <math|a,b\<in\><with|font|Bbb|Q><around*|[|X|]>>
    schreiben, sodass

    <\equation*>
      f<around*|(|\<omega\><rsub|d>|)>=a+b \<omega\><rsub|d>.
    </equation*>

    Liegt <math|f> im Kern von <math|\<phi\>>, so gilt <math|a+b
    \<omega\><rsub|d>=0>; insbesondere folgt aus
    <math|\<omega\><rsub|d>\<notin\><with|font|Bbb|Q>>, dass <math|a=b=0>.
    Daraus folgt <math|r=0> und <math|f=q p<rsub|d>>, i.e. <math|ker
    \<phi\>=<around*|(|p<rsub|d>|)>>.

    <space|1em>Aus der obigen Bemerkung wissen wir
    <math|<with|font-family|rm|im> \<phi\>=<around*|{|a+b \<omega\><rsub|d>
    <around*|\|||\<nobracket\>> a,b\<in\><with|font|Bbb|Q>|}>>. Wir zeigen,
    dass <math|<with|font-family|rm|im> \<phi\>=<around*|{|a+b <sqrt|d>
    <around*|\|||\<nobracket\>> a,b\<in\><with|font|Bbb|Q>|}>>. Ist
    <math|d\<equiv\>2,3 <pmod|4>>, so gilt per Definition
    <math|\<omega\><rsub|d>=<sqrt|d>>; sei also <math|d\<equiv\>1 <pmod|4>>
    und daher <math|\<omega\><rsub|d>=<frac|1+<sqrt|d>|2>>. Sei <math|a+b
    \<omega\><rsub|d>\<in\><with|font-family|rm|im> \<phi\>> für
    <math|a,b\<in\><with|font|Bbb|Q>> beliebig. Einsetzen liefert dann

    <\equation*>
      a+b \<omega\><rsub|d>=a+<frac|b+b <sqrt|d>|2>=<around*|(|a+<frac|b|2>|)>+<frac|b|2>
      <sqrt|d>\<in\><around*|{|a+b <sqrt|d> <around*|\|||\<nobracket\>>
      a,b\<in\><with|font|Bbb|Q>|}>.
    </equation*>

    Sei umgekehrt <math|p+q <sqrt|d>> mit <math|p,q\<in\><with|font|Bbb|Q>>.
    Schreiben wir <math|<sqrt|d>=2 \<omega\><rsub|d>-1>, so folgt

    <\equation*>
      p+q <sqrt|d>=p+q <around*|(|2 \<omega\><rsub|d>-1|)>=<around*|(|p-q|)>+2
      q \<omega\><rsub|d>\<in\><with|font-family|rm|im> \<phi\>.
    </equation*>

    Die Behauptung folgt also aus Satz <reference|erster-isomorphiesatz-fuer-ringe>.
  </proof>

  Auf diese Weise ist es dann natürlich <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
  als zweidimensionalen Vektorraum über <math|<with|font|Bbb|Q>> (vermöge der
  gewohnten Vektoraddition und Skalarmultiplikation) mit Basis
  <math|<around*|{|1,<sqrt|d>|}>> bzw. <math|<around*|{|1,\<omega\><rsub|d>|}>>
  bzw. <math|<around*|{|1,\<omega\><rsup|\<ast\>><rsub|d>|}>> aufzufassen.
  Wir sagen dann, dass <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>
  :<with|font|Bbb|Q>> eine Körpererweiterung vom Grad

  <\equation*>
    <around*|[|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>
    :<with|font|Bbb|Q>|]>=dim<rsub|<with|font|Bbb|Q>>
    <around*|(|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>|)>=2
  </equation*>

  ist. (Mehr dazu im Kapitel über Körper.)

  <\lemma>
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> ist ein zweidimensionaler
    <math|<with|font|Bbb|Q>>-Vektorraum mit Basen
    <math|<around*|{|1,<sqrt|d>|}>>, <math|<around*|{|1,\<omega\><rsub|d>|}>>
    und <math|<around*|{|1,\<omega\><rsub|d><rsup|\<ast\>>|}>>.
  </lemma>

  <\proof>
    Identifizieren wir, Lemma <reference|quadratischer-zahlkoerper-isomorphismus>
    folgend, <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> als Teilkörper
    von <math|<with|font|Bbb|C>>, so folgt unmittelbar, dass
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> ein Vektorraum über
    <math|<with|font|Bbb|Q>> ist. Weisen wir nun nach, dass die behaupteten
    Mengen auch Basen dieses Vektorraums sind.

    <space|1em>Offenbar ist <math|<around*|{|1,<sqrt|d>|}>> ein
    Erzeugendensystem. Sei <math|a+b <sqrt|d>=0> mit
    <math|a,b\<in\><with|font|Bbb|Q>>. Gilt <math|b\<neq\>0>, so folgt, dass
    <math|<sqrt|d>=-<frac|a|b>\<in\><with|font|Bbb|Q>>, ein Widerspruch zur
    Irrationalität von <math|<sqrt|d>>. Demnach muss <math|a=b=0> gelten.
    Somit ist <math|<around*|{|1,<sqrt|d>|}>> eine Basis von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> und
    <math|dim<rsub|<with|font|Bbb|Q>> <with|font|Bbb|Q><around*|(|<sqrt|d>|)>=2>.

    <space|1em>Es verbleibt noch zu zeigen, dass auch
    <math|<around*|{|1,\<omega\><rsub|d>|}>> eine Basis ist; der Nachweis für
    <math|<around*|{|1,\<omega\><rsub|d><rsup|\<ast\>>|}>> ist ähnlich. Im
    Fall <math|d\<equiv\>2,3 <pmod|4>>, gilt
    <math|\<omega\><rsub|d>=<sqrt|d>>, sodass wir annehmen können, dass
    <math|d\<equiv\>1 <pmod|4>>. Ist aber

    <\equation*>
      0=a+b \<omega\><rsub|d>=a+b <around*|(|<frac|1+<sqrt|d>|2>|)>=<around*|(|a+<frac|b|2>|)>+<frac|b|2>
      <sqrt|d>
    </equation*>

    für <math|a,b\<in\><with|font|Bbb|Q>>, so folgt aus der linearen
    Unabhängigkeit von <math|<around*|{|1,<sqrt|d>|}>>, dass <math|a=b=0>,
    also ist auch <math|<around*|{|1,\<omega\><rsub|d>|}>> eine Basis von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>>.
  </proof>

  <\proposition>
    <label|einbettung-ring-der-ganze-zahlen>Sei
    <math|<with|font|cal|O><rsub|d>\<assign\><with|font|Bbb|Z><around*|[|X|]>/<around*|(|p<rsub|d>|)>>
    ein kommutativer Ring mit Eins. Dann ist

    <\equation*>
      \<phi\><rsub|d> :<with|font|cal|O><rsub|d>\<rightarrow\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>,<space|1em>\<phi\><rsub|d><around*|(|f+p<rsub|d>
      <with|font|Bbb|Z><around*|[|X|]>|)>\<assign\>f+p<rsub|d>
      <with|font|Bbb|Q><around*|[|X|]>
    </equation*>

    eine isomorphe Einbettung von Ringen.
  </proposition>

  Noch können wir diese Proposition nicht beweisen; sie hat aber interessante
  Konsequenzen, die weitere Hinweise zu den Umkehrungen in Kästchen
  <math|<reference|kaestchen-3>> liefern werden, wie folgendes Ergebnis
  zeigt.

  <\corollary>
    Das Hauptideal <math|<around*|(|p<rsub|d>|)>> ist in
    <math|<with|font|Bbb|Z><around*|[|X|]>> prim.
  </corollary>

  <\proof>
    Sei <math|\<phi\>> die Abbildung aus Proposition
    <reference|einbettung-ring-der-ganze-zahlen>. Da
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> als Körper nullteilerfrei
    ist, ist insbesondere <math|<with|font-family|rm|im>
    \<phi\>\<leq\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>> nullteilerfrei.
    Aber <math|<with|font-family|rm|im> \<phi\>\<cong\><with|font|cal|O><rsub|d>>,
    also ist <math|<with|font|cal|O><rsub|d>=<with|font|Bbb|Z><around*|[|X|]>/<around*|(|p<rsub|d>|)>>
    nullteilerfrei und daher ein Integritätsbereich. Aus Proposition
    <reference|ideale-quotientenring> folgt, dass
    <math|<around*|(|p<rsub|d>|)>> ein Primideal in
    <math|<with|font|Bbb|Z><around*|[|X|]>> ist.
  </proof>

  <\definition>
    Sei <math|R> ein faktorieller Ring und <math|f\<in\>R<around*|[|X|]>> mit
    <math|n\<assign\>deg<around*|(|f|)>> und

    <\equation*>
      f=<big|sum><rsub|i=0><rsup|n>a<rsub|i>
      X<rsup|i>,<space|1em>a<rsub|0>,\<ldots\>,a<rsub|n>\<in\>R,
    </equation*>

    nicht das Nullpolynom. Dann heiÿt <math|f> <em|primitiv>, wenn ein (und
    damit jeder) Maximalteiler von <math|<around*|{|a<rsub|0>,\<ldots\>,a<rsub|n>|}>>
    eine Einheit in <math|R> ist.
  </definition>

  <\example>
    Sei <math|f\<assign\><big|sum><rsub|i=0><rsup|n>a<rsub|i> X<rsup|i>> in
    <math|R<around*|[|X|]>>, <math|R> faktoriell.

    <\indent>
      (1) <math|f> ist offenbar primitiv, so <math|a<rsub|n>\<sim\>1>. Falls
      sogar <math|a<rsub|n>=1> gilt, nennen wir <math|f> <em|normiert> bzw.
      <em|monisch>.

      (2) Ist <math|f> irreduzibel und <math|deg<around*|(|f|)>\<geq\>1>,
      dann ist <math|f> primitiv, da jedes nicht primitive Polynom durch
      Rausfaktorisieren des nichttrivialen Maximalteilers der Koeffizienten
      offenbar reduzibel ist.
    </indent>
  </example>

  Das folgende Lemma wurde von Gauÿ<\footnote>
    Carl Friedrich Gauÿ (1777 \U 1855), deutscher Mathematiker, Statistiker,
    Astronom, Geodät, Elektrotechniker und Physiker
  </footnote> in seinen <em|Disquisitiones Arithmeticae> (1801) präsentiert.

  <\lemma>
    <dueto|Lemma von Gauÿ><label|lemma-von-gauss>Sei <math|R> ein
    faktorieller Ring und seien <math|f,g\<in\>R<around*|[|X|]>> primitive
    Polynome. Dann ist das Produkt <math|f\<cdot\>g> auch primitiv.
  </lemma>

  <\proof>
    Wir schreiben für <math|n\<assign\>deg<around*|(|f|)>,m\<assign\>deg<around*|(|g|)>>,
    die Ausdrücke <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i>
    X<rsup|i>,g=<big|sum><rsub|i=0><rsup|m>b<rsub|i> X<rsup|i>> an. Nehmen
    wir indirekt an, dass <math|f\<cdot\>g> nicht primitiv ist. Dann
    existiert ein irreduzibles Element <math|p\<in\>R>, sodass <math|p
    \<mid\><big|sum><rsub|i=0><rsup|k>a<rsub|i> b<rsub|k-i>> für alle
    <math|k\<in\><with|font|Bbb|N><rsub|0>>. Da <math|f> und <math|g>
    primitiv sind, existieren minimale <math|i<rsub|0>\<in\><around*|{|0,\<ldots\>,n|}>>
    und <math|j<rsub|0>\<in\><around*|{|0,\<ldots\>,m|}>>, sodass einerseits
    <math|p\<nmid\>a<rsub|i<rsub|0>>> und <math|p\<nmid\>b<rsub|j<rsub|0>>>.
    Sei <math|k<rsub|0>\<assign\>i<rsub|0>+j<rsub|0>> und betrachten wir den
    <math|k<rsub|0>>-ten Koeffizienten <math|<big|sum><rsub|\<ell\>=0><rsup|k<rsub|0>>a<rsub|\<ell\>>
    b<rsub|k<rsub|0>-\<ell\>>>; nach Annahme ist <math|p> Teiler davon. Für
    <math|\<ell\>\<less\>i<rsub|0>> folgt aus der Minimalität von
    <math|i<rsub|0>>, dass <math|p \<mid\>a<rsub|\<ell\>>>, also <math|p
    \<mid\><big|sum><rsub|\<ell\>=0><rsup|i<rsub|0>-1>a<rsub|\<ell\>>
    b<rsub|k<rsub|0>-\<ell\>>> und daher

    <\equation*>
      p \<mid\><big|sum><rsub|\<ell\>=i<rsub|0>><rsup|k<rsub|0>>a<rsub|\<ell\>>
      b<rsub|k<rsub|0>-\<ell\>>.
    </equation*>

    Andererseits folgt für <math|\<ell\>\<gtr\>i<rsub|0>>, dass
    <math|k<rsub|0>-\<ell\>\<less\>k<rsub|0>-i<rsub|0>=j<rsub|0>>, also
    <math|p \<mid\>b<rsub|k<rsub|0>-\<ell\>>>, sodass auch

    <\equation*>
      p \<mid\><big|sum><rsub|\<ell\>=i<rsub|0>+1><rsup|k<rsub|0>>a<rsub|\<ell\>>
      b<rsub|k<rsub|0>-\<ell\>>.
    </equation*>

    Insgesamt ergibt sich daraus <math|p \<mid\>a<rsub|i<rsub|0>>
    b<rsub|k<rsub|0>-i<rsub|0>>=a<rsub|i<rsub|0>> b<rsub|j<rsub|0>>>. Da
    <math|R> faktoriell ist, ist <math|p> nach Satz
    <reference|faktoriell-irreduzibel-equiv-prim> auch prim, sodass <math|p
    \<mid\>a<rsub|i<rsub|0>>> oder <math|p \<mid\>b<rsub|j<rsub|0>>>; das ist
    ein Widerspruch. Es folgt, dass <math|f\<cdot\>g> primitiv sein muss.\ 
  </proof>

  Ein alternativer, eleganterer Beweis<\footnote>
    Vielen Dank an Jianghua Lu (The University of Hong Kong) für diesen
    Beweis.
  </footnote>:

  <\proof>
    Sei <math|\<gamma\>\<in\>R> ein gemeinsamer Teiler der Koeffizienten von
    <math|f\<cdot\>g>. Angenommen, <math|\<gamma\>\<notin\>R<rsup|\<ast\>>>.
    Sei <math|p\<in\>R> ein irreduzibler Faktor von <math|\<gamma\>>. Da
    <math|R> faktoriell ist, ist <math|p> ein Primelement, also
    <math|R<rprime|'>\<assign\>R/<around*|(|p|)>> ein Integritätsbereich.
    Insbesondere ist nach Proposition <reference|polynomring-proposition>
    <math|R<rprime|'><around*|[|X|]>> ein Integritätsbereich.

    <space|1em>Sei <math|\<pi\> :R\<rightarrow\>R<rprime|'>,\<pi\><around*|(|r|)>\<assign\>r+<around*|(|p|)>>,
    die kanonische Projektion. Definieren wir weiters

    <\equation*>
      \<phi\> :R<around*|[|X|]>\<rightarrow\>R<rprime|'><around*|[|X|]>,<space|1em>\<phi\><around*|(|<big|sum><rsub|i=0><rsup|n>a<rsub|i>
      X<rsup|i>|)>\<assign\><big|sum><rsub|i=0><rsup|n>\<pi\><around*|(|a<rsub|i>|)>
      X<rsup|i>
    </equation*>

    für ein Polynom mit Koeffizienten <math|a<rsub|i>\<in\>R,0\<leq\>i\<leq\>n>.
    Da jeder Koeffizient von <math|f g\<in\>R<around*|[|X|]>> nach Annahme
    durch <math|p> teilbar ist, folgt <math|\<phi\><around*|(|f|)>
    \<phi\><around*|(|g|)>=\<phi\><around*|(|f
    g|)>=0\<in\>R<rprime|'><around*|[|X|]>>. Da
    <math|R<rprime|'><around*|[|X|]>> ein Integritätsbereich ist, folgt
    <math|\<phi\><around*|(|f|)>=0> oder <math|\<phi\><around*|(|g|)>=0>, ein
    Widerspruch dazu, dass <math|f> und <math|g> primitiv sind. Also ist
    <math|\<gamma\>\<in\>R<rsup|\<ast\>>> und folglich ist <math|f\<cdot\>g>
    primitiv.
  </proof>

  Ist <math|f\<assign\><big|sum><rsub|i=0><rsup|n>a<rsub|i>
  X<rsup|i>\<in\><with|font|Bbb|Z><around*|[|X|]>> nicht Null, dann ist
  <math|<frac|1|d>\<cdot\>f> mit <math|d\<assign\><with|font-family|rm|ggT><around*|(|a<rsub|0>,\<ldots\>,a<rsub|n>|)>>
  ein primitives Polynom in <math|<with|font|Bbb|Z><around*|[|X|]>>. Somit
  können wir aus beliebigen Polynomen <math|g\<assign\><big|sum><rsub|i=0><rsup|m><frac|b<rsub|i>|c<rsub|i>>
  X<rsup|i>\<in\><with|font|Bbb|Q><around*|[|X|]>,g\<neq\>0> primitive
  ganzzahlige Polynome erhalten, indem wir <math|g> zuerst mit dem Produkt
  <math|<big|prod><rsub|i=0><rsup|m>c<rsub|i>> multiplizieren, um
  <math|g<rprime|'>\<assign\><around*|(|<big|prod><rsub|i=0><rsup|m>c<rsub|i>|)>\<cdot\>g\<in\><with|font|Bbb|Z><around*|[|X|]>>
  zu erhalten und dann auf primitive Gestalt bringen.

  <\lemma>
    <label|primitiv-irreduzibel-polynom>Ein primitives Polynom
    <math|f\<in\><with|font|Bbb|Z><around*|[|X|]>> ist in
    <math|<with|font|Bbb|Z><around*|[|X|]>> genau dann irreduzibel, wenn es
    in <math|<with|font|Bbb|Q><around*|[|X|]>> irreduzibel ist.
  </lemma>

  <\proof>
    <math|<around*|(|\<Leftarrow\>|)>> Nehmen wir an, dass <math|f> in
    <math|<with|font|Bbb|Q><around*|[|X|]>> irreduzibel ist und sei
    <math|f=g\<cdot\>h> für <math|g,h\<in\><with|font|Bbb|Z><around*|[|X|]>>;
    wir wollen zeigen, dass <math|g> oder <math|h> in
    <math|<with|font|Bbb|Z><around*|[|X|]>> Einheit ist. Da
    <math|f\<in\><with|font|Bbb|Q><around*|[|X|]>> irreduzibel ist, folgt,
    dass <math|g> oder <math|h> in <math|<with|font|Bbb|Q><around*|[|X|]>>
    Einheit ist. Nehmen wir o. B. d. A. an, dass
    <math|g\<in\><with|font|Bbb|Q><around*|[|X|]><rsup|\<ast\>>=<with|font|Bbb|Q><rsup|\<ast\>>>.
    Dann folgt <math|g\<in\><with|font|Bbb|Q><rsup|\<ast\>>\<cap\><with|font|Bbb|Z><around*|[|X|]>=<with|font|Bbb|Z>\<setminus\><around*|{|0|}>>.
    Schreiben wir für <math|n\<assign\>deg<around*|(|f|)>> das Polynom
    <math|f> als <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i> X<rsup|i>> für
    <math|a<rsub|0>,\<ldots\>,a<rsub|n>\<in\><with|font|Bbb|Z>>, so folgt
    <math|g \<mid\>a<rsub|i>> für alle <math|i\<in\><around*|{|1,\<ldots\>,n|}>>.
    Nach Annahme ist <math|f> primitiv, also folgt, dass <math|g> Einheit in
    <math|<with|font|Bbb|Z><around*|[|X|]>> ist.

    <math|<around*|(|\<Leftarrow\>|)>> Sei vorausgesetzt, dass
    <math|f\<in\><with|font|Bbb|Z><around*|[|X|]>> irreduzibel ist und sei
    <math|f=g\<cdot\>h> für <math|g,h\<in\><with|font|Bbb|Q><around*|[|X|]>>;
    wir wollen jetzt zeigen, dass <math|g> oder <math|h> in
    <math|<with|font|Bbb|Q><around*|[|X|]>> Einheit ist. Nach unserer obigen
    Bemerkung existieren <math|p,q\<in\><with|font|Bbb|Q>>, sodass
    <math|p\<cdot\>g> und <math|q\<cdot\>h> in
    <math|<with|font|Bbb|Z><around*|[|X|]>> primitiv sind. Nach Lemma
    <reference|lemma-von-gauss> ist dann auch
    <math|<around*|(|p\<cdot\>g|)>\<cdot\><around*|(|q\<cdot\>h|)>=<around*|(|p
    q|)>\<cdot\><around*|(|g h|)>=p q f> in
    <math|<with|font|Bbb|Z><around*|[|X|]>> primitiv. Da <math|f> selbst
    primitiv ist, folgt zunächst, dass <math|p q\<in\><with|font|Bbb|Z>> und
    nun aus der Primitivität von <math|p q f> sogar <math|p q=\<pm\>1>, i.e.
    <math|\<pm\>f=<around*|(|p g|)>\<cdot\><around*|(|q h|)>>, sodass aus der
    Irreduzibilität von <math|f> in <math|<with|font|Bbb|Z><around*|[|X|]>>
    folgt, dass <math|p g> oder <math|q h> Einheit in
    <math|<with|font|Bbb|Z><around*|[|X|]>> ist. Insbesondere ist dann
    <math|g> oder <math|h> aber Einheit in
    <math|<with|font|Bbb|Q><around*|[|X|]>>, was wir zeigen wollten.
  </proof>

  <\example>
    Die Bedingung, dass <math|f> in Lemma
    <reference|primitiv-irreduzibel-polynom> primitiv ist, ist wesentlich.
    Beispielsweise ist <math|f=2 X+2> in <math|<with|font|Bbb|Z><around*|[|X|]>>
    nicht irreduzibel, da <math|f=2 <around*|(|X+1|)>>, aber <math|2> ist in
    den rationalen Zahlen eine Einheit, d.h. <math|f> ist in
    <math|<with|font|Bbb|Q><around*|[|X|]>> irreduzibel.
  </example>

  Eine nützliche Umformulierung von Lemma
  <reference|primitiv-irreduzibel-polynom>:

  <\corollary>
    <label|primitiv-irreduzibel-polynom-umformulierung>Sei
    <math|f\<in\><with|font|Bbb|Z><around*|[|X|]>> ein primitives Polynom.
    Zerfällt <math|f> in ein Produkt <math|f=g h> mit
    <math|g,h\<in\><with|font|Bbb|Q><around*|[|X|]>>, so existieren primitive
    Polynome <math|g<rprime|'>,h<rprime|'>\<in\><with|font|Bbb|Z><around*|[|X|]>>,
    sodass <math|g\<sim\>g<rprime|'>> und <math|h\<sim\>h<rprime|'>> in
    <math|<with|font|Bbb|Q><around*|[|X|]>> und <math|f=g<rprime|'>
    h<rprime|'>>. Insbesondere unterscheiden sich die Faktoren in
    <math|<with|font|Bbb|Q><around*|[|X|]>> von denen in
    <math|<with|font|Bbb|Z><around*|[|X|]>> nur durch Konstanten in
    <math|<with|font|Bbb|Q>>.
  </corollary>

  In der Praxis am hilfreichsten ist allerdings die Originalfassung von Gauÿ
  selbst:

  <\corollary>
    <label|gauss-lemma-umformulierung>Sei
    <math|f\<in\><with|font|Bbb|Z><around*|[|X|]>> ein normiertes Polynom das
    Produkt <math|f=g h> zweier normierter Polynome
    <math|g,h\<in\><with|font|Bbb|Q><around*|[|X|]>>. Dann folgt
    <math|g,h\<in\><with|font|Bbb|Z><around*|[|X|]>>.
  </corollary>

  <\proof>
    Nach Folgerung <reference|primitiv-irreduzibel-polynom-umformulierung>
    existieren <math|g<rprime|'>,h<rprime|'>\<in\><with|font|Bbb|Z><around*|[|X|]>>
    primitiv sowie <math|\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>\<in\><with|font|Bbb|Q><rsup|\<ast\>>>
    mit <math|g=\<varepsilon\><rsub|1> g<rprime|'>> und
    <math|h=\<varepsilon\><rsub|2> h<rprime|'>>. Da <math|g> monisch ist,
    folgt <math|\<varepsilon\><rsub|1>=<frac|1|k<rsub|1>>> für ein
    <math|k<rsub|1>\<in\><with|font|Bbb|N>> und ebenso
    <math|\<varepsilon\><rsub|2>=<frac|1|k<rsub|2>>> für
    <math|k<rsub|2>\<in\><with|font|Bbb|N>>. Dann ist aber <math|g<rprime|'>
    h<rprime|'>=k<rsub|1> k<rsub|2> g h=k<rsub|1> k<rsub|2> f> primitiv,
    daher <math|k<rsub|1> k<rsub|2>=1> und insbesondere
    <math|k<rsub|1>=k<rsub|2>=1>, sodass <math|g,h\<in\><with|font|Bbb|Z><around*|[|X|]>>.
  </proof>

  <\corollary>
    <label|gemeinsame-nullstellen-teiler-zx>Es seien
    <math|f,g\<in\><with|font|Bbb|Z><around*|[|X|]>> und <math|f>
    irreduzibel. Ist <math|\<zeta\>\<in\><with|font|Bbb|C>> eine gemeinsame
    Nullstelle von <math|f> und <math|g>, sodass
    <math|f<around*|(|\<zeta\>|)>=g<around*|(|\<zeta\>|)>=0>, dann gilt
    <math|f\<mid\>g> in <math|<with|font|Bbb|Z><around*|[|X|]>>.
  </corollary>

  <\proof>
    Sei <math|q\<in\><with|font|Bbb|Z><around*|[|X|]>> ein primitives Polynom
    mit minimalem Grad <math|deg<around*|(|q|)>\<geq\>0>, sodass
    <math|q<around*|(|\<zeta\>|)>=0> (diese Menge ist offenbar nicht leer).

    <space|1em>Nach Proposition <reference|polynomring-euklidisch> existieren
    <math|h,r\<in\><with|font|Bbb|Q><around*|[|X|]>> mit <math|g=h q+r> und
    <math|deg<around*|(|r|)>\<less\>deg<around*|(|q|)>>. Aus
    <math|q<around*|(|\<zeta\>|)>=0> und <math|g<around*|(|\<zeta\>|)>=0>
    folgt insbesondere, dass <math|r<around*|(|\<zeta\>|)>=0>, also
    <math|r=0> aufgrund der Minimalität von <math|deg<around*|(|q|)>>. Analog
    existiert <math|h<rprime|'>\<in\><with|font|Bbb|Q><around*|[|X|]>> mit
    <math|f=h<rprime|'> q>. Nach Lemma <reference|primitiv-irreduzibel-polynom>
    ist <math|f> in <math|<with|font|Bbb|Q><around*|[|X|]>> irreduzibel, also
    <math|h<rprime|'>=c> für ein <math|c\<in\><with|font|Bbb|Q><rsup|\<ast\>>>.
    Da <math|f> und <math|q> primitiv sind, folgt <math|c=\<pm\>1>, also
    <math|g=\<pm\>h\<cdot\>f>.

    <space|1em>Sei nun <math|a\<in\><with|font|Bbb|Q><rsup|\<ast\>>> so
    gewählt, dass <math|a h\<in\><with|font|Bbb|Z><around*|[|X|]>> primitiv
    ist. Dann ist nach Lemma <reference|lemma-von-gauss> auch <math|a g=a
    <around*|(|\<pm\>h\<cdot\>f|)>=\<pm\><around*|(|a h|)>\<cdot\>f>
    primitiv. Da <math|g> ganzzahlige Koeffizienten hat, gilt also
    <math|<frac|1|a>\<in\><with|font|Bbb|Z>>. Daraus folgt
    <math|h\<in\><with|font|Bbb|Z><around*|[|X|]>> und somit <math|f
    \<mid\>g>.
  </proof>

  Nun der Beweis von Proposition <reference|einbettung-ring-der-ganze-zahlen>:

  <\proof>
    Sei angenommen, dass <math|f+p<rsub|d>
    <with|font|Bbb|Q><around*|[|X|]>=g+p<rsub|d>
    <with|font|Bbb|Q><around*|[|X|]>> für
    <math|f,g\<in\><with|font|Bbb|Z><around*|[|X|]>>; wir wollen zeigen, dass
    <math|f+p<rsub|d> <with|font|Bbb|Z><around*|[|X|]>=g+p<rsub|d>
    <with|font|Bbb|Z><around*|[|X|]>>. Dann gilt <math|f-g\<in\>p<rsub|d>
    <with|font|Bbb|Q><around*|[|X|]>>, sodass <math|p<rsub|d> \<mid\>f-g> in
    <math|<with|font|Bbb|Q><around*|[|X|]>>. Es existiert also
    <math|q\<in\><with|font|Bbb|Q><around*|[|X|]>> mit <math|f-g=p<rsub|d>
    q>. Andererseits sehen wir, dass

    <\equation*>
      <around*|(|f-g|)><around*|(|\<omega\><rsub|d>|)>=p<rsub|d><around*|(|\<omega\><rsub|d>|)>
      q<around*|(|\<omega\><rsub|d>|)>=0.
    </equation*>

    Da <math|p<rsub|d>> in <math|<with|font|Bbb|Z><around*|[|X|]>>
    irreduzibel ist folgt aus Folgerung <reference|gemeinsame-nullstellen-teiler-zx>,
    dass <math|p<rsub|d> \<mid\>f-g> in <math|<with|font|Bbb|Z><around*|[|X|]>>.
    Das heiÿt aber genau, dass <math|f+p<rsub|d>
    <with|font|Bbb|Z><around*|[|X|]>=g+p<rsub|d>
    <with|font|Bbb|Z><around*|[|X|]>>.
  </proof>

  Insbesondere folgt, dass <math|<with|font|cal|O><rsub|d>> noethersch ist
  und damit ein Ring mit Faktorzerlegung! Auÿerdem:

  <\proposition>
    <label|ring-der-ganzen-zahlen-isomorphismus>Es gilt

    <\equation*>
      <with|font|cal|O><rsub|d>\<cong\><around*|{|a+b \<omega\><rsub|d>
      <around*|\|||\<nobracket\>> a,b\<in\><with|font|Bbb|Z>|}>
    </equation*>

    vermittels dem Isomorphismus

    <\equation*>
      \<psi\> :<with|font|cal|O><rsub|d>\<rightarrow\><around*|{|a+b
      \<omega\><rsub|d> <around*|\|||\<nobracket\>>
      a,b\<in\><with|font|Bbb|Z>|}>,<space|1em>\<psi\><around*|(|f+p<rsub|d>
      <with|font|Bbb|Z><around*|[|X|]>|)>\<assign\>f<around*|(|\<omega\><rsub|d>|)>.
    </equation*>
  </proposition>

  <\proof>
    Zur Wohldefiniertheit von <math|\<psi\>>: Gilt <math|f+p<rsub|d>
    <with|font|Bbb|Z><around*|[|X|]>=f<rprime|'>+p<rsub|d>
    <with|font|Bbb|Z><around*|[|X|]>>, so folgt
    <math|f-f<rprime|'>\<in\>p<rsub|d> <with|font|Bbb|Z><around*|[|X|]>>,
    d.h. <math|f=f<rprime|'>+p<rsub|d> q> mit
    <math|q\<in\><with|font|Bbb|Z><around*|[|X|]>>. Daraus folgt

    <\equation*>
      f<around*|(|\<omega\><rsub|d>|)>=f<rprime|'><around*|(|\<omega\><rsub|d>|)>+p<rsub|d><around*|(|\<omega\><rsub|d>|)>\<cdot\>q<around*|(|\<omega\><rsub|d>|)>=f<rprime|'><around*|(|\<omega\><rsub|d>|)>.
    </equation*>

    Zur Homomorphieeigenschaft von <math|\<psi\>>: Seien <math|f+p<rsub|d>
    <with|font|Bbb|Z><around*|[|X|]>,g+p<rsub|d>
    <with|font|Bbb|Z><around*|[|X|]>> beliebige Elemente aus
    <math|<with|font|cal|O><rsub|d>>. Dann gilt

    <\equation*>
      \<psi\><around*|(|f+g+p<rsub|d> <with|font|Bbb|Z><around*|[|X|]>|)>=<around*|(|f+g|)><around*|(|\<omega\><rsub|d>|)>=f<around*|(|\<omega\><rsub|d>|)>+g<around*|(|\<omega\><rsub|d>|)>=\<psi\><around*|(|f+p<rsub|d>
      <with|font|Bbb|Z><around*|[|X|]>|)>+\<psi\><around*|(|g+p<rsub|d>
      <with|font|Bbb|Z><around*|[|X|]>|)>
    </equation*>

    und ähnlich

    <\equation*>
      \<psi\><around*|(|f\<cdot\>g+p<rsub|d>
      <with|font|Bbb|Z><around*|[|X|]>|)>=<around*|(|f\<cdot\>g|)><around*|(|\<omega\><rsub|d>|)>=f<around*|(|\<omega\><rsub|d>|)>\<cdot\>g<around*|(|\<omega\><rsub|d>|)>=\<psi\><around*|(|f+p<rsub|d>
      <with|font|Bbb|Z><around*|[|X|]>|)>\<cdot\>\<psi\><around*|(|g+p<rsub|d>
      <with|font|Bbb|Z><around*|[|X|]>|)>.
    </equation*>

    Auÿerdem gilt <math|\<psi\><around*|(|1+p<rsub|d>
    <with|font|Bbb|Z><around*|[|X|]>|)>=1>, sodass <math|\<psi\>> tatsächlich
    die Homomorphieeigenschaft erfüllt und damit ein Homomorphismus mit
    Einselement ist.

    Zur Bijektivität von <math|\<psi\>>: Für beliebiges <math|a+b
    \<omega\><rsub|d>\<in\><around*|{|a+b \<omega\><rsub|d>
    <around*|\|||\<nobracket\>> a,b\<in\><with|font|Bbb|Z>|}>> sehen wir,
    dass <math|\<psi\><around*|(|a+b X+p<rsub|d>
    <with|font|Bbb|Z><around*|[|X|]>|)>=a+b \<omega\><rsub|d>>, also ist
    <math|\<psi\>> surjektiv. Gilt andererseits
    <math|f<around*|(|\<omega\><rsub|d>|)>=0> für
    <math|f\<in\><with|font|Bbb|Z><around*|[|X|]>>, so folgt aus Korollar
    <math|<reference|gemeinsame-nullstellen-teiler-zx>>, dass <math|p<rsub|d>
    \<mid\>f> in <math|<with|font|Bbb|Z><around*|[|X|]>>, i.e.
    <math|f\<in\>p<rsub|d> <with|font|Bbb|Z><around*|[|X|]>>. Der Kern von
    <math|\<psi\>> ist also trivial, daher ist <math|\<psi\>> injektiv.
  </proof>

  <\definition>
    <label|ganzheitsbasis>Der Ring <math|<with|font|cal|O><rsub|d>> heiÿt
    <em|Ring der ganzen Zahlen in <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>>>.
    Ist <math|<around*|{|\<alpha\>,\<beta\>|}>\<subseteq\><with|font|cal|O><rsub|d>>
    eine Teilmenge von <math|<with|font|cal|O><rsub|d>>, so nennen wir
    <math|<around*|{|\<alpha\>,\<beta\>|}>> <em|Ganzheitsbasis> von
    <math|<with|font|cal|O><rsub|d>>, falls

    <\equation*>
      <with|font|cal|O><rsub|d>\<cong\><around*|{|\<alpha\> x+\<beta\> y
      <around*|\|||\<nobracket\>> x,y\<in\><with|font|Bbb|Z>|}>
    </equation*>

    und schreiben dann <math|<with|font|cal|><with|font|cal|O><rsub|d>=<with|font|Bbb|Z>
    \<alpha\>\<oplus\><with|font|Bbb|Z> \<beta\>><\footnote>
      Formal haben wir \R<math|\<oplus\>>\P in diesem Kontext nicht
      definiert. Wir meinen hier aber, dass einerseits
      <math|<with|font|cal|O><rsub|d>=<with|font|Bbb|Z>
      \<alpha\>+<with|font|Bbb|Z> \<beta\>> gilt und andererseits
      <math|<with|font|Bbb|Z> \<alpha\>\<cap\><with|font|Bbb|Z>
      \<beta\>=<around*|{|0|}>>, d.h. die jeweiligen
      <math|x,y\<in\><with|font|Bbb|Z>> sind eindeutig bestimmt (cf. direkte
      Summen von Vektorräumen).
    </footnote>.
  </definition>

  Insbesondere gilt nach Proposition <reference|ring-der-ganzen-zahlen-isomorphismus>,
  dass <math|<with|font|cal|O><rsub|d>=<with|font|Bbb|Z>\<oplus\><with|font|Bbb|Z>
  \<omega\><rsub|d>> und ähnlich <math|<with|font|cal|O><rsub|d>=<with|font|Bbb|Z>\<oplus\><with|font|Bbb|Z>
  \<omega\><rsub|d><rsup|\<ast\>>>. Im Allgemeinen ist aber
  <math|<with|font|cal|O><rsub|d>\<neq\><with|font|Bbb|Z>\<oplus\><with|font|Bbb|Z>
  <sqrt|d>>, da wir für <math|d\<equiv\>1 <pmod|4>> beispielsweise

  <\equation*>
    <frac|1+<sqrt|d>|2>\<in\><with|font|cal|O><rsub|d>,<space|1em><text|aber><space|1em><frac|1+<sqrt|d>|2>\<notin\><around*|{|a+b
    <sqrt|d> <around*|\|||\<nobracket\>> a,b\<in\><with|font|Bbb|Z>|}>
  </equation*>

  erhalten. In diesem Fall gilt lediglich die Inklusion
  <math|<with|font|Bbb|Z>\<oplus\><with|font|Bbb|Z>
  <sqrt|d>\<subseteq\><with|font|cal|O><rsub|d>>. Ist
  <math|<around*|{|\<alpha\>,\<beta\>|}>> eine Ganzheitsbasis von
  <math|<with|font|cal|O><rsub|d>> und <math|g\<in\><with|font|Bbb|Z>>, dann
  ist offenbar auch <math|<around*|{|\<beta\>,\<alpha\>+g \<beta\>|}>> eine
  Ganzheitsbasis von <math|<with|font|cal|O><rsub|d>>.

  <\definition>
    (1) Wir nennen die Abbildung

    <\equation*>
      \<ast\>:<with|font|Bbb|Q><around*|(|<sqrt|d>|)>\<rightarrow\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>,<space|1em>\<alpha\>=a+b
      \<omega\><rsub|d>\<mapsto\>\<alpha\><rsup|\<ast\>>\<assign\>a+b
      \<omega\><rsub|d><rsup|\<ast\>>
    </equation*>

    die <em|Konjugationsabbildung>.

    (2) Die Abbildung definiert durch

    <\equation*>
      N<rsub|d> :<with|font|Bbb|Q><around*|(|<sqrt|d>|)>\<rightarrow\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>,<space|1em>\<alpha\>\<mapsto\>N<rsub|d><around*|(|\<alpha\>|)>\<assign\>\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>
    </equation*>

    wird die <em|<math|d>-Norm in <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>>>
    genannt. Analog definieren wir die <em|Spur> von <math|\<alpha\>> als

    <\equation*>
      <with|font-family|rm|Tr><rsub|d> :<with|font|Bbb|Q><around*|(|<sqrt|d>|)>\<rightarrow\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>,<space|1em><with|font-family|rm|Tr><rsub|d><around*|(|\<alpha\>|)>\<assign\>\<alpha\>+\<alpha\><rsup|\<ast\>>.
    </equation*>
  </definition>

  Beide Abbildungen erfüllen folgende elementaren Eigenschaften, die nicht
  weiter überraschend sind.

  <\lemma>
    <label|konjugierte-d-eigenschaften>Seien
    <math|\<alpha\>,\<beta\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>.
    Dann gilt:

    <\indent>
      (1) <math|<around*|(|\<alpha\>+\<beta\>|)><rsup|\<ast\>>=\<alpha\><rsup|\<ast\>>+\<beta\><rsup|\<ast\>>>.

      (2) <math|<around*|(|\<alpha\>\<cdot\>\<beta\>|)><rsup|\<ast\>>=\<alpha\><rsup|\<ast\>>\<cdot\>\<beta\><rsup|\<ast\>>>.

      (3) <math|<around*|(|\<alpha\><rsup|\<ast\>>|)><rsup|\<ast\>>=\<alpha\>>.

      (4) <math|\<alpha\><rsup|\<ast\>>=\<alpha\>> genau dann, wenn
      <math|\<alpha\>\<in\><with|font|Bbb|Q>>.

      (5) <math|\<alpha\>+\<alpha\><rsup|\<ast\>>\<in\><with|font|Bbb|Q>> und
      <math|\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>\<in\><with|font|Bbb|Q>>
      mit <math|\<alpha\>\<in\><with|font|cal|O><rsub|d>> genau dann, wenn
      <math|\<alpha\>+\<alpha\><rsup|\<ast\>>\<in\><with|font|Bbb|Z>,\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>\<in\><with|font|Bbb|Z>>.
    </indent>
  </lemma>

  <\proof>
    (1) Sei <math|\<alpha\>=a+b \<omega\><rsub|d>> und <math|\<beta\>=p+q
    \<omega\><rsub|d>> mit <math|a,b,p,q\<in\><with|font|Bbb|Q>>. Unmittelbar
    aus der Definition folgt

    <\equation*>
      <around*|(|\<alpha\>+\<beta\>|)><rsup|\<ast\>>=<around*|(|<around*|(|a+p|)>+<around*|(|b+q|)>
      \<omega\><rsub|d>|)><rsup|\<ast\>>=<around*|(|a+p|)>+<around*|(|b+q|)>
      \<omega\><rsub|d><rsup|\<ast\>>=<around*|(|a+b
      \<omega\><rsub|d><rsup|\<ast\>>|)>+<around*|(|p+q
      \<omega\><rsub|d><rsup|\<ast\>>|)>=\<alpha\><rsup|\<ast\>>+\<beta\><rsup|\<ast\>>.
    </equation*>

    (2) Es gilt zunächst

    <\equation*>
      \<alpha\> \<beta\>=<around*|(|a+b \<omega\><rsub|d>|)> <around*|(|p+q
      \<omega\><rsub|d>|)>=a p+<around*|(|a q+b p|)> \<omega\><rsub|d>+b q
      \<omega\><rsub|d><rsup|2>.
    </equation*>

    Sei <math|S\<assign\>\<omega\><rsub|d>+\<omega\><rsub|d><rsup|\<ast\>>>
    und <math|P\<assign\>\<omega\><rsub|d> \<omega\><rsub|d><rsup|\<ast\>>>,
    sodass <math|S,P\<in\><with|font|Bbb|Q>> und
    <math|\<omega\><rsub|d><rsup|2>=S \<omega\><rsub|d>-P>. Dann erhalten wir

    <\equation*>
      \<alpha\> \<beta\>=a p+<around*|(|a q+b p|)> \<omega\><rsub|d>+b q
      <around*|(|S \<omega\><rsub|d>-P|)>=<around*|(|a p-b p
      P|)>*+<around*|(|a q+b p+b q S|)> \<omega\><rsub|d>.
    </equation*>

    Daraus folgt einerseits

    <\equation*>
      <around*|(|\<alpha\> \<beta\>|)><rsup|\<ast\>>=<around*|(|a p-b p
      P|)>*+<around*|(|a q+b p+b q S|)> \<omega\><rsub|d><rsup|\<ast\>>
    </equation*>

    und andererseits, dass

    <math|<align*|<tformat|<table|<row|<cell|\<alpha\><rsup|\<ast\>>
    \<beta\><rsup|\<ast\>>=>|<cell|<around*|(|a+b
    \<omega\><rsub|d><rsup|\<ast\>>|)> <around*|(|p+q
    \<omega\><rsub|d><rsup|\<ast\>>|)>=a p+<around*|(|a q+b p|)>
    \<omega\><rsub|d>+b q <around*|(|S \<omega\><rsub|d><rsup|\<ast\>>-P|)>>>|<row|<cell|=>|<cell|<around*|(|a
    p-b p P|)>*+<around*|(|a q+b p+b q S|)>
    \<omega\><rsub|d><rsup|\<ast\>>,>>>>>>

    d.h. es gilt Gleichheit.

    (3) Man überprüft leicht, dass <math|<around*|(|\<omega\><rsub|d><rsup|\<ast\>>|)><rsup|\<ast\>>=\<omega\><rsub|d>>.
    Daraus folgt sofort

    <\equation*>
      <around*|(|\<alpha\><rsup|\<ast\>>|)><rsup|\<ast\>>=<around*|(|a+b
      \<omega\><rsub|d><rsup|\<ast\>>|)><rsup|\<ast\>>=<around*|(|a+b
      <around*|(|\<omega\><rsub|d><rsup|\<ast\>>|)><rsup|\<ast\>>|)>=a+b
      \<omega\><rsub|d>=\<alpha\>.
    </equation*>

    (4) Es gilt <math|\<alpha\><rsup|\<ast\>>=\<alpha\>\<Leftrightarrow\>a+b
    \<omega\><rsub|d><rsup|\<ast\>>=a+b \<omega\><rsub|d>\<Leftrightarrow\>b
    <around*|(|\<omega\><rsub|d><rsup|\<ast\>>-\<omega\><rsub|d>|)>=0>. Weil
    <math|\<omega\><rsub|d>\<neq\>\<omega\><rsub|d><rsup|\<ast\>>>, kann nur
    <math|b=0> sein, also <math|\<alpha\>\<in\><with|font|Bbb|Q>>.

    (5) Sei <math|\<alpha\>\<in\><with|font|cal|O><rsub|d>>. Dann existieren
    <math|a,b\<in\><with|font|Bbb|Z>> mit <math|\<alpha\>=a+b
    \<omega\><rsub|d>> und

    <\equation*>
      \<alpha\>+\<alpha\><rsup|\<ast\>>=2 a+b
      <around*|(|\<omega\><rsub|d>+\<omega\><rsub|d><rsup|\<ast\>>|)>,<space|1em>\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>=a<rsup|2>+a
      b <around*|(|\<omega\><rsub|d>+\<omega\><rsub|d><rsup|\<ast\>>|)>+b<rsup|2>
      <around*|(|\<omega\><rsub|d>\<cdot\>\<omega\><rsub|d><rsup|\<ast\>>|)>.
    </equation*>

    Ist <math|d\<equiv\>2,3 <pmod|4>>, dann ist
    <math|\<omega\><rsub|d>=<sqrt|d>> und daher
    <math|\<omega\><rsub|d>+\<omega\><rsub|d><rsup|\<ast\>>=0> bzw.
    <math|\<omega\><rsub|d>\<cdot\>\<omega\><rsub|d><rsup|\<ast\>>=-d>. Falls
    <math|d\<equiv\>1 <pmod|4>>, ist <math|\<omega\><rsub|d>=<frac|1+<sqrt|d>|2>>,
    sodass <math|\<omega\><rsub|d>+\<omega\><rsub|d><rsup|\<ast\>>=1> und
    <math|\<omega\><rsub|d>\<cdot\>\<omega\><rsub|d><rsup|\<ast\>>=<frac|1-d|4>\<in\><with|font|Bbb|Z>>.
    In beiden Fällen sind <math|\<alpha\>+\<alpha\><rsup|\<ast\>>,\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>>
    ganzzahlig.

    <space|1em>Umgekehrt, sei <math|\<alpha\>=a+b <sqrt|d>> mit
    <math|a,b\<in\><with|font|Bbb|Q>>, sodass <math|2
    a=\<alpha\>+\<alpha\><rsup|\<ast\>>\<in\><with|font|Bbb|Z>> und
    <math|a<rsup|2>-b<rsup|2> d=\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>\<in\><with|font|Bbb|Z>>.
    Dann gilt <math|a=<frac|u|2>>, <math|u\<in\><with|font|Bbb|Z>>. Also
    <math|<frac|u<rsup|2>|4>-b<rsup|2> d=a<rsup|2>-b<rsup|2>
    d=\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>\<in\><with|font|Bbb|Z>> bzw.
    <math|u<rsup|2>-4 b<rsup|2> d\<in\>4 <with|font|Bbb|Z>>. Da <math|d>
    quadratfrei ist, ist der Nenner von <math|b> (in gekürzter Form) ein
    Teiler von <math|2>, sodass wir <math|b=<frac|v|2>>,
    <math|v\<in\><with|font|Bbb|Z>> schreiben können, also

    <\equation*>
      u<rsup|2>\<equiv\>d v<rsup|2> <pmod|4>.
    </equation*>

    Jedenfalls gilt dann <math|u<rsup|2>\<equiv\>0 <pmod|4>> oder
    <math|u<rsup|2>\<equiv\>1 <pmod|4>> und ebenso <math|v<rsup|2>\<equiv\>0
    <pmod|4>> oder <math|v<rsup|2>\<equiv\>1 <pmod|4>>.

    <space|1em>Falls <math|d\<equiv\>2,3 <pmod|4>>, so ist
    <math|v<rsup|2>\<equiv\>0 <pmod|4>> die einzige Möglichkeit. Dann sind
    aber <math|u> und <math|v> gerade, daher auch
    <math|a=<frac|u|2>,b=<frac|v|2>> ganze Zahlen. Falls <math|d\<equiv\>1
    <pmod|4>>, folgt <math|u<rsup|2>\<equiv\>v<rsup|2> <pmod|4>> bzw.
    <math|u\<equiv\>v <pmod|2>>. Also

    <\equation*>
      \<alpha\>=<frac|u|2>+<frac|v|2> <sqrt|d>=<frac|u-v|2>+v
      <around*|(|<frac|1+<sqrt|d>|2>|)>=<frac|u-v|2>+v \<omega\><rsub|d>,
    </equation*>

    wobei <math|<frac|u-v|2>> und <math|v> ganze Zahlen sind. Es folgt
    <math|\<alpha\>\<in\><with|font|cal|O><rsub|d>>.
  </proof>

  <\lemma>
    <label|norm-d-eigenschaften>Seien <math|\<alpha\>,\<beta\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>.
    Dann gilt:

    <\indent>
      (1) <math|N<rsub|d><around*|(|\<alpha\> \<beta\>|)>=N<rsub|d>
      <around*|(|\<alpha\>|)> N<rsub|d><around*|(|\<beta\>|)>>.

      (2) <math|N<rsub|d><around*|(|\<alpha\>|)>=0> genau dann, wenn
      <math|\<alpha\>=0>.

      (3) <math|N<rsub|d><around*|(|q|)>=q<rsup|2>> für alle
      <math|q\<in\><with|font|Bbb|Q>>.

      (4) <math|N<rsub|d><around*|(|\<alpha\>|)>,<with|font-family|rm|Tr><rsub|d><around*|(|\<alpha\>|)>\<in\><with|font|Bbb|Q>>
      und <math|N<rsub|d><around*|(|k|)>,<with|font-family|rm|Tr><rsub|d><around*|(|k|)>\<in\><with|font|Bbb|Z>>
      für alle <math|k\<in\><with|font|cal|O><rsub|d>>.

      (5) <math|N<rsub|d><around*|(|\<alpha\>|)>=\<alpha\>
      <wide|\<alpha\>|\<bar\>>=<around*|\||\<alpha\>|\|><rsup|2>>, falls
      <math|d\<less\>0>.
    </indent>
  </lemma>

  <\proof>
    (1) Aus Lemma <reference|konjugierte-d-eigenschaften> (2) erhalten wir

    <\equation*>
      N<rsub|d><around*|(|\<alpha\> \<beta\>|)>=<around*|(|\<alpha\>
      \<beta\>|)> <around*|(|\<alpha\> \<beta\>|)><rsup|\<ast\>>=<around*|(|\<alpha\>
      \<alpha\><rsup|\<ast\>>|)> <around*|(|\<beta\>
      \<beta\><rsup|\<ast\>>|)>=N<rsub|d><around*|(|\<alpha\>|)>
      N<rsub|d><around*|(|\<beta\>|)>.
    </equation*>

    (2) Sei <math|N<rsub|d><around*|(|\<alpha\>|)>=\<alpha\>
    \<alpha\><rsup|\<ast\>>=0>. Da <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
    per Definition ein Körper ist, gilt <math|\<alpha\>=0> oder
    <math|\<alpha\><rsup|\<ast\>>=0>. In beiden Fällen gilt also
    <math|\<alpha\>=0>. Die Rückrichtung folgt sofort.

    (3) Sei <math|q\<in\><with|font|Bbb|Q>>. Unter Berücksichtigung von Lemma
    <math|<reference|konjugierte-d-eigenschaften>> (2) sehen wir, dass
    <math|N<rsub|d><around*|(|q|)>=q q<rsup|\<ast\>>=q<rsup|2>>.

    (4) Das haben wir bereits in Lemma <reference|konjugierte-d-eigenschaften>
    (5) gezeigt.

    (5) Sei <math|d\<less\>0> und <math|\<alpha\>=p+q <sqrt|d>> für
    <math|p,q\<in\><with|font|Bbb|Q>>. Dann gilt

    <\equation*>
      \<alpha\><rsup|\<ast\>>=p-q <sqrt|d>=p-q
      <around*|(|<sqrt|-1>\<cdot\><sqrt|<around*|\||d|\|>>|)>=<wide|p+q
      <around*|(|<sqrt|-1>\<cdot\><sqrt|<around*|\||d|\|>>|)>|\<bar\>>=<wide|p+q
      <sqrt|d>|\<bar\>>=<wide|\<alpha\>|\<bar\>>,
    </equation*>

    sodass <math|N<rsub|d><around*|(|\<alpha\>|)>=\<alpha\>
    \<alpha\><rsup|\<ast\>>=\<alpha\> <wide|\<alpha\>|\<bar\>>=<around*|\||\<alpha\>|\|><rsup|2>>.
  </proof>

  Als Konsequenz davon ergeben sich folgende hilfreiche Resultate.

  <\corollary>
    <label|norm-d-teiler>Seien <math|\<alpha\>,\<beta\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>.
    Falls <math|\<alpha\> \<mid\>\<beta\>>, so gilt
    <math|N<rsub|d><around*|(|\<alpha\>|)>
    \<mid\>N<rsub|d><around*|(|\<beta\>|)>>.
  </corollary>

  <\proof>
    Das ist eine Anwendung von Lemma <reference|norm-d-eigenschaften> (1).
  </proof>

  Die Umkehrung gilt nicht. Wir werden später sehen, dass
  <math|2\<pm\><sqrt|-1>> in <math|<with|font|cal|O><rsub|-1>> irreduzibel
  sind, obwohl <math|N<rsub|-1><around*|(|2+<sqrt|-1>|)>=N<rsub|-1><around*|(|2-
  <sqrt|-1>|)>=5>.

  <\lemma>
    <label|nd-einheit>Sei <math|\<alpha\>\<in\><with|font|cal|O><rsub|d>>.
    Dann gilt <math|\<alpha\>\<in\><with|font|cal|O><rsub|d><rsup|\<ast\>>>
    genau dann, wenn <math|N<rsub|d><around*|(|\<alpha\>|)>=\<pm\>1>.
  </lemma>

  <\proof>
    Ist <math|\<alpha\>\<in\><with|font|cal|O><rsub|d><rsup|\<ast\>>>, so
    existiert ein <math|\<beta\>\<in\><with|font|cal|O><rsub|d>> mit
    <math|\<alpha\>\<cdot\>\<beta\>=1>. Aus Lemma
    <reference|norm-d-eigenschaften> folgt dann

    <\equation*>
      <wide*|N<rsub|d><around*|(|\<alpha\>|)>|\<wide-underbrace\>><rsub|\<in\><with|font|Bbb|Z>>\<cdot\><wide*|N<rsub|d><around*|(|\<beta\>|)>|\<wide-underbrace\>><rsub|\<in\><with|font|Bbb|Z>>=N<rsub|d><around*|(|\<alpha\>\<cdot\>\<beta\>|)>=N<rsub|d><around*|(|1|)>=1,
    </equation*>

    also <math|N<rsub|d><around*|(|\<alpha\>|)>\<in\><with|font|Bbb|Z><rsup|\<ast\>>>.
    Umgekehrt folgt <math|\<pm\>1=N<rsub|d><around*|(|\<alpha\>|)>=\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>>,
    sodass <math|\<alpha\>> multiplikatives Inverses
    <math|\<pm\>\<alpha\><rsup|\<ast\>>> in <math|<with|font|cal|O><rsub|d>>
    hat, i.e. <math|\<alpha\>\<in\><with|font|cal|O><rsub|d><rsup|\<ast\>>>.
  </proof>

  <\corollary>
    Sei <math|\<alpha\>\<in\><with|font|cal|O><rsub|d>>. Ist
    <math|N<rsub|d><around*|(|\<alpha\>|)>> irreduzibel, dann ist auch
    <math|\<alpha\>> irreduzibel.
  </corollary>

  <\proof>
    Angenommen <math|N<rsub|d><around*|(|\<alpha\>|)>> ist irreduzibel. Sei
    <math|\<alpha\>=\<beta\> \<gamma\>> für
    <math|\<beta\>,\<gamma\>\<in\><with|font|cal|O><rsub|d>>. Dann gilt
    <math|N<rsub|d><around*|(|\<alpha\>|)>=N<rsub|d><around*|(|\<beta\>|)>
    N<rsub|d><around*|(|\<gamma\>|)>> nach Lemma
    <reference|norm-d-eigenschaften> (1). Also
    <math|N<rsub|d><around*|(|\<beta\>|)>=\<pm\>1> oder
    <math|N<rsub|d><around*|(|\<gamma\>|)>=\<pm\>1>, i.e. folgt aus Lemma
    <reference|nd-einheit>, dass <math|\<beta\>> oder <math|\<gamma\>>
    Einheit ist.
  </proof>

  Die Umkehrung gilt nicht: Man zeigt leicht, dass <math|2> in
  <math|<with|font|cal|O><rsub|-5>> irreduzibel ist, aber
  <math|N<rsub|-5><around*|(|2|)>=4>.

  <\example>
    <label|einheiten-in-od>Berechnen wir die Einheiten in einigen der
    <math|<with|font|cal|O><rsub|d>> für quadratfreies <math|d\<less\>0>.

    (1) Falls <math|d\<notin\><around*|{|-1,-3|}>>, so gilt
    <math|<with|font|cal|O><rsub|d><rsup|\<ast\>>=<around*|{|\<pm\>1|}>>. In
    der Tat, wir unterscheiden zwei Fälle. Sei zunächst <math|d\<equiv\>1
    <pmod|4>> und schreiben wir <math|\<alpha\>=<frac|a+b <sqrt|d>|2>> für
    <math|a,b\<in\><with|font|Bbb|Z>> mit <math|a\<equiv\>b <pmod|2>>. Falls
    <math|\<alpha\>> Einheit ist, so gilt
    <math|1=N<rsub|d><around*|(|\<alpha\>|)>=<frac|a<rsup|2>+<around*|\||d|\|>
    b<rsup|2>|4>>, d.h. wir suchen nach ganzzahligen Lösungen für
    <math|a<rsup|2>+<around*|\||d|\|> b<rsup|2>=4>. Da <math|d> quadratfrei
    ist mit <math|d\<equiv\>1 <pmod|4>> und <math|d\<neq\>-1> und
    <math|d\<neq\>-3>, folgt dass <math|d\<leq\>-7>. Also

    <\equation*>
      4=a<rsup|2>+<around*|\||d|\|> b<rsup|2>\<geq\>a<rsup|2>+7 b<rsup|2>,
    </equation*>

    d.h. <math|b=0> und <math|a=\<pm\>2>. Es folgt <math|\<alpha\>=<frac|a+b
    <sqrt|d>|2>=\<pm\>1>. Nehmen wir jetzt an, dass <math|d\<equiv\>2,3
    <pmod|4>> mit <math|\<alpha\>=a+b<sqrt|d>> für
    <math|a,b\<in\><with|font|Bbb|Z>>. Ist <math|\<alpha\>> Einheit, so haben
    wir <math|1=N<rsub|d><around*|(|a+b <sqrt|d>|)>=a<rsup|2>+<around*|\||d|\|>
    b<rsup|2>> und wie zuvor bemerken wir, dass <math|d\<leq\>-2>.
    Insbesondere folgt <math|1=a<rsup|2>+2 b<rsup|2>> und daher <math|b=0>
    bzw. <math|a=\<pm\>1>.

    (2) Es gilt <math|<with|font|cal|O><rsup|\<ast\>><rsub|-1>=<around*|{|<around*|(|<sqrt|-1>|)><rsup|k>
    <around*|\|||\<nobracket\>> 0\<leq\>k\<less\>4|}>>. Wir haben
    <math|-1\<equiv\>3 <pmod|4>>, d.h. jede Einheit in
    <math|<with|font|cal|O><rsub|-1>> ist von der Form <math|a+b <sqrt|d>>
    für bestimmte ganze Zahlen <math|a,b>. Insbesondere gilt
    <math|1=N<rsub|-1><around*|(|a+b <sqrt|d>|)>=a<rsup|2>+b<rsup|2>>, eine
    Gleichung die nur die Lösungen <math|a=\<pm\>1,b=0> und
    <math|a=0,b=\<pm\>1> in den ganzen Zahlen hat. Aber diese vier
    Möglichkeiten sind genau <math|<around*|(|<sqrt|-1>|)><rsup|k>> für
    <math|k=0,1,2,3>.

    (3) Zuletzt zeigen wir, dass <math|<with|font|cal|O><rsub|-3><rsup|\<ast\>>=<around*|{|<around*|(|<frac|1+<sqrt|-3>|2>|)><rsup|k>
    <around*|\|||\<nobracket\>> 0\<leq\>k\<less\>6|}>>. Da <math|-3\<equiv\>1
    <pmod|4>>, suchen wir nach Einheiten der Form <math|<frac|a+b
    <sqrt|d>|2>> für ganze Zahlen <math|a,b> mit <math|a\<equiv\>b <pmod|2>>
    und <math|1=N<rsub|-3><around*|(|<frac|a+b
    <sqrt|d>|2>|)>=<frac|a<rsup|2>+3 b<rsup|2>|4>> bzw. <math|4=a<rsup|2>+3
    b<rsup|2>>. Ganzzahlige Lösungen dieser Gleichung sind

    <\equation*>
      a=b=1,<space|1em>a=b=-1,<space|1em>a=1,b=-1,<space|1em>a=-1,b=1,<space|1em>a=2,b=0,<space|1em>a=-2,b=0.
    </equation*>

    Diese sechs Möglichkeiten sind genau die Werte
    <math|<around*|(|<frac|1+<sqrt|-3>|2>|)><rsup|k>> für
    <math|k=0,1,2,3,4,5>.

    (4) Für <math|d\<gtr\>0> verhalten sich die Einheiten in
    <math|<with|font|cal|O><rsub|d>> allerdings anders<text-dots> Mehr dazu
    später.
  </example>

  In den Beweisen der letzten Ergebnisse haben wir ein wenig Intuition
  gewonnen, um die Wahl von <math|p<rsub|d>> und <math|\<omega\><rsub|d>>,
  wie angedeutet, zu begründen. Um das zu präzisieren, benötigen wir zunächst
  folgende Definition.

  <\definition>
    Sei <math|S> ein kommutativer Ring mit Einselement und <math|R\<leq\>S>
    ein Unterring von <math|S>. Dann heiÿt <math|s\<in\>S> <em|ganz über
    <math|R>>, wenn es die Nullstelle eines normierten Polynoms aus
    <math|R<around*|[|X|]>> ist. Die Menge der über <math|R> ganzen Elemente
    von <math|S> heiÿt der <em|ganze Abschluss von <math|R> in <math|S>>.
  </definition>

  <\proposition>
    <label|od-ganzer-abschluss-von-z><math|<with|font|cal|O><rsub|d>> ist der
    ganze Abschluss von <math|<with|font|Bbb|Z>> in
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>>.
  </proposition>

  <\proof>
    Sei <math|\<alpha\>\<in\><with|font|cal|O><rsub|d>> beliebig. Nach Lemma
    <reference|norm-d-eigenschaften> (4) sind dann
    <math|<with|font-family|rm|Tr><rsub|d><around*|(|\<alpha\>|)>=\<alpha\>+\<alpha\><rsup|\<ast\>>>
    und <math|N<rsub|d><around*|(|\<alpha\>|)>=\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>>
    ganze Zahlen, sodass

    <\equation*>
      f\<assign\><around*|(|X-\<alpha\>|)>
      <around*|(|X-\<alpha\><rsup|\<ast\>>|)>=X<rsup|2>-<around*|(|\<alpha\>+\<alpha\><rsup|\<ast\>>|)>
      X+\<alpha\> \<alpha\><rsup|\<ast\>>\<in\><with|font|Bbb|Z><around*|[|X|]>.
    </equation*>

    Da <math|f<around*|(|\<alpha\>|)>=0>, ist <math|\<alpha\>> also ganz über
    <math|<with|font|Bbb|Z>>.

    <space|1em>Umgekehrt, sei nun <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
    ganz über <math|<with|font|Bbb|Z>>. Es existiert also ein normiertes
    Polynom <math|f\<in\><with|font|Bbb|Z><around*|[|X|]>>, sodass
    <math|f<around*|(|\<alpha\>|)>=0>. Wir unterscheiden zwei Fälle: Ist
    <math|\<alpha\>\<in\><with|font|Bbb|Q>>, so können wir
    <math|\<alpha\>=<frac|p|q>>, <math|p\<in\><with|font|Bbb|Z>,q\<in\><with|font|Bbb|N>>
    teilerfremd, schreiben. Schreiben wir
    <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i> X<rsup|i>> mit
    <math|a<rsub|n>=1>, so folgt

    <\equation*>
      f<around*|(|\<alpha\>|)>=f<around*|(|<frac|p|q>|)>=<around*|(|<frac|p|q>|)><rsup|n>+a<rsub|n-1>
      <around*|(|<frac|p|q>|)><rsup|n-1>+\<cdots\>+a<rsub|0>=0,
    </equation*>

    also <math|p<rsup|n>+a<rsub|n-1> p<rsup|n-1> q+\<cdots\>+a<rsub|0>
    q<rsup|n>=0>, sodass <math|q <around*|(|a<rsub|n-1>
    p<rsup|n-1>+\<cdots\>+a<rsub|0> q<rsup|n-1>|)>=-p<rsup|n>>. Also <math|q
    \<mid\>p<rsup|n>>, sodass aus der Teilerfremdheit von <math|p> und
    <math|q> folgt, dass <math|q=1>. Somit
    <math|\<alpha\>\<in\><with|font|Bbb|Z>\<subseteq\><with|font|cal|O><rsub|d>>.

    <space|1em>Falls <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>\<setminus\><with|font|Bbb|Q>>,
    so bemerken wir zunächst, dass auch <math|f<around*|(|\<alpha\><rsup|\<ast\>>|)>=<around*|(|f<around*|(|\<alpha\>|)>|)><rsup|\<ast\>>=0>.
    Weil <math|\<alpha\>\<notin\><with|font|Bbb|Q>>, folgt
    <math|\<alpha\>\<neq\>\<alpha\><rsup|\<ast\>>>, sodass <math|f> durch
    <math|g\<assign\><around*|(|X-\<alpha\>|)>
    <around*|(|X-\<alpha\><rsup|\<ast\>>|)>=X<rsup|2>-<around*|(|\<alpha\>+\<alpha\><rsup|\<ast\>>|)>
    X+\<alpha\> \<alpha\><rsup|\<ast\>>> teilbar ist. Es existiert also ein
    normiertes Polynom <math|h\<in\><with|font|Bbb|Q><around*|[|X|]>>, sodass
    <math|f=g h>; aus Folgerung <reference|gauss-lemma-umformulierung> folgt
    dann, dass <math|f> insbesondere in <math|<with|font|Bbb|Z><around*|[|X|]>>
    reduzibel ist mit <math|g,h\<in\><with|font|Bbb|Z><around*|[|X|]>>. Dann
    folgt aber insbesondere <math|\<alpha\>+\<alpha\><rsup|\<ast\>>,\<alpha\>
    \<alpha\><rsup|\<ast\>>\<in\><with|font|Bbb|Z>>, sodass
    <math|\<alpha\>\<in\><with|font|cal|O><rsub|d>> wegen Lemma
    <math|<reference|konjugierte-d-eigenschaften>> (5).
  </proof>

  Das klärt unter anderem die Bezeichnung \RGanzheitsbasis\P. Es zeigt auch,
  wie wir bereits wissen, warum im Allgemeinen nicht
  <math|<with|font|cal|O><rsub|d>=<with|font|Bbb|Z>\<oplus\><with|font|Bbb|Z>
  <sqrt|d>> gilt: Ist <math|d\<equiv\>1 <pmod|4>>, werden die Lösungen
  <math|\<omega\><rsub|d>,\<omega\><rsub|d><rsup|\<ast\>>> des normierten
  ganzzahligen Polynoms <math|p<rsub|d>> in
  <math|<with|font|Bbb|Z>\<oplus\><with|font|Bbb|Z> <sqrt|d>> vernachlässigt.

  <space|1em>Manchmal nennen wir den Ring der \Rganzen\P Zahlen in
  <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> auch <em|Ganzheitsring>.
  Offenbar hat dieser viele interessante Eigenschaften, die wir nun weiter
  untersuchen werden. Insbesondere wollen wir dabei das Ziel, Gegenbeispiele
  für Kästchen <reference|kaestchen-3> zu finden, nicht aus den Augen
  verlieren.

  <\proposition>
    <label|ideale-od-ganzheitsbasis>Es sei
    <math|I\<trianglelefteqslant\><with|font|cal|O><rsub|d>> ein Ideal mit
    <math|I\<neq\><around*|(|0|)>>. Dann existiert eine Ganzheitsbasis
    <math|<around*|{|\<alpha\><rsub|1>,\<alpha\><rsub|2>|}>> von
    <math|<with|font|cal|O><rsub|d>> sowie
    <math|d<rsub|1>,d<rsub|2>\<in\><with|font|Bbb|N>> mit <math|d<rsub|1>
    \<mid\>d<rsub|2>>, sodass

    <\equation*>
      I=<with|font|Bbb|Z><around*|(|d<rsub|1>
      \<alpha\><rsub|1>|)>\<oplus\><with|font|Bbb|Z> <around*|(|d<rsub|2>
      \<alpha\><rsub|2>|)>.
    </equation*>
  </proposition>

  <\proof>
    Für eine beliebige geordnete Ganzheitsbasis
    <math|<around*|{|\<beta\><rsub|1>,\<beta\><rsub|2>|}>> von
    <math|<with|font|cal|O><rsub|d>>, sei

    <\equation*>
      \<Gamma\><around*|(|\<beta\><rsub|1>,\<beta\><rsub|2>|)>\<assign\><around*|{|m\<in\><with|font|Bbb|Z>
      <around*|\|||\<nobracket\>> \<exists\>k\<in\><with|font|Bbb|Z><hspace|0.25em>:<hspace|0.25em>m
      \<beta\><rsub|1>+k \<beta\><rsub|2>\<in\>I|}>.
    </equation*>

    Dann ist <math|\<Gamma\><around*|(|\<beta\><rsub|1>,\<beta\><rsub|2>|)>\<neq\><around*|{|0|}>>.
    In der Tat, sei <math|\<alpha\>\<in\>I,\<alpha\>\<neq\>0>; dann ist
    <math|N<rsub|d><around*|(|\<alpha\>|)>=\<alpha\>\<cdot\>\<alpha\><rsup|\<ast\>>\<in\>I\<cap\><with|font|Bbb|Z>>
    (Lemma <reference|norm-d-eigenschaften> (4)), sodass
    <math|<with|font-family|rm|sgn><around*|(|\<alpha\>
    \<alpha\><rsup|\<ast\>>|)>\<cdot\>\<alpha\>
    \<alpha\><rsup|\<ast\>>\<in\>I\<cap\><with|font|Bbb|N>>. Also gibt es ein
    <math|n\<in\>I\<cap\><with|font|Bbb|N>> und damit auch <math|n
    \<beta\><rsub|1>\<in\>I>, woraus <math|n\<in\>\<Gamma\><around*|(|\<beta\><rsub|1>,\<beta\><rsub|2>|)>>
    folgt. Weiters ist <math|\<Gamma\><around*|(|\<beta\><rsub|1>,\<beta\><rsub|2>|)>>
    offenbar eine additive Untergruppe von <math|<with|font|Bbb|Z>>, sodass
    aus Korollar <reference|untergruppen-von-z> folgt, dass
    <math|\<Gamma\><around*|(|\<beta\><rsub|1>,\<beta\><rsub|2>|)>=d<around*|(|\<beta\><rsub|1>,\<beta\><rsub|2>|)>
    <with|font|Bbb|Z>> für einen eindeutig bestimmten Erzeuger
    <math|d<around*|(|\<beta\><rsub|1>,\<beta\><rsub|2>|)>\<in\><with|font|Bbb|N>>.
    Sei <math|<around*|{|\<beta\><rsub|1>,\<beta\><rsub|2>|}>> so gewählt,
    dass <math|d<rsub|1>\<assign\>d<around*|(|\<beta\><rsub|1>,\<beta\><rsub|2>|)>>
    minimal ist.

    <space|1em>Wir haben bereits gesehen, dass
    <math|<around*|{|\<beta\><rsub|2>,\<beta\><rsub|1>+g \<beta\><rsub|2>|}>>
    für alle <math|g\<in\><with|font|Bbb|Z>> eine Ganzheitsbasis von
    <math|<with|font|cal|O><rsub|d>> ist. Wir zeigen: Ist
    <math|v\<in\><with|font|Bbb|Z>> so, dass <math|d<rsub|1>
    \<beta\><rsub|1>+v \<beta\><rsub|2>\<in\>I>, dann muss schon
    <math|d<rsub|1>> ein Teiler von <math|v> sein. Seien nämlich
    <math|q,r\<in\><with|font|Bbb|Z>> so gewählt, dass <math|v=q d<rsub|1>+r>
    für <math|0\<leq\>r\<less\>d<rsub|1>>. Dann ist <math|d<rsub|1>
    <around*|(|\<beta\><rsub|1>+q \<beta\><rsub|2>|)>+r
    \<beta\><rsub|2>\<in\>I>, sodass <math|r\<in\>\<Gamma\><around*|(|\<beta\><rsub|2>,\<beta\><rsub|1>+q
    \<beta\><rsub|2>|)>> und <math|d<rsub|1>\<leq\>d<around*|(|\<beta\><rsub|2>,\<beta\><rsub|1>+q
    \<beta\><rsub|2>|)>>. Also muss <math|r=0> gelten, d.h. <math|d<rsub|1>
    \<mid\>v>.

    <space|1em>Es sei nun <math|v<rsub|0>\<in\><with|font|Bbb|Z>> so gewählt,
    dass <math|d<rsub|1> \<beta\><rsub|1>+v<rsub|0> \<beta\><rsub|2>\<in\>I>
    und nach eben <math|v<rsub|0>=d<rsub|1> g> für ein
    <math|g\<in\><with|font|Bbb|Z>>. Setze
    <math|\<alpha\><rsub|1>\<assign\>\<beta\><rsub|1>+g \<beta\><rsub|2>> und
    <math|\<alpha\><rsub|2>\<assign\>\<beta\><rsub|2>>. Dann ist ist
    <math|<around*|{|\<alpha\><rsub|1>,\<alpha\><rsub|2>|}>> eine
    Ganzheitsbasis von <math|<with|font|cal|O><rsub|d>>. Sei wie vorhin
    <math|n\<in\>I\<cap\><with|font|Bbb|N>>. Wie zuvor gilt <math|n
    \<beta\><rsub|2>\<in\>I>, also ist <math|\<beta\><rsub|2><rsup|-1>
    I\<cap\><with|font|Bbb|Z>> eine nichttriviale Untergruppe von
    <math|<with|font|Bbb|Z>>. Es existiert also auch
    <math|d<rsub|2>\<in\><with|font|Bbb|N>> mit
    <math|\<beta\><rsub|2><rsup|-1> I\<cap\><with|font|Bbb|Z>=d<rsub|2>
    <with|font|Bbb|Z>> und <math|d<rsub|1> \<beta\><rsub|2>\<in\>I>. Sei nun
    <math|\<alpha\>\<assign\>m \<alpha\><rsub|1>+n \<alpha\><rsub|2>=m
    \<beta\><rsub|1>+<around*|(|m g+n|)> \<beta\><rsub|2>> ein Element von
    <math|I> für fixierte <math|m,n\<in\><with|font|Bbb|Z>>. Dann ist
    <math|m\<in\>\<Gamma\><around*|(|\<beta\><rsub|1>,\<beta\><rsub|2>|)>=d<rsub|1>
    <with|font|Bbb|Z>>, also <math|d<rsub|1>\<mid\>m>. Aus <math|d<rsub|1>
    \<alpha\><rsub|1>=d<rsub|1> \<beta\><rsub|1>+v<rsub|0>
    \<beta\><rsub|2>\<in\>I> folgt <math|m \<alpha\><rsub|1>\<in\>I>, also
    <math|n \<alpha\><rsub|2>\<in\>I>, sodass <math|n\<in\>d<rsub|2>
    <with|font|Bbb|Z>> und daher <math|d<rsub|2> \<mid\>n>. Zusammengefasst
    folgt also <math|\<alpha\>\<in\><with|font|Bbb|Z> <around*|(|d<rsub|1>
    \<alpha\><rsub|1>|)>\<oplus\><with|font|Bbb|Z> <around*|(|d<rsub|2>
    \<alpha\><rsub|2>|)>>. Weil <math|\<alpha\>> beliebig gewählt war,
    folgern wir

    <\equation*>
      I=<with|font|Bbb|Z> <around*|(|d<rsub|1>
      \<alpha\><rsub|1>|)>\<oplus\><with|font|Bbb|Z> <around*|(|d<rsub|2>
      \<alpha\><rsub|2>|)>.
    </equation*>

    Um <math|d<rsub|1> \<mid\>d<rsub|2>> zu zeigen, bemerken wir, dass
    <math|d<rsub|2> \<beta\><rsub|2>\<in\>I> und daher <math|d<rsub|1>
    \<alpha\><rsub|1>+d<rsub|2> \<beta\><rsub|2>=d<rsub|1>
    \<beta\><rsub|1>+<around*|(|d<rsub|1> g+d<rsub|2>|)>
    \<beta\><rsub|2>\<in\>I>. Aus dem letzten Absatz folgt somit
    <math|d<rsub|1> \<mid\>d<rsub|1> g+d<rsub|2>> und <em|a fortiori>
    <math|d<rsub|1> \<mid\>d<rsub|2>>.
  </proof>

  <\corollary>
    <label|od-ideale-endlich>Es sei <math|I\<trianglelefteqslant\><with|font|cal|O><rsub|d>>
    ein Ideal mit <math|I\<neq\><around*|(|0|)>>. Dann ist
    <math|<with|font|cal|O><rsub|d>/I> endlich.
  </corollary>

  <\proof>
    Nach Proposition <reference|ideale-od-ganzheitsbasis> gibt es eine
    Ganzheitsbasis <math|<around*|{|\<alpha\><rsub|1>,\<alpha\><rsub|2>|}>>
    von <math|<with|font|cal|O><rsub|d>> sowie
    <math|d<rsub|1>,d<rsub|2>\<in\><with|font|Bbb|N>> mit
    <math|I=<with|font|Bbb|Z> <around*|(|d<rsub|1>
    \<alpha\><rsub|1>|)>\<oplus\><with|font|Bbb|Z> <around*|(|d<rsub|2>
    \<alpha\><rsub|2>|)>>. Wir definieren die Abbildung

    <\equation*>
      \<phi\> :<around*|(|<with|font|Bbb|Z>/d<rsub|1>
      <with|font|Bbb|Z>|)>\<times\><around*|(|<with|font|Bbb|Z>/d<rsub|2>
      <with|font|Bbb|Z>|)>\<rightarrow\><with|font|cal|O><rsub|d>/I,<space|1em>\<phi\><around*|(|a,b|)>\<assign\>a
      \<alpha\><rsub|1>+b \<alpha\><rsub|2>+I
    </equation*>

    und zeigen, dass <math|\<phi\>> eine Bijektion ist; klarerweise ist
    <math|\<phi\>> wohldefiniert. Sei <math|A\<assign\>a \<alpha\><rsub|1>+b
    \<alpha\><rsub|2>> und <math|E\<assign\>e \<alpha\><rsub|1>+f
    \<alpha\><rsub|2>> für <math|a,e\<in\><with|font|Bbb|Z>/d<rsub|1>
    <with|font|Bbb|Z>> und <math|b,f\<in\><with|font|Bbb|Z>/d<rsub|2>
    <with|font|Bbb|Z>>. Falls <math|\<phi\><around*|(|a,b|)>=\<phi\><around*|(|e,f|)>>,
    so folgt <math|\<phi\><around*|(|a,b|)>-\<phi\><around*|(|e,f|)>\<in\>I>.
    Also gilt

    <\equation*>
      <around*|(|a-e|)> \<alpha\><rsub|1>+<around*|(|b-f|)>
      \<alpha\><rsub|2>=A-E=p d<rsub|1> \<alpha\><rsub|1>+q d<rsub|2>
      \<alpha\><rsub|2>
    </equation*>

    für <math|p,q\<in\><with|font|Bbb|Z>>. Dann folgt aber
    <math|a-e\<equiv\>0 <pmod|d<rsub|1>>> und <math|b-f\<equiv\>0
    <pmod|d<rsub|2>>>, sodass <math|\<phi\>> injektiv ist. Die Surjektivität
    von <math|\<phi\>> folgt unmittelbar. Somit ist <math|\<phi\>> bijektiv;
    insbesondere hat <math|<with|font|cal|O><rsub|d>/I> genau
    <math|d<rsub|1>\<cdot\>d<rsub|2>> Elemente.
  </proof>

  <\corollary>
    <label|od-primideal-maximalideal>Sei <math|I\<vartriangleleft\><with|font|cal|O><rsub|d>>
    ein Primideal, <math|I\<neq\><around*|(|0|)>>. Dann ist <math|I> maximal.
  </corollary>

  <\proof>
    Nach Proposition <reference|ideale-quotientenring> ist
    <math|<with|font|cal|O><rsub|d>/I> ein Integritätsbereich, der nach
    Folgerung <reference|od-ideale-endlich> endlich ist und nach Proposition
    <reference|endlicher-integritaetsbereich-koerper> somit ein Körper,
    sodass aus Proposition <reference|ideale-quotientenring> folgt, dass
    <math|I> maximal ist.
  </proof>

  Diese Erkenntnisse führen uns zum ersten zentralen Satz unserer
  Untersuchungen.

  <\theorem>
    <label|od-hir-gdw-ufd>Der Ring <math|<with|font|cal|O><rsub|d>> ist genau
    dann ein Hauptidealring, wenn er faktoriell ist.
  </theorem>

  <\proof>
    Falls <math|<with|font|cal|O><rsub|d>> ein Hauptidealring ist, dann ist
    er nach Satz <reference|hauptidealring-dann-faktoriell> auch faktoriell.
    Sei <math|<with|font|cal|O><rsub|d>> also nun faktoriell und
    <math|I\<vartriangleleft\><with|font|cal|O><rsub|d>> ein echtes Ideal,
    das nicht das Nullideal ist (sonst ist <math|I> offensichtlich ein
    Hauptideal). Also können wir <math|\<alpha\>\<in\><with|font|cal|O><rsub|d>\<setminus\><with|font|cal|O><rsub|d><rsup|\<ast\>>>
    nicht Null wählen.

    <space|1em>Nehmen wir zunächst an, dass <math|I> ein Primideal ist. Weil
    <math|<with|font|cal|O><rsub|d>> nach Proposition
    <reference|einbettung-ring-der-ganze-zahlen> ein Ring mit Faktorzerlegung
    ist, existieren irreduzible Elemente <math|p<rsub|1>,\<ldots\>,p<rsub|n>\<in\><with|font|cal|O><rsub|d>>,
    sodass <math|\<alpha\>=<big|prod><rsub|i=1><rsup|n>p<rsub|i>>. Weil
    <math|I> prim ist, muss es ein <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    geben, sodass <math|p<rsub|i>\<in\>I>; dann ist auch
    <math|<around*|(|p<rsub|i>|)>\<subseteq\>I>. Nach Annahme ist
    <math|<with|font|cal|O><rsub|d>> faktoriell, also ist <math|p<rsub|i>>
    auch ein Primelement von <math|<with|font|cal|O><rsub|d>> (Satz
    <reference|faktoriell-irreduzibel-equiv-prim>) und damit
    <math|<around*|(|p<rsub|i>|)>> auch ein Primideal von
    <math|<with|font|cal|O><rsub|d>>. Aber <math|<around*|(|p<rsub|i>|)>> ist
    nach Folgerung <reference|od-primideal-maximalideal> sogar maximal,
    sodass <math|<around*|(|p<rsub|i>|)>=I> folgen muss.

    <space|1em>Es sei nun <math|I\<neq\><around*|(|0|)>> ein beliebiges Ideal
    von <math|<with|font|cal|O><rsub|d>>. Dann existieren nach Proposition
    <reference|ideale-od-ganzheitsbasis> Elemente
    <math|\<alpha\>,\<beta\>\<in\>I>, sodass <math|I=<with|font|Bbb|Z>
    \<alpha\>\<oplus\><with|font|Bbb|Z> \<beta\>>. Da
    <math|<with|font|cal|O><rsub|d>> faktoriell ist, existiert nach Lemma
    <reference|ufd-maximalteiler> ein Maximalteiler
    <math|g\<in\><with|font|cal|O><rsub|d>> von
    <math|<around*|{|\<alpha\>,\<beta\>|}>>. Setzen wir also
    <math|J\<assign\>g<rsup|-1> I>, so folgt
    <math|J\<trianglelefteqslant\><with|font|cal|O><rsub|d>>. In der Tat, aus
    <math|g \<mid\>\<alpha\>> und <math|g \<mid\>\<beta\>> folgt zunächst
    <math|J\<subseteq\><with|font|cal|O><rsub|d>>. Sind
    <math|x,y\<in\>J,\<alpha\>\<in\><with|font|cal|O><rsub|d>>, so folgt
    <math|g x, g y\<in\>I>, daher <math|g <around*|(|x-y|)>=g x-g y\<in\>I>
    und <math|x-y\<in\>J>; ähnlich gilt <math|g \<alpha\> x\<in\>I> und damit
    <math|x \<alpha\>\<in\>J>. Wenn wir zeigen können, dass
    <math|J=<with|font|cal|O><rsub|d>>, so folgt automatisch
    <math|<around*|(|g|)>=g <with|font|cal|O><rsub|d>=I>. In der Tat, falls
    <math|J\<neq\><with|font|cal|O><rsub|d>>, so existiert nach Proposition
    <reference|noethersche-ringe-proposition> (3) ein maximales Ideal
    <math|K\<vartriangleleft\><with|font|cal|O><rsub|d>> mit
    <math|J\<subseteq\>K>. Insbesondere ist <math|K> aber ein Primideal,
    daher <math|K=<around*|(|\<xi\>|)>> für ein
    <math|\<xi\>\<in\><with|font|cal|O><rsub|d>>. Da <math|g<rsup|-1>
    \<alpha\>,g<rsup|-1> \<beta\>\<in\>J>, ist <math|g<rsup|-1>
    \<alpha\>,g<rsup|-1> \<beta\>\<in\><around*|(|\<xi\>|)>>, also
    <math|\<xi\> \<mid\> g<rsup|-1> \<alpha\>> sowie <math|\<xi\> \<mid\>
    g<rsup|-1> \<beta\>>. Daraus folgt <math|g \<xi\> \<mid\>\<alpha\>> und
    <math|g \<xi\> \<mid\>\<beta\>> und weil <math|g> ein Maximalteiler von
    <math|<around*|{|\<alpha\>,\<beta\>|}>> war, folgt <math|g \<xi\> \<mid\>
    g>. Dann folgt aber, dass <math|\<xi\>> Einheit ist, ein Widerspruch
    dazu, dass <math|K> maximal ist. Also muss schon
    <math|J=<with|font|cal|O><rsub|d>> gelten.
  </proof>

  Der Ring der ganzen Zahlen in <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
  wird also auf jeden Fall keine Gegenbeispiele für faktorielle Ringe, die
  keine Hauptidealringe sind, liefern. Für die Vervollständigung von Kästchen
  <math|<reference|kaestchen-3>> brauchen wir also noch mehr Informationen.
  Naturgemäÿ stellen sich folgende Fragen: Für welche
  <math|d\<in\><with|font|Bbb|Z>> ist <math|<with|font|cal|O><rsub|d>>
  faktoriell (und dementsprechend ein Hauptidealring)? Für welche sogar
  euklidisch? Um diese Fragen zu beantworten, schränken wir uns zunächst auf
  <math|d\<less\>0> ein. Behandeln wir zunächst euklidische Ringe.

  <\lemma>
    <label|od-2-3-irreduzibel>Es sei <math|d\<less\>0> eine quadratfreie
    ganze Zahl und

    <\equation*>
      d\<notin\><around*|{|-1,-2,-3,-7,-11|}>.
    </equation*>

    Dann sind <math|2> und <math|3> irreduzibel in
    <math|<with|font|cal|O><rsub|d>>.
  </lemma>

  <\proof>
    Sei <math|p\<in\><around*|{|2,3|}>>. Offenbar gilt <math|p\<neq\>0> und
    <math|p\<notin\><with|font|cal|O><rsub|d><rsup|\<ast\>>>. Sei angenommen,
    dass <math|p=\<alpha\> \<beta\>> für <math|\<alpha\>,\<beta\>\<in\><with|font|cal|O><rsub|d>\<setminus\><with|font|cal|O><rsub|d><rsup|\<ast\>>>.
    Dann ist

    <\equation*>
      p<rsup|2>=N<rsub|d><around*|(|p|)>=N<rsub|d><around*|(|\<alpha\>|)>
      N<rsub|d><around*|(|\<beta\>|)>
    </equation*>

    und da <math|\<alpha\>,\<beta\>\<notin\><with|font|cal|O><rsub|d><rsup|\<ast\>>>
    gilt auch <math|N<rsub|d><around*|(|\<alpha\>|)>,N<rsub|d><around*|(|\<beta\>|)>\<neq\>1>.
    Daraus folgt <math|N<rsub|d><around*|(|\<alpha\>|)>=N<rsub|d><around*|(|\<beta\>|)>=p>.
    Sei <math|\<alpha\>=a+b \<omega\><rsub|d>> für
    <math|a,b\<in\><with|font|Bbb|Z>>, sodass

    <\equation*>
      p=N<rsub|d><around*|(|\<alpha\>|)>=<choice|<tformat|<table|<row|<cell|a<rsup|2>+<around*|\||d|\|>
      b<rsup|2>,<space|1em>d\<equiv\>2,3 <pmod|4>,>>|<row|<cell|<around*|(|a+<frac|b|2>|)><rsup|2>+<frac|<around*|\||d|\|>|4>
      b<rsup|2>,<space|1em>d\<equiv\>1 <pmod|4>.>>>>>
    </equation*>

    Weil <math|d\<notin\><around*|{|-1,-2,-3,-7,-11|}>>, haben wir im ersten
    Fall <math|<around*|\||d|\|>\<geq\>5> und im zweiten Fall
    <math|<frac|<around*|\||d|\|>|4>\<geq\><frac|15|4>\<geq\>3>, sodass
    <math|b<rsup|2>=0> folgt. Dann gilt aber <math|p=a<rsup|2>>; ein
    Widerspruch.
  </proof>

  <\proposition>
    Es sei <math|d\<less\>0> eine quadratfreie ganze Zahl und

    <\equation*>
      d\<notin\><around*|{|-1,-2,-3,-7,-11|}>.
    </equation*>

    Dann ist <math|<with|font|cal|O><rsub|d>> nicht euklidisch.
  </proposition>

  <\proof>
    Nehmen wir an, dass <math|<with|font|cal|O><rsub|d>> bezüglich einer
    Abbildung <math|\<omega\> :<with|font|cal|O><rsub|d>\<setminus\><around*|{|0|}>\<rightarrow\><with|font|Bbb|N><rsub|0>>
    euklidisch ist. Nach Beispiel <reference|einheiten-in-od> gilt
    <math|<with|font|cal|O><rsub|d><rsup|\<ast\>>=<around*|{|-1,1|}>>; wählen
    wir also <math|\<alpha\><rsub|0>\<in\><with|font|cal|O><rsub|d>\<setminus\><around*|{|0,\<pm\>1|}>>
    so, dass <math|\<omega\><around*|(|\<alpha\><rsub|0>|)>\<in\><with|font|Bbb|N><rsub|0>>
    minimal ist. Seien <math|q,r\<in\><with|font|cal|O><rsub|d>> auÿerdem so,
    dass <math|2=q \<alpha\><rsub|0>+r> mit <math|r=0> oder
    <math|\<omega\><around*|(|r|)>\<less\>\<omega\><around*|(|\<alpha\><rsub|0>|)>>.
    Insbesondere muss dann aber <math|r=0> oder <math|r=\<pm\>1> sein, wobei
    <math|r=1> ausgeschlossen ist. Falls <math|r=0>, dann
    <math|\<alpha\><rsub|0> \<mid\>2>; da aber
    <math|\<alpha\><rsub|0>\<notin\><with|font|cal|O><rsub|d><rsup|\<ast\>>>
    und <math|2> nach Lemma <reference|od-2-3-irreduzibel> irreduzibel ist,
    folgt <math|\<alpha\><rsub|0>=\<pm\>2>. Falls wiederum <math|r=-1>, so
    gilt <math|\<alpha\><rsub|0> \<mid\>3> und aus einem ähnlichen Argument
    folgt dann <math|\<alpha\><rsub|0>=\<pm\>3>. Zusammengefasst haben wir
    also <math|\<alpha\><rsub|0>\<in\><around*|{|\<pm\>2,\<pm\>3|}>>. Seien
    <math|q<rprime|'>,r<rprime|'>\<in\><with|font|cal|O><rsub|d>> nun so,
    dass <math|\<omega\><rsub|d>=q<rprime|'> \<alpha\><rsub|0>+r<rprime|'>>
    und <math|r<rprime|'>=0> oder <math|\<omega\><around*|(|r<rprime|'>|)>\<less\>\<omega\><around*|(|\<alpha\><rsub|0>|)>>.
    Erneut haben wir <math|r<rprime|'>=0> oder <math|r<rprime|'>=\<pm\>1>;
    wir zeigen, dass beide Möglichkeiten zu einem Widerspruch führen. Ist
    <math|r<rprime|'>=0>, so haben wir <math|\<alpha\><rsub|0>
    \<mid\>\<omega\><rsub|d>> in <math|<with|font|cal|O><rsub|d>>, was zum
    Widerspruch <math|\<alpha\><rsup|-1><rsub|0>
    \<omega\><rsub|d>\<in\><with|font|cal|O><rsub|d>> führt, da
    <math|\<alpha\><rsub|0>\<in\><around*|{|\<pm\>2,\<pm\>3|}>>. Ist
    <math|r<rprime|'>=\<pm\>1>, so erhalten wir den ähnlichen Widerspruch
    <math|\<alpha\><rsub|0><rsup|-1> <around*|(|\<mp\>1+\<omega\><rsub|d>|)>\<in\><with|font|cal|O><rsub|d>>.
  </proof>

  Auch die Umkehrung gilt! Um das zu zeigen, treffen wir noch folgende
  Vorbereitung.

  <\lemma>
    <label|od-euklidisch-lemma>Es sei <math|d\<in\><with|font|Bbb|Z>\<setminus\><around*|{|0,1|}>>
    quadratfrei. Dann ist <math|<with|font|cal|O><rsub|d>> genau dann
    bezüglich <math|<around*|\||N<rsub|d>|\|>> euklidisch, wenn für alle
    <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>> ein
    <math|\<beta\>\<in\><with|font|cal|O><rsub|d>> existiert, sodass
    <math|<around*|\||N<rsub|d><around*|(|\<alpha\>-\<beta\>|)>|\|>\<less\>1>.
  </lemma>

  <\proof>
    Nehmen wir zunächst an, dass <math|<with|font|cal|O><rsub|d>> bezüglich
    <math|<around*|\||N<rsub|d>|\|>> euklidisch ist. Sei
    <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>> beliebig
    mit <math|\<alpha\>=a+b \<omega\><rsub|d>> für
    <math|a,b\<in\><with|font|Bbb|Q>>. Dann existiert ein
    <math|m\<in\><with|font|Bbb|N>> mit <math|m
    \<alpha\>\<in\><with|font|cal|O><rsub|d>> und nach Voraussetzung somit
    auch <math|q,r\<in\><with|font|cal|O><rsub|d>> mit <math|m \<alpha\>=m
    q+r> und <math|r=0> bzw. <math|<around*|\||N<rsub|d><around*|(|r|)>|\|>\<less\><around*|\||N<rsub|d><around*|(|m|)>|\|>>.
    In beiden Fällen folgt

    <\equation*>
      <around*|\||N<rsub|d><around*|(|m|)>|\|>
      <around*|\||N<rsub|d><around*|(|\<alpha\>-q|)>|\|>=<around*|\||N<rsub|d><around*|(|m
      \<alpha\>-m q|)>|\|>=<around*|\||N<rsub|d><around*|(|r|)>|\|>\<less\><around*|\||N<rsub|d><around*|(|m|)>|\|>,
    </equation*>

    sodass <math|<around*|\||N<rsub|d><around*|(|\<alpha\>-q|)>|\|>\<less\>1>,
    wie gewünscht.

    <space|1em>Sei nun vorausgesetzt, dass für alle
    <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>> ein
    <math|\<beta\>\<in\><with|font|cal|O><rsub|d>> mit
    <math|<around*|\||N<rsub|d><around*|(|\<alpha\>-\<beta\>|)>|\|>\<less\>1>
    existiert. Seien <math|\<gamma\>,\<delta\>\<in\><with|font|cal|O><rsub|d>>
    mit <math|\<delta\>\<neq\>0> beliebig. Dann ist <math|\<gamma\>
    \<delta\><rsup|-1>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>, sodass
    nach Voraussetzung ein <math|\<beta\>\<in\><with|font|cal|O><rsub|d>> mit
    <math|<around*|\||N<rsub|d><around*|(|\<gamma\>
    \<delta\><rsup|-1>-\<beta\>|)>|\|>\<less\>1>. Setzen wir
    <math|r\<assign\>\<gamma\>-\<beta\> \<delta\>\<in\><with|font|cal|O><rsub|d>>,
    folgt <math|\<gamma\>=\<beta\> \<delta\>+r> und
    <math|<around*|\||N<rsub|d><around*|(|r|)>|\|>\<less\><around*|\||N<rsub|d><around*|(|\<delta\>|)>|\|>>.
  </proof>

  Erinnern wir uns an die Definition eines euklidischen Ringes, so wissen
  wir, dass wir eine Art \RDivision mit Rest\P zur Verfügung haben. Lemma
  <reference|od-euklidisch-lemma> sagt also im Prinzip, dass wir bei Division
  von <math|\<alpha\>> durch <math|\<beta\>\<neq\>0> ein Element erhalten
  (den Quotienten), das maximalen Abstand <math|1> zu <math|\<alpha\>> hat.

  <\proposition>
    Ist <math|d\<in\><around*|{|-1,-2,-3,-7,-11|}>>, dann ist
    <math|<with|font|cal|O><rsub|d>> euklidisch bezüglich
    <math|\<omega\>=N<rsub|d>=<around*|\||N<rsub|d>|\|>>.
  </proposition>

  <\proof>
    Betrachten wir den Ausdruck <math|N<rsub|d><around*|(|\<alpha\>|)>=<around*|\||N<rsub|d><around*|(|\<alpha\>|)>|\|>=<around*|\||\<alpha\>|\|><rsup|2>>
    für beliebiges <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>.

    <space|1em>Sei zuerst <math|d\<in\><around*|{|-1,-2|}>>. Dann gilt
    <math|d<neg|\<equiv\>> 1 <pmod|4>> und es gibt
    <math|r,s\<in\><with|font|Bbb|Q>> mit <math|\<alpha\>=r+s <sqrt|d>>.
    Seien <math|x,y\<in\><with|font|Bbb|Z>> so gewählt, dass
    <math|<around*|\||x-r|\|>\<leq\><frac|1|2>,<around*|\||y-s|\|>\<leq\><frac|1|2>>
    und sei <math|\<beta\>\<assign\>x+y <sqrt|d>\<in\><with|font|cal|O><rsub|d>>.
    Dann ist

    <\equation*>
      <around*|\||\<alpha\>-\<beta\>|\|><rsup|2>=<around*|(|x-r|)><rsup|2>+<around*|\||d|\|>
      <around*|(|y-s|)><rsup|2>\<leq\><frac|1|4>+2\<cdot\><frac|1|4>=<frac|3|4>\<less\>1.
    </equation*>

    Die Behauptung folgt also aus Lemma <reference|od-euklidisch-lemma>.

    <space|1em>Sei nun <math|d\<in\><around*|{|-3,-7,-11|}>>. Dann ist
    <math|d\<equiv\>1 <pmod|4>>. Sei wieder
    <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>> beliebig
    mit <math|\<alpha\>=r+s <sqrt|d>>. Sei <math|y\<in\><with|font|Bbb|Z>> so
    gewählt, dass <math|<around*|\||2 s-y|\|>\<leq\><frac|1|2>> und
    <math|x\<in\><with|font|Bbb|Z>> so gewählt, dass
    <math|<around*|\||r-x-<frac|y|2>|\|>\<leq\><frac|1|2>>. Setzen wir
    <math|\<beta\>\<assign\>x+y \<omega\><rsub|d>>, dann ist

    <\equation*>
      <around*|\||\<alpha\>-\<beta\>|\|><rsup|2>=<around*|(|r-x-<frac|y|2>|)><rsup|2>+<around*|(|s-<frac|y|2>|)><rsup|2>
      <around*|\||d|\|>\<leq\><frac|1|4>+<frac|<around*|\||d|\|>|16>\<leq\><frac|15|16>\<less\>1
    </equation*>

    und somit folgt die Behauptung wieder aus Lemma
    <reference|od-euklidisch-lemma>.
  </proof>

  <\corollary>
    Sei <math|d\<less\>0> eine quadratfreie ganze Zahl. Dann ist
    <math|<with|font|cal|O><rsub|d>> genau dann euklidisch bezüglich
    <math|\<omega\>=<around*|\||N<rsub|d>|\|>>, wenn
    <math|d\<in\><around*|{|-1,-2,-3,-7,-11|}>>.
  </corollary>

  Für <math|d=-1> nennen wir den folglich euklidischen Ring
  <math|<with|font|cal|O><rsub|d>=<with|font|cal|O><rsub|-1>> den <em|Ring
  der Gauÿ'schen Zahlen> und schreiben <math|<with|font|Bbb|Z>
  <around*|[|<sqrt|-1>|]>>. Für <math|d=-3> nennen wir
  <math|<with|font|cal|O><rsub|d>=<with|font|cal|O><rsub|-3>> den <em|Ring
  der Eisenstein-Zahlen> und schreiben <math|<with|font|Bbb|Z>
  <around*|[|<frac|1+<sqrt|3>|2>|]>>. Die Einheiten in diesen Ringen haben
  wir bereits in Beispiel <reference|einheiten-in-od> bestimmt. Als kleinen
  Exkurs wollen wir die Primelemente in <math|<with|font|Bbb|Z><around*|[|<sqrt|-1>|]>>
  bestimmen.

  <\lemma>
    <label|x2+1-irreduzibel>Das Polynom <math|X<rsup|2>+1> ist in
    <math|<with|font|Bbb|F><rsub|p><around*|[|X|]>> genau dann irreduzibel,
    wenn <math|p\<equiv\>3 <pmod|4>> für eine Primzahl <math|p>.
  </lemma>

  <\proof>
    <math|<around*|(|\<Rightarrow\>|)>> Setzen wir zuerst voraus, dass
    <math|p\<equiv\>3 <pmod|4>>. Dann gilt <math|p=4 k+3> für ein
    <math|k\<in\><with|font|Bbb|N>>. Nach Proposition
    <reference|polynome-koerper-proposition> ist <math|X<rsup|2>+1> genau
    dann irreduzibel, wenn keine Nullstelle in
    <math|<with|font|Bbb|F><rsub|p>> existiert; nehmen wir für einen
    Widerspruch an, dass dies der Fall ist. Also gilt
    <math|\<alpha\><rsup|2>\<equiv\>-1 <pmod|p>> für ein
    <math|\<alpha\>\<in\><with|font|Bbb|F><rsub|p>> und insbesondere
    <math|\<alpha\><rsup|4>\<equiv\>1 <pmod|p>>. Nach Lemma
    <reference|kleiner-fermat>,

    <\equation*>
      1\<equiv\>\<alpha\><rsup|p-1>\<equiv\>\<alpha\><rsup|4
      k+2>\<equiv\>\<alpha\><rsup|2> \<alpha\><rsup|4
      k>\<equiv\>\<alpha\><rsup|2>\<equiv\>-1 <pmod|p>,
    </equation*>

    i.e. <math|0\<equiv\>2 <pmod|p>>. Da offensichtlich <math|p\<neq\>2>, ist
    das ein Widerspruch.

    <math|<around*|(|\<Leftarrow\>|)>> Wir zeigen, dass falls
    <math|p<neg|\<equiv\>>3 <pmod|4>> ist, <math|X<rsup|2>+1> eine Nullstelle
    in <math|<with|font|Bbb|F><rsub|p>> hat. Falls <math|p=2>, hat
    <math|X<rsup|2>+1> die Nullstelle <math|\<alpha\>=1>, also können wir
    annehmen, dass <math|p\<equiv\>1 <pmod|4>>, d.h. <math|p=4 k+1> für ein
    <math|k\<in\><with|font|Bbb|N>>. Aus dem Satz von Wilson (Lemma
    <reference|satz-von-wilson>) folgt

    <math|<align*|<tformat|<table|<row|<cell|-1\<equiv\>>|<cell|<around*|(|p-1|)>
    <around*|(|p-2|)> \<cdots\><around*|(|2|)>
    <around*|(|1|)>>>|<row|<cell|\<equiv\>>|<cell|<around*|(|<frac|p+<around*|(|p-2|)>|2>|)>
    <around*|(|<frac|p+<around*|(|p-4|)>|2>|)>
    \<cdots\><around*|(|<frac|p+1|2>|)><around*|(|<frac|p-1|2>|)> \<cdots\>
    <around*|(|<frac|p-<around*|(|p-4|)>|2>|)>
    <around*|(|<frac|p-<around*|(|p-2|)>|2>|)>>>|<row|<cell|\<equiv\>>|<cell|<around*|(|-<frac|p-<around*|(|p-2|)>|2>|)>
    <around*|(|-<frac|p-<around*|(|p-4|)>|2>|)>
    \<cdots\><around*|(|-<frac|p-1|2>|)> <around*|(|<frac|p-1|2>|)> \<cdots\>
    <around*|(|<frac|p-<around*|(|p-4|)>|2>|)>
    <around*|(|<frac|p-<around*|(|p-2|)>|2>|)>>>|<row|<cell|\<equiv\>>|<cell|<around*|(|<around*|(|<frac|p-1|2>|)>!|)><rsup|2>
    <around*|(|-1|)><rsup|<frac|p-1|2>> <pmod|p>.>>>>>>

    Weil <math|<around*|(|-1|)><rsup|<frac|p-1|2>>=<around*|(|-1|)><rsup|2
    k>=1>, folgt insbesondere <math|-1\<equiv\><around*|(|<around*|(|<frac|p-1|2>|)>!|)><rsup|2>
    <pmod|p>>, d.h. <math|X<rsup|2>+1> hat die Nullstelle
    <math|\<alpha\>=<around*|(|<frac|p-1|2>|)>!> in
    <math|<with|font|Bbb|F><rsub|p>>.
  </proof>

  <\lemma>
    <label|primelement-norm>Sei <math|\<pi\>\<in\><with|font|cal|O><rsub|d>>
    ein Primelement. Dann gilt <math|<around*|\||N<rsub|d><around*|(|\<pi\>|)>|\|>=p>
    oder <math|<around*|\||N<rsub|d><around*|(|\<pi\>|)>|\|>=p<rsup|2>> für
    eine Primzahl <math|p\<in\><with|font|Bbb|P>>.
  </lemma>

  <\proof>
    Sei <math|n\<assign\><around*|\||N<rsub|d><around*|(|\<pi\>|)>|\|>=<big|prod><rsub|i=1><rsup|k>p<rsub|i>>
    für Primzahlen <math|p<rsub|1>,\<ldots\>,p<rsub|k>\<in\><with|font|Bbb|P>>.
    Da <math|N<rsub|d><around*|(|\<pi\>|)>=\<pi\> \<pi\><rsup|\<ast\>>>,
    folgt <math|\<pi\> \<mid\>n>. Weil <math|\<pi\>> ein Primelement ist,
    existiert also ein <math|i\<in\><around*|{|1,\<ldots\>,k|}>> sodass
    <math|\<pi\> \<mid\>p<rsub|i>> in <math|<with|font|cal|O><rsub|d>>. Wegen
    Folgerung <reference|norm-d-teiler> gilt dann aber auch
    <math|N<rsub|d><around*|(|\<pi\>|)> \<mid\>N<rsub|d><around*|(|p<rsub|i>|)>>,
    d.h. <math|n \<mid\>p<rsub|i><rsup|2>> in <math|<with|font|Bbb|Z>>.
    Daraus folgt <math|n\<in\><around*|{|1,p<rsub|i>,p<rsub|i><rsup|2>|}>>
    und da <math|\<pi\>> prim ist, kann nur
    <math|n\<in\><around*|{|p<rsub|i>,p<rsub|i><rsup|2>|}>> der Fall sein.
  </proof>

  <\theorem>
    Die Primelemente im Ring der Gauÿ'schen Zahlen sind (bis auf
    Assoziiertheit) gegeben durch jene Elemente <math|\<pi\>>, die eine der
    folgenden Eigenschaften erfüllen:

    <\indent>
      (1) <math|\<pi\>=1+<sqrt|-1>>,

      (2) <math|N<rsub|-1><around*|(|\<pi\>|)>=p> für eine Primzahl
      <math|p\<equiv\>1 <pmod|4>>.

      (3) <math|\<pi\>=p> für eine Primzahl <math|p\<equiv\>3 <pmod|4>>.
    </indent>
  </theorem>

  <\proof>
    Sei <math|\<pi\>> ein Primelement von
    <math|<with|font|Bbb|Z><around*|[|<sqrt|-1>|]>>. Nach Lemma
    <reference|primelement-norm> existiert eine Primzahl
    <math|p\<in\><with|font|Bbb|P>> mit <math|N<rsub|-1><around*|(|\<pi\>|)>=p>
    oder <math|N<rsub|-1><around*|(|\<pi\>|)>=p<rsup|2>>. Wir unterscheiden
    drei wesentliche Fälle.

    <space|1em>Falls <math|p=2> und <math|N<rsub|-1><around*|(|\<pi\>|)>=p=2>,
    so folgt aus <math|2=N<rsub|-1><around*|(|\<pi\>|)>=\<pi\>
    \<pi\><rsup|\<ast\>>>, dass <math|\<pi\> \<mid\>2>. Mittels der
    Faktorisierung

    <\equation*>
      2=<around*|(|1+<sqrt|-1>|)> <around*|(|1-<sqrt|-1>|)>=<around*|(|-<sqrt|-1>|)>
      <around*|(|1+<sqrt|-1>|)><rsup|2>
    </equation*>

    und dem Faktum, dass <math|\<pi\>> prim ist, folgt <math|\<pi\>
    \<mid\>1+<sqrt|-1>>. Aber <math|N<rsub|-1><around*|(|1+<sqrt|-1>|)>=2>,
    d.h. <math|1+<sqrt|-1>> ist irreduzibel und daher
    <math|\<pi\>\<sim\>1+<sqrt|-1>>. Falls wiederum <math|p=2> und
    <math|N<rsub|-1><around*|(|\<pi\>|)>=p<rsup|2>=4>, so muss
    <math|\<pi\>\<sim\>2> gelten, ein Widerspruch dazu, dass <math|\<pi\>>
    prim und daher irreduzibel ist.

    <space|1em>Falls <math|p\<equiv\>1 <pmod|4>>, hat <math|X<rsup|2>+1> nach
    Lemma <reference|x2+1-irreduzibel> eine Nullstelle
    <math|u\<in\><with|font|Bbb|Z>> modulo <math|p>, sodass
    <math|u<rsup|2>+1\<equiv\>0 <pmod|p>>. Also

    <\equation*>
      p \<mid\>u<rsup|2>+1=<around*|(|u+<sqrt|-1>|)>
      <around*|(|u-<sqrt|-1>|)>.
    </equation*>

    Da <math|p> keinen der beiden Faktoren auf der rechten Seite teilt, ist
    <math|p> kein Primelement von <math|<with|font|Bbb|Z><around*|[|<sqrt|-1>|]>>.
    Wäre <math|N<rsub|-1><around*|(|\<pi\>|)>=p<rsup|2>>, so gilt
    <math|\<pi\> \<mid\>p<rsup|2>>, insbesondere also <math|\<pi\> \<mid\>p>,
    da <math|\<pi\>> prim ist. Da auÿerdem
    <math|N<rsub|-1><around*|(|\<pi\>|)>=N<rsub|-1><around*|(|p|)>>, folgt
    <math|\<pi\>\<sim\>p>, im Widerspruch dazu, dass <math|\<pi\>> prim,
    <math|p> aber nicht ist. Folglich <math|N<rsub|-1><around*|(|\<pi\>|)>=p>.

    <space|1em>Falls <math|p\<equiv\>3 <pmod|4>> und
    <math|N<rsub|-1><around*|(|\<pi\>|)>=p>, so setzen wir zunächst
    <math|\<pi\>=a+b <sqrt|-1>> für <math|a,b\<in\><with|font|Bbb|Z>> an.
    Also <math|p=N<rsub|-1><around*|(|\<pi\>|)>=a<rsup|2>+b<rsup|2>>, was
    <math|p\<equiv\>3 <pmod|4>> widerspricht. Es folgt
    <math|N<rsub|-1><around*|(|\<pi\>|)>=N<rsub|-1><around*|(|p|)>=p<rsup|2>>
    und da <math|\<pi\> \<mid\>p> muss sogar <math|\<pi\>\<sim\>p> gelten.
  </proof>

  Wir folgern also, dass für quadratfreies <math|d\<less\>0> der Ring
  <math|<with|font|cal|O><rsub|d>> genau dann euklidisch ist (und zwar
  bezüglich <math|\<omega\>=<around*|\||N<rsub|d>|\|>>), wenn
  <math|d\<in\><around*|{|-1,-2,-3,-7,-11|}>>. Wir nennen
  <math|<with|font|cal|O><rsub|d>> dann <em|norm-euklidisch>. Nach Satz
  <math|<reference|euklidisch-dann-hauptidealring>> und Satz
  <math|<reference|hauptidealring-dann-faktoriell>> sind diese Ringe auch
  Hauptidealringe, dementsprechend faktoriell. Es stellt sich nun die Frage,
  ob diese Liste auch vollständig ist oder die Möglichkeit besteht, weitere
  Beispiele für faktorielle Ringe (äquivalent Hauptidealringe) zu finden, die
  allerdings nicht euklidisch sind.

  <\proposition>
    Es sei <math|d\<less\>0> eine quadratfreie ganze Zahl und
    <math|d\<equiv\>2,3 <pmod|4>>. Dann ist <math|<with|font|cal|O><rsub|d>>
    genau dann faktoriell, wenn <math|d\<in\><around*|{|-1,-2|}>>.
  </proposition>

  <\proof>
    Wie eben festgestellt, falls <math|d\<in\><around*|{|-1,-2|}>>, ist
    <math|<with|font|cal|O><rsub|d>> euklidisch und damit auch faktoriell.
    Sei also umgekehrt <math|d\<notin\><around*|{|-1,-2|}>> eine negative
    quadratfreie ganze Zahl. Insbesondere muss dann
    <math|d\<notin\><around*|{|-1,-2,-3,-7,-11|}>> sein, sodass aus Lemma
    <math|<reference|od-2-3-irreduzibel>> folgt, dass <math|2> irreduzibel in
    <math|<with|font|cal|O><rsub|d>> ist. Nehmen wir für einen Widerspruch
    an, dass <math|<with|font|cal|O><rsub|d>> faktoriell ist. Dann wäre
    <math|2> nach Satz <reference|faktoriell-irreduzibel-equiv-prim> ein
    Primelement von <math|<with|font|cal|O><rsub|d>>. Da <math|d\<equiv\>2,3
    <pmod|4>> ist aber <math|2> ein Teiler von

    <\equation*>
      d <around*|(|1-d|)>=<sqrt|d>\<cdot\><sqrt|d>\<cdot\><around*|(|1-<sqrt|d>|)>
      <around*|(|1+<sqrt|d>|)>,
    </equation*>

    also <math|2 \<mid\><sqrt|d>> oder <math|2 \<mid\>1\<pm\><sqrt|d>>. Das
    führt zum Widerspruch <math|<frac|1|2>
    <sqrt|d>\<in\><with|font|cal|O><rsub|d>> bzw.
    <math|<frac|1\<pm\><sqrt|d>|2>\<in\><with|font|cal|O><rsub|d>>. Somit ist
    <math|<with|font|cal|O><rsub|d>> nicht faktoriell.
  </proof>

  Das beantwortet unsere Frage also im Fall von <math|d\<equiv\>2,3
  <pmod|4>>. Was ist, wenn <math|d\<equiv\>1 <pmod|4>>? Diese Frage ist nicht
  ganz so leicht zu beantworten. Zunächst verallgemeinern wir das recht
  intuitive Lemma <reference|od-euklidisch-lemma>.

  <\definition>
    Sei <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>. Wir
    nennen <math|\<alpha\>> ein <em|inopportunes Element>, wenn
    <math|\<alpha\>\<notin\><with|font|cal|O><rsub|d>> und wenn für alle
    <math|\<gamma\>,\<delta\>\<in\><with|font|cal|O><rsub|d>> mit
    <math|\<alpha\> \<gamma\>-\<delta\>\<neq\>0> folgt, dass
    <math|<around*|\||N<rsub|d><around*|(|\<alpha\>
    \<gamma\>-\<delta\>|)>|\|>\<geq\>1>.
  </definition>

  <\lemma>
    <label|inopportune-elemente-lemma>Sei
    <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>> inopportun.
    Dann gilt:

    <\indent>
      (1) <math|<around*|\||N<rsub|d><around*|(|\<alpha\>|)>|\|>\<geq\>1>.

      (2) <math|\<alpha\>\<notin\><with|font|Bbb|Q>>.

      (3) Ist <math|\<beta\>\<in\><with|font|cal|O><rsub|d>>, dann ist
      <math|\<alpha\>+\<beta\>> inopportun.

      (4) Ist <math|\<beta\>\<in\><with|font|cal|O><rsub|d>> so, dass
      <math|\<alpha\> \<beta\>\<notin\><with|font|cal|O><rsub|d>>, dann ist
      <math|\<alpha\> \<beta\>> inopportun.
    </indent>
  </lemma>

  <\proof>
    (1) Offenbar ist <math|\<alpha\>\<neq\>0>. Per Definition gilt also
    <math|<around*|\||N<rsub|d><around*|(|\<alpha\>|)>|\|>=<around*|\||N<rsub|d><around*|(|\<alpha\>\<cdot\>1-0|)>|\|>\<geq\>1>.

    (2) Wäre <math|\<alpha\>\<in\><with|font|Bbb|Q>>, so wäre
    <math|0\<less\>\<alpha\>-\<lfloor\>\<alpha\>\<rfloor\>\<less\>1> und
    daher <math|<around*|\||N<rsub|d><around*|(|\<alpha\>-\<lfloor\>\<alpha\>\<rfloor\>|)>|\|>=<around*|(|\<alpha\>-\<lfloor\>\<alpha\>\<rfloor\>|)><rsup|2>\<less\>1>,
    sodass <math|\<alpha\>> nicht inopportun sein kann.

    (3) Sei <math|\<beta\>\<in\><with|font|cal|O><rsub|d>>. Offenbar ist
    <math|\<alpha\>+\<beta\>> nicht in <math|<with|font|cal|O><rsub|d>>. Sind
    <math|\<gamma\>,\<delta\>\<in\><with|font|cal|O><rsub|d> > mit
    <math|<around*|(|\<alpha\>+\<beta\>|)> \<gamma\>-\<delta\>\<neq\>0>, so
    folgt insbesondere <math|\<alpha\> \<gamma\>-<around*|(|\<delta\>-\<beta\>
    \<gamma\>|)>=<around*|(|\<alpha\>+\<beta\>|)>
    \<gamma\>-\<delta\>\<neq\>0> und damit

    <\equation*>
      <around*|\||N<rsub|d><around*|(|<around*|(|\<alpha\>+\<beta\>|)>
      \<gamma\>-\<delta\>|)>|\|>=<around*|\||N<rsub|d><around*|(|\<alpha\>
      \<gamma\>-<around*|(|\<delta\>-\<beta\> \<gamma\>|)>|)>|\|>\<geq\>1,
    </equation*>

    da <math|\<alpha\>> inopportun ist und <math|\<gamma\>,\<delta\>-\<beta\>
    \<gamma\>\<in\><with|font|cal|O><rsub|d>>.

    (4) Sei <math|\<beta\>\<in\><with|font|cal|O><rsub|d>> so, dass
    <math|\<alpha\> \<beta\>\<notin\><with|font|cal|O><rsub|d>>. Seien
    <math|\<gamma\>,\<delta\>\<in\><with|font|cal|O><rsub|d>> mit
    <math|\<alpha\> \<beta\> \<gamma\>-\<delta\>\<neq\>0>. Dann folgt aus
    <math|\<beta\> \<gamma\>\<in\><with|font|cal|O><rsub|d>>, dass

    <\equation*>
      <around*|\||N<rsub|d><around*|(|\<alpha\> \<beta\>
      \<gamma\>-\<delta\>|)>|\|>=<around*|\||N<rsub|d><around*|(|\<alpha\>
      <around*|(|\<beta\> \<gamma\>|)>-\<delta\>|)>|\|>\<geq\>1;
    </equation*>

    also ist <math|\<alpha\> \<beta\>> inopportun.
  </proof>

  Die Bezeichnung \Rinopportun\P ergibt auch Sinn, denn inopportune Elemente
  bezeichnen jene Elemente, deren Existenz wir in Lemma
  <reference|od-euklidisch-lemma> ausschlieÿen wollen. Folgendes Lemma ist
  also nicht weiter überraschend.

  <\lemma>
    <label|kein-inopportunes-element-dann-faktoriell>Es sei
    <math|d\<in\><with|font|Bbb|Z>\<setminus\><around*|{|0,1|}>> quadratfrei.
    Existiert kein inopportunes Element <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>,
    dann ist <math|<with|font|cal|O><rsub|d>> ein faktorieller Ring.
  </lemma>

  <\proof>
    Wir nehmen an, dass es keine inopportunen Elemente in
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> gibt und weiters, dass
    <math|<with|font|cal|O><rsub|d>> nicht faktoriell ist. Nach Satz
    <reference|faktoriell-irreduzibel-equiv-prim> existiert also ein
    irreduzibles Element <math|\<pi\>\<in\><with|font|cal|O><rsub|d>>, das
    nicht prim ist, i.e. es gibt auÿerdem
    <math|\<xi\>,\<eta\>\<in\><with|font|cal|O><rsub|d>>, sodass <math|\<pi\>
    \<mid\>\<xi\> \<eta\>>, aber <math|\<pi\>\<nmid\>\<xi\>> und
    <math|\<pi\>\<nmid\>\<eta\>>. Nehmen wir zusätzlich an, dass
    <math|<around*|\||N<rsub|d><around*|(|\<xi\>
    \<eta\>|)>|\|>\<in\><with|font|Bbb|N><rsub|0>> minimal ist. Wir
    definieren nun

    <\equation*>
      \<alpha\>\<assign\><choice|<tformat|<table|<row|<cell|\<xi\>
      \<pi\><rsup|-1><text|, falls ><around*|\||N<rsub|d><around*|(|\<xi\>|)>|\|>\<geq\><around*|\||N<rsub|d><around*|(|\<pi\>|)>|\|>,>>|<row|<cell|\<xi\><rsup|-1>
      \<pi\><text|, falls ><around*|\||N<rsub|d><around*|(|\<xi\>|)>|\|>\<less\><around*|\||N<rsub|d><around*|(|\<pi\>|)>|\|>.>>>>>
    </equation*>

    Dann ist <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>.
    Da <math|\<pi\>\<nmid\>\<xi\>>, ist <math|\<xi\>
    \<pi\><rsup|-1>\<notin\><with|font|cal|O><rsub|d>> und wäre
    <math|\<xi\><rsup|-1> \<pi\>\<in\><with|font|cal|O><rsub|d>>, i.e.
    <math|\<xi\> \<mid\>\<pi\>>, so würde <math|\<xi\>\<sim\>\<pi\>> folgen.
    In der Tat, da <math|\<pi\> \<mid\>\<xi\> \<eta\>>, aber
    <math|\<pi\>\<nmid\>\<eta\>>, muss <math|\<xi\>\<notin\><with|font|cal|O><rsub|d><rsup|\<ast\>>>
    gelten, sodass <math|\<xi\>\<sim\>\<pi\>> wegen der Irreduzibilität von
    <math|\<pi\>>. Also existiert eine Einheit
    <math|\<varepsilon\>\<in\><with|font|cal|O><rsub|d><rsup|\<ast\>>> mit
    <math|\<xi\>=\<varepsilon\> \<pi\>>, im Widerspruch zu
    <math|\<pi\>\<nmid\>\<xi\>>. Zusammengefasst gilt ergo
    <math|\<alpha\>\<notin\><with|font|cal|O><rsub|d>>. Nach Voraussetzung
    muss es also <math|\<gamma\>,\<delta\>\<in\><with|font|cal|O><rsub|d>>
    geben, sodass <math|0\<less\><around*|\||N<rsub|d><around*|(|\<alpha\>
    \<gamma\>-\<delta\>|)>|\|>\<less\>1>. Wir erhalten

    <math|<align*|<tformat|<table|<row|<cell|\<alpha\>=\<xi\>
    \<pi\><rsup|-1>\<Longrightarrow\><space|1em>>|<cell|0\<less\><around*|\||N<rsub|d><around*|(|\<xi\>
    \<gamma\> \<pi\><rsup|-1>-\<delta\>|)>|\|>\<less\>1\<Longrightarrow\><space|1em>0\<less\><around*|\||N<rsub|d><around*|(|\<xi\>
    \<gamma\>-\<delta\> \<pi\>|)>|\|>\<less\><around*|\||N<rsub|d><around*|(|\<pi\>|)>|\|>\<leq\><around*|\||N<rsub|d><around*|(|\<xi\>|)>|\|>,>>|<row|<cell|\<alpha\>=\<xi\><rsup|-1>
    \<pi\>\<Longrightarrow\><space|1em>>|<cell|0\<less\><around*|\||N<rsub|d><around*|(|\<xi\><rsup|-1>
    \<pi\> \<gamma\>-\<delta\>|)>|\|>\<less\>1\<Longrightarrow\><space|1em>0\<less\><around*|\||N<rsub|d><around*|(|\<pi\>
    \<gamma\>-\<delta\> \<xi\>|)>|\|>\<less\><around*|\||N<rsub|d><around*|(|\<xi\>|)>|\|>\<leq\><around*|\||N<rsub|d><around*|(|\<pi\>|)>|\|>.>>>>>>

    In beiden Fällen können wir also <math|\<varphi\>,\<psi\>\<in\><with|font|cal|O><rsub|d>>
    so wählen, dass <math|\<nu\>\<assign\>\<xi\> \<varphi\>-\<pi\> \<psi\>>
    die Abschätzung

    <\equation*>
      0\<less\><around*|\||N<rsub|d><around*|(|\<nu\>|)>|\|>\<less\>min<around*|{|<around*|\||N<rsub|d><around*|(|\<xi\>|)>|\|>,<around*|\||N<rsub|d><around*|(|\<pi\>|)>|\|>|}>
    </equation*>

    erfüllt. Da <math|<around*|\||N<rsub|d><around*|(|\<nu\>|)>|\|>\<less\><around*|\||N<rsub|d><around*|(|\<pi\>|)>|\|>>,
    folgt <math|\<pi\>\<nmid\>\<nu\>> und nach Annahme gilt auch
    <math|\<pi\>\<nmid\>\<eta\>> sowie <math|\<pi\>\<mid\>\<nu\> \<eta\>>.
    Das ist ein Widerspruch zur Minimalität von
    <math|<around*|\||N<rsub|d><around*|(|\<xi\> \<eta\>|)>|\|>>, da

    <\equation*>
      <around*|\||N<rsub|d><around*|(|\<nu\>
      \<eta\>|)>|\|>=<around*|\||N<rsub|d><around*|(|\<nu\>|)>|\|>
      <around*|\||N<rsub|d><around*|(|\<eta\>|)>|\|>\<less\><around*|\||N<rsub|d><around*|(|\<xi\>|)>|\|>
      <around*|\||N<rsub|d><around*|(|\<eta\>|)>|\|>=<around*|\||N<rsub|d><around*|(|\<xi\>
      \<eta\>|)>|\|>.
    </equation*>

    Also muss <math|<with|font|cal|O><rsub|d>> schon faktoriell sein.
  </proof>

  In der Praxis ist es schwierig nur mit Hilfe der Definition von
  inopportunen Elementen nachzuweisen, dass <math|<with|font|cal|O><rsub|d>>
  tatsächlich faktoriell ist, bedingt durch deren \Rkomplizierte\P Form.
  Allerdings haben wir dazu eine Lösung:

  <\lemma>
    <label|inopportunes-element-kanonische-form>Es sei
    <math|d\<in\><with|font|Bbb|Z>\<setminus\><around*|{|0,1|}>> quadratfrei.
    Ist <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
    inopportun, dann existiert ein inopportunes Element
    <math|\<alpha\><rprime|'>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
    der Form

    <\equation*>
      \<alpha\><rprime|'>=<frac|n-\<omega\><rsub|d>|p>
    </equation*>

    für eine Primzahl <math|p> und <math|n\<in\><with|font|Bbb|N><rsub|0>>
    mit <math|0\<leq\>n\<less\>p>.
  </lemma>

  <\proof>
    Sei <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
    inopportun mit <math|\<alpha\>=<frac|a+b \<omega\><rsub|d>|c>> für
    <math|a,b\<in\><with|font|Bbb|Z>> und <math|c\<in\><with|font|Bbb|N>> in
    gekürzter Form. Sei <math|p\<in\><with|font|Bbb|P>> ein Primteiler von
    <math|c> und <math|\<alpha\><rsub|1>\<assign\><frac|c|p>
    \<alpha\>=<frac|a+b \<omega\><rsub|d>|p>>. Da <math|\<alpha\>>
    vollständig gekürzt ist, folgt aus Lemma
    <reference|inopportune-elemente-lemma> (4), dass <math|\<alpha\><rsub|1>>
    inopportun ist. Falls <math|b \<mid\>p>, würde
    <math|<frac|b|p>\<in\><with|font|Bbb|Z>> folgen und daher wäre die
    rationale Zahl <math|<frac|a|p>=\<alpha\><rsub|1>-<frac|b|p>
    \<omega\><rsub|d>> nach Lemma <reference|inopportune-elemente-lemma> (3)
    inopportun, im Widerspruch zu Lemma <reference|inopportune-elemente-lemma>
    (2). Daher <math|<with|font-family|rm|ggT><around*|(|b,p|)>=1>. Nach dem
    Lemma von Bézout (Lemma <reference|lemma-von-bezout>) existieren also
    <math|x,y\<in\><with|font|Bbb|Z>> so, dass <math|b x-p y=-1>. Weil aus
    <math|\<alpha\><rsub|1> x\<in\><with|font|cal|O><rsub|d>> folgt, dass
    <math|p \<mid\>b x> und daher insbesondere der Widerspruch <math|p
    \<mid\>-1>, haben wir <math|\<alpha\><rsub|1>
    x\<notin\><with|font|cal|O><rsub|d>>. Sei

    <\equation*>
      \<alpha\><rsub|2>\<assign\>\<alpha\><rsub|1> x-y
      \<omega\><rsub|d>=<frac|a x+<around*|(|b x-p y|)>
      \<omega\><rsub|d>|p>=<frac|a x-\<omega\><rsub|d>|p>.
    </equation*>

    Weil <math|\<alpha\><rsub|1>> inopportun ist und <math|\<alpha\><rsub|1>
    x\<notin\><with|font|cal|O><rsub|d>>, ist <math|\<alpha\><rsub|1> x>
    inopportun und in weiterer Folge auch
    <math|\<alpha\><rsub|2>=\<alpha\><rsub|1> x-y \<omega\><rsub|d>>. Nach
    dem Divisionsalgorithmus existieren <math|n\<in\><with|font|Bbb|N><rsub|0>>
    und <math|z\<in\><with|font|Bbb|Z>> so, dass <math|a x=p z+n>. Dann ist
    <math|z=<frac|a x-n|p>> und

    <\equation*>
      \<alpha\><rsub|2>-z=<frac|a x-\<omega\><rsub|d>|p>-<frac|a
      x-n|p>=<frac|n-\<omega\><rsub|d>|p>
    </equation*>

    inopportun, wobei <math|p\<in\><with|font|Bbb|P>> und
    <math|0\<leq\>n\<less\>p>.
  </proof>

  Um zu zeigen, dass <math|<with|font|cal|O><rsub|d>> faktoriell ist, reicht
  es also aus, zu zeigen, dass kein inopportunes Element der Form
  <math|<frac|n-\<omega\><rsub|d>|p>> für eine Primzahl <math|p> und eine
  natürliche Zahl <math|0\<leq\>n\<less\>p> existiert. Wir haben bis jetzt
  noch nicht verwendet, dass <math|d\<less\>0> und <math|d\<equiv\>1
  <pmod|4>>. In diesem Fall ist <math|d=1-4 m> für ein
  <math|m\<in\><with|font|Bbb|N>> und <math|\<omega\><rsub|d>=<frac|1+<sqrt|d>|2>>.
  Für <math|d=-3,-7,-11> wissen wir bereits, dass
  <math|<with|font|cal|O><rsub|d>> euklidisch ist, wir können also
  <math|m\<geq\>4> annehmen. Das führt uns zu folgendem Satz.

  <\theorem>
    <label|od-ufd-kriterium>Sei <math|d=1-4 m> für
    <math|m\<in\><with|font|Bbb|N>,m\<geq\>4> und <math|d> quadratfrei. Dann
    ist <math|<with|font|cal|O><rsub|d>> genau dann faktoriell, wenn

    <\equation*>
      p<rsub|d><around*|(|n|)>=n<rsup|2>-n+m
    </equation*>

    für alle <math|n\<in\><around*|{|0,\<ldots\>,m-1|}>> eine Primzahl ist.
  </theorem>

  <\proof>
    <math|<around*|(|\<Leftarrow\>|)>> Wir führen einen Beweis durch
    Widerspruch. Nehmen wir an, dass <math|<with|font|cal|O><rsub|d>> nicht
    faktoriell ist. Dann existiert ein inopportunes Element
    <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>> nach Lemma
    <reference|kein-inopportunes-element-dann-faktoriell>, das o. B. d. A.
    von der Form <math|\<alpha\>=<frac|n-\<omega\><rsub|d>|p>> für
    <math|p\<in\><with|font|Bbb|P>> und <math|0\<leq\>n\<less\>p> ist (Lemma
    <reference|inopportunes-element-kanonische-form>).

    <space|1em>Wir zeigen nun, dass <math|p\<leq\>m-1>. Da <math|\<alpha\>>
    inopportun ist, ist

    <\equation*>
      n<rsup|2>-n+m=N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>\<geq\>N<rsub|d><around*|(|p|)>=p<rsup|2>.
    </equation*>

    Da <math|n\<less\>p> erhalten wir <math|p<rsup|2>\<leq\>n
    <around*|(|n-1|)>+m\<less\>p <around*|(|p-1|)>+m=p<rsup|2>-p+m>, also
    tatsächlich <math|p\<leq\>m-1>.

    <space|1em>Sei nun <math|0\<leq\>n\<less\>p\<leq\>m-1>. Dann ist
    <math|N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>=n<rsup|2>-n+m> nach
    Annahme eine Primzahl, sodass zusammen mit dem Faktum
    <math|p\<in\><with|font|Bbb|P>> folgt, dass entweder
    <math|p=N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>> oder
    <math|<with|font-family|rm|ggT><around*|(|p,N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>|)>=1>
    für jene <math|n>. Wäre <math|p=N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>>
    für ein <math|0\<leq\>n\<less\>p>, dann wäre auch

    <\equation*>
      0\<less\>N<rsub|d><around*|(|<frac|n-\<omega\><rsub|d>|p>|)>=<frac|N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>|N<rsub|d><around*|(|p|)>>=<frac|p|p<rsup|2>>\<less\>1,
    </equation*>

    ein Widerspruch zur Inopportunität von <math|\<alpha\>>. Somit haben wir
    <math|<with|font-family|rm|ggT><around*|(|p,N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>|)>=1>
    für alle <math|0\<leq\>n\<less\>p>. Es existieren also
    <math|x,y\<in\><with|font|Bbb|Z>> mit
    <math|N<rsub|d><around*|(|n-\<omega\><rsub|d>|)> x-p y=1> nach Lemma
    <reference|lemma-von-bezout>, sodass wir aus
    <math|N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>=<around*|(|n-\<omega\><rsub|d>|)>
    <around*|(|n-\<omega\><rsub|d>|)><rsup|\<ast\>>> die Abschätzung

    <\equation*>
      <frac|n-\<omega\><rsub|d>|p> <around*|(|n-\<omega\><rsub|d>|)><rsup|\<ast\>>
      x-y=<frac|1|p>\<less\>1
    </equation*>

    erhalten. Da <math|<around*|(|n-\<omega\><rsub|d>|)><rsup|\<ast\>> x> und
    <math|y> ganzzahlig sind, liefert das ebenfalls den Widerspruch
    <math|0\<less\>N<rsub|d><around*|(|<frac|n-\<omega\><rsub|d>|p>
    <around*|(|n-\<omega\><rsub|d><rsup|\<ast\>>|)> x-y|)>\<less\>1> zur
    Inopportunität von <math|\<alpha\>>.

    <math|<around*|(|\<Rightarrow\>|)>> Sei <math|<with|font|cal|O><rsub|d>>
    faktoriell. Wir zeigen zunächst, dass <math|n-\<omega\><rsub|d>> in
    <math|<with|font|cal|O><rsub|d>> für alle
    <math|n\<in\><around*|{|0,\<ldots\>,m-1|}>> irreduzibel ist. Da
    <math|<frac|1|k> <around*|(|n-\<omega\><rsub|d>|)>\<notin\><with|font|cal|O><rsub|d>>
    für <math|k\<in\><with|font|Bbb|Z>\<setminus\><around*|{|\<pm\>1|}>>,
    teilt kein <math|k\<in\><with|font|Bbb|Z>\<setminus\><around*|{|\<pm\>1|}>>
    die Zahl <math|n-\<omega\><rsub|d>>. Sei nun
    <math|n-\<omega\><rsub|d>=\<alpha\> \<beta\>> für
    <math|\<alpha\>,\<beta\>\<in\><with|font|cal|O><rsub|d>\<setminus\><around*|(|<with|font|Bbb|Z>\<setminus\><around*|{|\<pm\>1|}>|)>>
    mit <math|\<alpha\>=a+b \<omega\><rsub|d>> und <math|\<beta\>=e+f
    \<omega\><rsub|d>>, wobei <math|b\<neq\>0,f\<neq\>0>; wir führen das zu
    einem Widerspruch. Dann ist aber

    <\equation*>
      N<rsub|d><around*|(|\<alpha\>|)>=<around*|(|a+<frac|b|2>|)><rsup|2>+<around*|(|m-<frac|1|4>|)>
      b<rsup|2>\<geq\>m-<frac|1|4>
    </equation*>

    und weil <math|N<rsub|d><around*|(|\<alpha\>|)>\<in\><with|font|Bbb|Z>>
    insbesondere <math|N<rsub|d><around*|(|\<alpha\>|)>\<geq\>m>; ein
    ähnliches Argument zeigt, dass <math|N<rsub|d><around*|(|\<beta\>|)>\<geq\>m>
    und daraus folgt

    <\equation*>
      m<rsup|2>\<leq\>N<rsub|d><around*|(|\<alpha\>|)>
      N<rsub|d><around*|(|\<beta\>|)>=N<rsub|d><around*|(|\<alpha\>
      \<beta\>|)>=N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>=n<rsup|2>-n+m\<less\>m<rsup|2>-m+m=m<rsup|2>,
    </equation*>

    ein Widerspruch. Somit ist <math|n-\<omega\><rsub|d>> irreduzibel. Wäre
    <math|p<rsub|d><around*|(|n|)>=n<rsup|2>-n+m> also nicht prim für ein
    <math|n\<in\><around*|{|0,\<ldots\>,m-1|}>>, so gäbe es Zerlegungen

    <\equation*>
      <big|prod><rsub|i=1><rsup|k>p<rsub|i>=n<rsup|2>-n+m=N<rsub|d><around*|(|n-\<omega\><rsub|d>|)>=<around*|(|n-\<omega\><rsub|d>|)>
      <around*|(|n-\<omega\><rsub|d><rsup|\<ast\>>|)>
    </equation*>

    für Primzahlen <math|p<rsub|1>,\<ldots\>,p<rsub|k>> und <math|k\<geq\>2>,
    im Widerspruch dazu, dass <math|<with|font|cal|O><rsub|d>> faktoriell
    ist.
  </proof>

  Da <math|p<rsub|d><around*|(|0|)>=p<rsub|d><around*|(|1|)>=m>, reicht es,
  die Bedingungen von Satz <reference|od-ufd-kriterium> für alle Primzahlen
  <math|1\<leq\>n\<leq\>m-2> zu prüfen. Manuelle Berechnungen zeigen dann,
  dass in den Fällen

  <\equation*>
    d=-19,<space|1em>d=-43,<space|1em>d=-67,<space|1em>d=-163
  </equation*>

  der Ring <math|<with|font|cal|O><rsub|d>> sogar faktoriell ist. Gibt es
  noch mehr Beispiele?

  <\theorem>
    Sei <math|d\<less\>0> eine quadratfreie Zahl. Dann ist
    <math|<with|font|cal|O><rsub|d>> genau dann faktoriell, falls

    <\equation*>
      d\<in\><around*|{|-1,-2,-3,-7,-11,-19,-43,-67,-163|}>.
    </equation*>
  </theorem>

  <\proof>
    Siehe<nbsp><cite|Cox1989>, Satz 7.30.
  </proof>

  Damit haben wir für <math|d\<less\>0> vollständig geklärt, wann
  <math|<with|font|cal|O><rsub|d>> (norm-)euklidisch/Hauptidealring/faktoriell/noethersch/Ring
  mit Faktorzerlegung ist. Auÿerdem haben wir Gegenbeispiele für faktorielle
  Ringe, die nicht euklidisch sind (siehe Kästchen <reference|kaestchen-3>)
  gewonnen.

  <section|Lokalisierungen und Quotientenkörper>

  <\proposition>
    <label|zx-faktoriell><math|<with|font|Bbb|Z><around*|[|X|]>> ist
    faktoriell.
  </proposition>

  <\proof>
    Sei <math|f\<in\><with|font|Bbb|Z><around*|[|X|]>> beliebig, nicht Null,
    mit <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i> x<rsup|i>> für
    <math|a<rsub|0>,\<ldots\>,a<rsub|n>\<in\><with|font|Bbb|Z>>. Sei
    <math|a\<assign\><with|font-family|rm|ggT><around*|(|a<rsub|0>,\<ldots\>,a<rsub|n>|)>>,
    betrachtet als konstantes Polynom. Dann können wir <math|f=a g> für
    primitives <math|g\<in\><with|font|Bbb|Z><around*|[|X|]>> schreiben und
    auÿerdem <math|a=<big|prod><rsub|j=1><rsup|k>p<rsub|j>> für Primzahlen
    <math|p<rsub|1>,\<ldots\>,p<rsub|k>\<in\><with|font|Bbb|P>>. In
    <math|<with|font|Bbb|Q><around*|[|X|]>> können wir auch
    <math|g=<big|prod><rsub|j=1><rsup|\<ell\>>q<rsub|j>> in irreduzible
    Polynome <math|q<rsub|1>,\<ldots\>,q<rsub|\<ell\>>\<in\><with|font|Bbb|Q><around*|[|X|]>>
    zerlegen. Da <math|g> primitiv ist, folgt aus dem Lemma von Gauÿ
    (Korollar <reference|primitiv-irreduzibel-polynom-umformulierung>), dass
    wir für jedes <math|q<rsub|j>>, <math|j=1,\<ldots\>,\<ell\>>, ein
    primitives Polynom <math|q<rprime|'><rsub|j>\<in\><with|font|Bbb|Z><around*|[|X|]>>
    mit <math|q<rsub|j>\<sim\>q<rsub|j><rprime|'>> finden, sodass
    <math|g=<big|prod><rsub|j=1><rsup|\<ell\>>q<rprime|'><rsub|j>>. Damit ist
    <math|f=<around*|(|<big|prod><rsub|j=1><rsup|k>p<rsub|j>|)>
    <around*|(|<big|prod><rsub|j=1><rsup|\<ell\>>q<rsub|j><rprime|'>|)>> eine
    eindeutig bestimmte Zerlegung von <math|f> in irreduzible Elemente aus
    <math|<with|font|Bbb|Z><around*|[|X|]>>.
  </proof>

  Das bringt unsere Übersicht auf folgende Form:

  <\padded-center>
    <tabular*|<tformat|<cwith|1|1|1|1|cell-valign|c>|<cwith|1|1|3|3|cell-valign|c>|<cwith|1|1|5|5|cell-valign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|3|3|5|5|cell-valign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|5|5|cell-rborder|1ln>|<table|<row|<cell|<math|R>
    ist euklidisch>|<cell|<subtable|<tformat|<table|<row|<cell|<math|\<Longrightarrow\>>>>|<row|<cell|<math|<neg|\<Longleftarrow\>>>>>>>>>|<cell|<math|R>
    ist ein Hauptidealring>|<cell|<subtable|<tformat|<table|<row|<cell|<math|\<Longrightarrow\>>>>|<row|<cell|<math|<neg|\<Longleftarrow\>>>>>>>>>|<cell|<math|R>
    ist faktoriell>>|<row|<cell|>|<cell|>|<cell|<math|<neg|\<Uparrow\>><space|1em>\<Downarrow\>>>|<cell|>|<cell|<math|<neg|\<Uparrow\>><space|1em>\<Downarrow\>>>>|<row|<cell|>|<cell|>|<cell|<math|R>
    ist noethersch>|<cell|<subtable|<tformat|<table|<row|<cell|<math|\<Longrightarrow\>>>>|<row|<cell|<math|<neg|\<Longleftarrow\>>>>>>>>>|<cell|<math|R>
    ist ein Ring mit Faktorzerlegung>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<math|<neg|\<Uparrow\>><space|1em>\<Downarrow\>>>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|<math|R>
    ist ein Integritätsbereich>>>>>
  </padded-center>

  Allerdings sind wir noch nicht fertig: Der Beweis von Proposition
  <math|<reference|zx-faktoriell>> erweckt stark den Anschein, dass sich eine
  weitere (strukturelle) Verallgemeinerung verbirgt. Um dem auf den Grund zu
  gehen, wollen wir unser Augenmerk auf Ideale in Ringen (insbesondere
  Primideale) lenken. Zwei Beobachtungen dazu:

  <\indent>
    (1) Im Beweis von Proposition <reference|zx-faktoriell> sowie einigen
    anderen Aussagen zu <math|<with|font|Bbb|Z><around*|[|X|]>>, haben wir
    die Eigenschaften von <math|<with|font|Bbb|Q><around*|[|X|]>> verwendet
    und gewissermaÿen einen \RÜbergang\P von <math|<with|font|Bbb|Z>> nach
    <math|<with|font|Bbb|Q>> gemacht.

    (2) Ist <math|<around*|(|0|)>> ein maximales Ideal eines Ringes <math|R>,
    so ist <math|R> auch ein Körper. Insbesondere ist <math|R> Beispiel eines
    <em|lokalen Ringes> (siehe Definition
    <reference|lokaler-ring-definition>). Der gesuchte Übergang von
    <math|<with|font|Bbb|Z>> nach <math|<with|font|Bbb|Q>> könnte also genau
    jenem Übergang von einem Ring in seine \RLokalisierung\P entsprechen (cf.
    andere Konstruktionen mit Ringen, wie
    <math|R\<rightsquigarrow\>R<around*|[|X|]>> bzw.
    <math|R\<rightsquigarrow\>R/I>).
  </indent>

  <\lemma>
    <label|lokaler-ring-bedingungen>Sei <math|R> ein kommutativer Ring mit
    Eins. Dann sind die folgenden Bedingungen äquivalent:

    <\indent>
      (1) <math|R> hat genau ein maximales Ideal <math|I>.

      (2) <math|R\<setminus\>R<rsup|\<ast\>>> ist ein Ideal von <math|R>.

      (3) <math|R> hat genau ein maximales Ideal <math|I> mit
      <math|1+I\<subseteq\>R<rsup|\<ast\>>>.
    </indent>
  </lemma>

  <\proof>
    <math|<around*|(|1|)>\<Rightarrow\><around*|(|2|)>> Setzen wir voraus,
    dass <math|R> genau ein maximales Ideal <math|I> hat. Wir zeigen, dass
    <math|I=R\<setminus\>R<rsup|\<ast\>>>. Da <math|I> maximal ist, ist
    <math|I> ein echtes Ideal, ergo <math|I\<subseteq\>R\<setminus\>R<rsup|\<ast\>>>.
    Nehmen wir nun für einen Widerspruch an, dass
    <math|I\<subsetneq\>R\<setminus\>R<rsup|\<ast\>>>, i.e. es existiert
    <math|a\<in\>R\<setminus\>R<rsup|\<ast\>>> mit <math|a\<notin\>I>. Dann
    folgt <math|I\<subsetneq\>I+<around*|(|a|)>=R> wegen der Maximalität von
    <math|I>. Also können wir <math|1=r+a b> für <math|r\<in\>I> und
    <math|b\<in\>R> schreiben. Es folgt, dass <math|a b=1-r\<notin\>I> und da
    <math|a> per Annahme keine Einheit ist, ist auch <math|1-r> keine
    Einheit. Sei <math|<with|font|cal|I>\<assign\><around*|{|J\<trianglelefteqslant\>R
    <around*|\|||\<nobracket\>> <around*|(|1-r|)>\<subseteq\>J|}>>. Aus dem
    Lemma von Zorn folgt, dass <math|<with|font|cal|I>> ein maximales Element
    <math|J> hat; insbesondere ist <math|J> ein maximales Ideal mit
    <math|<around*|(|1-r|)>\<subseteq\>J>, sodass <math|I\<neq\>J>. Da wir
    <math|I> aber als einziges maximales Ideal von <math|R> vorausgesetzt
    haben, ist das ein Widerspruch. Es folgt
    <math|I=R\<setminus\>R<rsup|\<ast\>>>.

    <math|<around*|(|2|)>\<Rightarrow\><around*|(|3|)>> Sei
    <math|I\<assign\>R\<setminus\>R<rsup|\<ast\>>>; dann ist <math|I> nach
    Annahme ein maximales Ideal. Ist <math|r\<in\>I> beliebig, so folgt
    <math|1+r\<notin\>I>, da <math|I> ein echtes Ideal ist. Insbesondere gilt
    <math|1+r\<notin\>R\<setminus\>R<rsup|\<ast\>>>. Folglich ist <math|1+r>
    eine Einheit von <math|R> und <math|1+I\<subseteq\>R<rsup|\<ast\>>>.

    <math|<around*|(|3|)>\<Rightarrow\><around*|(|1|)>> Sei <math|I\<neq\>J>
    ein anderes maximales Ideal von <math|R>. Dann gilt
    <math|I\<subseteq\>I+J>, also <math|I+J=R> nach der Maximalität von
    <math|I>. Das heiÿt es gibt <math|r<rsub|I>\<in\>I,r<rsub|J>\<in\>J>
    sodass <math|r<rsub|I>+r<rsub|J>=1\<in\>R>. Insbesondere folgt
    <math|r<rsub|J>=1-r<rsub|I>\<in\>1+I\<subseteq\>R<rsup|\<ast\>>>, d.h.
    <math|J=R>, ein Widerspruch. Es folgt, dass <math|I> das eindeutige
    maximale Ideal von <math|R> ist.
  </proof>

  <\definition>
    <label|lokaler-ring-definition>Sei <math|R> ein kommutativer Ring mit
    Eins. Erfüllt <math|R> eine (und damit alle) Bedingung aus Lemma
    <reference|lokaler-ring-bedingungen>, so nennen wir <math|R> einen
    <em|lokalen Ring>.
  </definition>

  <\example>
    Erinnern wir uns zurück an den Ring der formalen Potenzreihen aus
    Beispiel <reference|vervollständigung-von-körpern>. Ist <math|R=K> ein
    Körper, so ist der Ring <math|K<around*|[|<around*|[|X|]>|]>> der
    formalen Potenzreihen über <math|K> ein lokaler Ring.

    <space|1em>Sei <math|f\<assign\><big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>
    X<rsup|i>> eine Potenzreihe mit Koeffizienten
    <math|a<rsub|i>\<in\>K,i\<geq\>0>. Wir wollen zeigen, dass falls
    <math|f\<notin\><around*|(|X|)>> gilt, <math|f> Einheit ist. Dann folgt,
    dass <math|<around*|(|X|)>> die Menge der Nicht-Einheiten in
    <math|K<around*|[|<around*|[|X|]>|]>> ist, der Ring also lokal ist. In
    der Tat können wir das multiplikative Inverse von <math|f> explizit
    angeben, indem wir

    <\equation*>
      b<rsub|0>\<assign\>a<rsub|0><rsup|-1>,<space|1em>b<rsub|i>\<assign\>-a<rsub|0><rsup|-1>
      <around*|(|<big|sum><rsub|j=0><rsup|i-1>b<rsub|j> a<rsub|i-j>|)>
    </equation*>

    für <math|i\<in\><with|font|Bbb|N>> setzen, wobei
    <math|a<rsub|0>\<neq\>0>, da <math|f\<notin\><around*|(|X|)>>. Setzen wir
    <math|g\<assign\><big|sum><rsub|i=0><rsup|\<infty\>>b<rsub|i> X<rsup|i>>,
    so gilt <math|f g=1>. In der Tat, ist <math|i\<gtr\>0>, haben wir
    <math|a<rsub|0> b<rsub|i>=-<big|sum><rsub|j=0><rsup|i-1>b<rsub|j>
    a<rsub|i-j>>, d.h. <math|<big|sum><rsub|j=0><rsup|i>a<rsub|i-j>
    b<rsub|j>=0>, was genau dem <math|i>-ten Koeffizienten des Produkts
    <math|f g> entspricht. Da <math|a<rsub|0> b<rsub|0>=1>, ist <math|f> also
    tatsächlich Einheit.
  </example>

  <\definition>
    Sei <math|R> ein kommutativer Ring mit Eins. Wir nennen eine Teilmenge
    <math|S\<subseteq\>R> <em|multiplikativ>, falls <math|1\<in\>S> und aus
    <math|r,s\<in\>S> auch <math|r s\<in\>S> folgt.
  </definition>

  <\lemma>
    <label|multiplikative-teilmenge-primideal>Sei <math|R> ein kommutativer
    Ring mit Eins und <math|I\<trianglelefteqslant\>R> ein Ideal von
    <math|R>. Dann ist <math|I> genau dann ein Primideal, wenn sein
    Komplement <math|S\<assign\>R\<setminus\>I> eine multiplikative Teilmenge
    von <math|R> ist.
  </lemma>

  <\proof>
    Nehmen wir zunächst an, dass <math|S> multiplikativ ist. Da per
    Definition dann <math|1\<in\>S>, folgt dass <math|I> ein echtes Ideal
    ist. Seien <math|a,b\<in\>R> mit <math|a b\<in\>I> und
    <math|a\<notin\>I>; wir wollen zeigen, dass <math|b\<in\>I>. In der Tat,
    aus <math|b\<notin\>I> folgt <math|a,b\<in\>S> und damit <math|a
    b\<in\>S> wegen der Multiplikativität von <math|S>, ein Widerspruch zu
    <math|a b\<in\>I>. Also <math|b\<in\>I>, i.e. <math|I> ist ein Primideal.

    <space|1em>Umgekehrt, sei <math|I> ein Primideal und seien
    <math|a,b\<in\>S>. Angenommen, <math|a b\<in\>I>. Da <math|I> prim ist,
    folgt <math|a\<in\>I> oder <math|b\<in\>I>; beide Fälle liefern einen
    Widerspruch zu <math|a,b\<in\>S> und somit muss <math|a b\<notin\>I>
    gelten, i.e. <math|a b\<in\>S>. Da <math|I> ein Primideal ist, folgt
    <math|1\<notin\>I>, d.h. <math|1\<in\>S> und <math|S> ist multiplikativ.
  </proof>

  <\example>
    (1) Sei <math|R=<with|font|Bbb|Z>> und <math|S=<around*|{|2<rsup|k>
    <around*|\|||\<nobracket\>> k\<in\><with|font|Bbb|N><rsub|0>|}>=<around*|{|1,2,4,\<ldots\>|}>>.
    Dann ist <math|S> eine multiplikative Teilmenge von <math|R>.

    (2) Sei <math|R=<with|font|Bbb|Z>> und <math|S=<around*|{|1|}>>. Dann ist
    <math|S> offenbar multiplikativ, aber
    <math|R\<setminus\>S=<with|font|Bbb|Z>\<setminus\><around*|{|1|}>> ist
    kein Ideal. Da <math|R\<setminus\>S> kein Ideal ist, steht das nicht im
    Widerspruch zur Aussage von Lemma <reference|multiplikative-teilmenge-primideal>.
  </example>

  Die vorhin angedeutete Lokalisierung wollen wir nun formal aufschreiben.

  <\definition>
    Sei <math|R> ein kommutativer Ring mit Eins nicht der Nullring. Sei
    auÿerdem <math|S\<subseteq\>R> eine multiplikative Teilmenge von
    <math|R>. Wir definieren die Relation \R<math|\<approx\>>\P auf
    <math|R\<times\>S> durch

    <\equation*>
      <around*|(|a,s|)>\<approx\><around*|(|b,t|)><space|1em>:\<Leftrightarrow\><space|1em>\<exists\>u\<in\>S
      : u <around*|(|a t-b s|)>=0.
    </equation*>
  </definition>

  <\lemma>
    Sei <math|R> ein kommutativer Ring mit Eins, <math|S\<subseteq\>R> eine
    multiplikative Teilmenge. Dann ist \R<math|\<approx\>>\P eine
    Äquivalenzrelation auf <math|R\<times\>S>.
  </lemma>

  <\proof>
    Offenbar ist \R<math|\<approx\>>\P reflexiv und symmetrisch. Es verbleibt
    noch die Transitivität zu zeigen. Seien
    <math|<around*|(|a,s|)>,<around*|(|b,t|)>,<around*|(|c,r|)>\<in\>R\<times\>S>
    mit <math|<around*|(|a,s|)>\<approx\><around*|(|b,t|)>> und
    <math|<around*|(|b,t|)>\<approx\><around*|(|c,r|)>>. Dann existieren
    <math|u,v\<in\>S> mit

    <\equation*>
      u <around*|(|a t-b s|)>=0,<space|1em>v <around*|(|b r-c t|)>=0.
    </equation*>

    Daraus folgt <math|u r v <around*|(|a t-b s|)>=0> und <math|v s u
    <around*|(|b r-c t|)>=0> und somit <math|a t r u v=b s r u v=c t s u v>,
    d.h. <math|u v t <around*|(|a r-c s|)>=0>. Da <math|S> multiplikativ ist,
    ist auch <math|u v t\<in\>S> und es folgt
    <math|<around*|(|a,s|)>\<approx\><around*|(|c,r|)>>, wie gewünscht.\ 
  </proof>

  Ist <math|<around*|(|a,s|)>\<in\>R\<times\>S>, so schreiben wir suggestiv
  <math|<frac|a|s>> für die von <math|<around*|(|a,s|)>> induzierte
  Äquivalenzklasse bezüglich \R<math|\<approx\>>\P. Es gilt nämlich:

  <\definition>
    Die Menge

    <\equation*>
      S<rsup|-1> R\<assign\><around*|{|<frac|a|s> <around*|\|||\<nobracket\>>
      <around*|(|a,s|)>\<in\>R\<times\>S|}>
    </equation*>

    mit den Operationen

    <\equation*>
      <frac|a|s>+<frac|b|t>\<assign\><frac|a t+b s|s
      t>,<space|1em><frac|a|s>\<cdot\><frac|b|t>\<assign\><frac|a\<cdot\>b|s\<cdot\>t>
    </equation*>

    definiert einen kommutativen Ring mit Eins, genannt \R<em|Ring der Brüche
    von <math|R> bezüglich <math|S>>\P.
  </definition>

  Es ist klar, welche Elemente von <math|S<rsup|-1> R> das Nullelement bzw.
  das Einselement darstellen. Wir schlieÿen ab jetzt aus, dass
  <math|0\<in\>S>, um den Spezialfall zu vermeiden, dass <math|S<rsup|-1> R>
  der Nullring ist. Auÿerdem erhalten wir wieder einen Homormophismus
  <math|\<varphi\><rsub|S> :R\<rightarrow\>S<rsup|-1> R>, der jedes Element
  <math|r\<in\>R> an den Bruch <math|\<varphi\><rsub|S><around*|(|r|)>\<assign\><frac|r|1>>
  schickt. Es gilt <math|ker \<varphi\><rsub|S>=<around*|{|r\<in\>R
  <around*|\|||\<nobracket\>> \<exists\>s\<in\>S :s r=0|}>>; insbesondere ist
  <math|\<varphi\><rsub|S>> also eine isomorphe Einbettung, sofern <math|R>
  auch nullteilerfrei ist.

  <\example>
    (1) Warum lassen wir in der Definition von \R<math|\<approx\>>\P
    Multiplikation mit <math|u\<in\>S> zu? Sei zunächst
    \R<math|<wide|\<approx\>|\<bar\>>>\P auf <math|R\<times\>S> definiert
    durch

    <\equation*>
      <around*|(|a,s|)><wide|\<approx\>|\<bar\>><around*|(|b,t|)><space|1em>:\<Leftrightarrow\><space|1em>a
      t-b s=0.
    </equation*>

    Falls <math|R> ein Integritätsbereich ist und <math|0\<notin\>S>, sind
    die Relationen \R<math|\<approx\>>\P und
    \R<math|<wide|\<approx\>|\<bar\>>>\P gleich. Ist <math|R> allerdings
    nicht nullteilerfrei, verletzen wir mit dieser vereinfachten Version die
    Transitivität.

    <space|1em>Sei beispielsweise <math|R=<with|font|Bbb|Z>/6
    <with|font|Bbb|Z>> und <math|S=<around*|{|1,2,4|}>>. \ Dann gilt:

    <\equation*>
      <around*|(|3,1|)><wide|\<approx\>|\<bar\>><around*|(|0,2|)>,<space|1em><around*|(|0,2|)><wide|\<approx\>|\<bar\>><around*|(|0,1|)>,<space|1em><around*|(|3,1|)><neg|<wide|\<approx\>|\<bar\>>><around*|(|0,1|)>.
    </equation*>

    Andererseits haben wir

    <\equation*>
      <around*|(|3,1|)>\<approx\><around*|(|0,2|)>,<space|1em><around*|(|0,2|)>\<approx\><around*|(|0,1|)>,<space|1em><around*|(|3,1|)>\<approx\><around*|(|0,1|)>.
    </equation*>

    (2) Der Ring der Brüche aus Punkt (1) weist einige kuriose Eigenschaften
    auf. Zunächst ist der Homomorphismus <math|\<varphi\><rsub|S>
    :R\<rightarrow\>S<rsup|-1> R> nicht injektiv, da (wie wir auch oben
    gesehen haben) in <math|S<rsup|-1> R> <math|0=3> gilt. Man kann zeigen,
    dass in diesem Fall <math|S<rsup|-1> R\<cong\><with|font|Bbb|Z>/3
    <with|font|Bbb|Z>>.

    (3) Es gilt <math|S<rsup|-1> R=<around*|{|0|}>> genau dann, wenn
    <math|0\<in\>S>. Gilt nämlich <math|<frac|0|1>=<frac|1|1>> in
    <math|S<rsup|-1> R>, so existiert <math|u\<in\>S> mit
    <math|u=u<around*|(|1\<cdot\>1-0\<cdot\>1|)>=0>, d.h. <math|0\<in\>S>.
    Die Umkehrung folgt unmittelbar.

    (4) Die Zuordnung <math|S\<mapsto\>S<rsup|-1> R> ist nicht injektiv. Sei
    <math|R=<with|font|Bbb|Z>>, sei <math|S=<around*|{|6<rsup|n>
    <around*|\|||\<nobracket\>> n\<in\><with|font|Bbb|N><rsub|0>|}>> und
    <math|T=<around*|{|2<rsup|n>\<cdot\>3<rsup|m> <around*|\|||\<nobracket\>>
    m,n\<in\><with|font|Bbb|N><rsub|0>|}>>. Dann gilt offenbar
    <math|S\<neq\>T>, aber <math|S<rsup|-1> R=T<rsup|-1> R>.
  </example>

  <\definition>
    Es sei <math|R> ein kommutativer Ring mit Eins und nicht der Nullring.
    Sei <math|I\<in\><with|font-family|rm|Spec> R>; dann ist
    <math|R\<setminus\>I> nach Lemma <reference|multiplikative-teilmenge-primideal>
    multiplikativ. Wir nennen

    <\equation*>
      R<rsub|I>\<assign\>S<rsup|-1> R=<around*|(|R\<setminus\>I|)><rsup|-1> R
    </equation*>

    die <em|Lokalisierung von <math|R> bei <math|I>>.
  </definition>

  Bevor wir uns Beispiele ansehen, untersuchen wir noch einige elementare
  Eigenschaften von Lokalisierungen.

  <\lemma>
    <label|einheiten-lokalisierung>Sei <math|R> ein kommutativer Ring mit
    Eins und nicht der Nullring. Sei <math|I> ein Primideal. Dann ist
    <math|<frac|a|s>\<in\><around*|(|R<rsub|I>|)><rsup|\<ast\>>> genau dann,
    wenn <math|a\<notin\>I>.
  </lemma>

  <\proof>
    Falls <math|<frac|a|s>> eine Einheit von <math|R<rsub|I>> ist, so
    existiert <math|<frac|b|t>\<in\>R<rsub|I>> mit

    <\equation*>
      <frac|a b|s t>=<frac|a|s>\<cdot\><frac|b|t>=1,
    </equation*>

    d.h. es existiert <math|u\<in\>R\<setminus\>I> mit <math|u <around*|(|a
    b-s t|)>=0>. Weil <math|R\<setminus\>I> multiplikativ ist, folgt <math|u
    a b=u s t\<in\>R\<setminus\>I> und daher auÿerdem <math|a\<notin\>I>, wie
    gewünscht. Ist umgekehrt <math|a\<notin\>I>, so ist
    <math|a\<in\>R\<setminus\>I> und daher <math|<frac|s|a>\<in\>R<rsub|I>>
    mit \ <math|<frac|a|s>\<cdot\><frac|s|a>=1>.
  </proof>

  Eine weitere wichtige Folgerung:

  <\corollary>
    <label|lokalisierung-ist-lokal>Sei <math|R> ein kommutativer Ring mit
    Eins und nicht der Nullring. Sei <math|I> ein Primideal. Dann ist
    <math|R<rsub|I>> ein lokaler Ring.
  </corollary>

  <\proof>
    Nach Lemma <reference|einheiten-lokalisierung> ist
    <math|R<rsub|I>\<setminus\>R<rsub|I><rsup|\<ast\>>=<around*|{|<frac|a|s>
    <around*|\|||\<nobracket\>> a\<in\>I|}>>. Da <math|I> ein Ideal von
    <math|R> ist, ist <math|R<rsub|I>\<setminus\>R<rsub|I><rsup|\<ast\>>> ein
    Ideal von <math|R<rsub|I>>. Somit ist <math|R<rsub|I>> nach Lemma
    <reference|lokaler-ring-bedingungen> ein lokaler Ring.
  </proof>

  <\example>
    (1) Sei <math|p\<in\><with|font|Bbb|P>> eine Primzahl. Dann ist
    <math|<with|font|Bbb|Z><rsub|<around*|(|p|)>>=<around*|{|<frac|a|b>\<in\><with|font|Bbb|Q>
    <around*|\|||\<nobracket\>> p\<nmid\>b|}>> per Definition und nach Lemma
    <reference|einheiten-lokalisierung> gilt weiterhin
    <math|<with|font|Bbb|Z><rsub|<around*|(|p|)>><rsup|\<ast\>>=<around*|{|<frac|a|b>\<in\><with|font|Bbb|Q>
    <around*|\|||\<nobracket\>> p\<nmid\>a,p\<nmid\>b|}>>. Da
    <math|<with|font|Bbb|Z><rsub|<around*|(|p|)>>> nach Korollar
    <reference|lokalisierung-ist-lokal> ein lokaler Ring ist, hat
    <math|<with|font|Bbb|Z><rsub|<around*|(|p|)>>> nur ein maximales Ideal
    und dieses Ideal ist <math|<with|font|Bbb|Z><rsub|<around*|(|p|)>><rsup|\<ast\>>>.

    (2) Wir wollen alle Unterringe von <math|<with|font|Bbb|Q>>, die
    <math|<with|font|Bbb|Z>> enthalten, finden. Sei
    <math|<with|font|Bbb|Z>\<subseteq\>R\<subseteq\><with|font|Bbb|Q>> ein
    derartiger Ring. Dann ist die Menge

    <\equation*>
      S\<assign\><around*|{|b\<in\><with|font|Bbb|N>
      <around*|\|||\<nobracket\>> \<exists\>a\<in\><with|font|Bbb|Z>
      :<frac|a|b>\<in\>R,<hspace|0.5em><with|font-family|rm|ggT><around*|(|a,b|)>=1|}>
    </equation*>

    nicht leer. Wir zeigen, dass <math|S> multiplikativ ist und
    <math|R=S<rsup|-1> <with|font|Bbb|Z>>. Sei <math|b\<in\>S> beliebig und
    <math|<frac|a|b>\<in\>R> mit <math|<with|font-family|rm|ggT><around*|(|a,b|)>=1>;
    dann gibt es <math|x,y\<in\><with|font|Bbb|Z>> mit <math|a x+b y=1>,
    insbesondere <math|<frac|a|b> x+y=<frac|1|b>>, sodass
    <math|<frac|1|b>\<in\>R>. Also ist <math|<frac|1|b>\<in\>R> für alle
    <math|b\<in\>S>. Daraus folgt unmittelbar, dass <math|S> multiplikativ
    ist und <math|R=S<rsup|-1> <with|font|Bbb|Z>>.
  </example>

  <\corollary>
    Sei <math|R> ein Integritätsbereich. Dann ist die Lokalisierung von
    <math|R> bei <math|<around*|(|0|)>> ein Körper.
  </corollary>

  <\proof>
    Wir haben <math|<around*|(|R<rsub|<around*|(|0|)>>|)><rsup|\<ast\>>=<around*|{|<frac|a|s>
    <around*|\|||\<nobracket\>> a\<notin\><around*|(|0|)>|}>=R<rsub|<around*|(|0|)>>\<setminus\><around*|{|0|}>>
    nach Lemma <reference|einheiten-lokalisierung>.
  </proof>

  Diesem Körper geben wir auch einen speziellen Namen.

  <\definition>
    Sei <math|R> ein Integritätsbereich. Dann nennen wir
    <math|R<rsub|<around*|(|0|)>>> den <em|Quotientenkörper> von
    <math|R><\footnote>
      Englisch: \R<em|field of fractions>\P.
    </footnote>.
  </definition>

  <\example>
    (1) Ist <math|R=<with|font|Bbb|Z>>, so ist der Quotientenkörper
    <math|<with|font|Bbb|Z><rsub|<around*|(|0|)>>> der gewohnte Körper der
    rationalen Zahlen, i.e. <math|<with|font|Bbb|Z><rsub|<around*|(|0|)>>=<with|font|Bbb|Q>>.

    (2) Es sei <math|K> ein Körper und <math|K<around*|[|X|]>> der zugehörige
    Polynomring. Dann schreiben wir <math|K<around*|(|X|)>> für den
    Quotientenkörper von <math|K<around*|[|X|]>>. Analog schreiben wir
    <math|K<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>> für den
    Quotientenkörper des Polynomrings von <math|K> in <math|n> Variablen,
    <math|K<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>>. Die Elemente dieses
    Körpers nennen wir <em|rationale Funktionen über <math|K> in den
    Variablen <math|X<rsub|1>,\<ldots\>,X<rsub|n>>>. Im Allgemeinen sind die
    Elemente von <math|K<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>> aber
    nicht an allen Punkten definiert, intuitiv genau dann, wenn der Nenner
    der rationalen Funktion eine Nullstelle hat.

    (3) Der Körper <math|<with|font|Bbb|C><around*|(|X|)>> ist eine echte
    Körpererweiterung der komplexen Zahlen (d.h. ein Körper, der
    <math|<with|font|Bbb|C>> enthält).

    (4) Ist <math|d\<in\><with|font|Bbb|Z>\<setminus\><around*|{|0,1|}>>
    quadratfrei, so ist <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> der
    Quotientenkörper von <math|<with|font|cal|O><rsub|d>>. In der Tat, sind
    <math|\<alpha\>,\<beta\>\<in\><with|font|cal|O><rsub|d>>,
    <math|\<beta\>\<neq\>0>, so ist <math|<frac|\<alpha\>|\<beta\>>=<frac|\<alpha\>
    \<beta\><rsup|\<ast\>>|N<rsub|d><around*|(|\<beta\>|)>>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
    und umgekehrt, falls <math|\<alpha\>\<in\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>>,
    so können wir <math|\<alpha\>=<frac|a+b \<omega\><rsub|d>|c>> für
    <math|a,b,c\<in\><with|font|Bbb|Z>> mit <math|c\<neq\>0> schreiben.
  </example>

  Kehren wir nun zu unserer ursprünglichen Motivation zurück, die
  Lokalisierung eines Rings einzuführen. Die Beweise der folgenden
  Behauptungen übertragen sich nahezu wortgleich aus den zuvor bewiesenen
  Lemma <reference|primitiv-irreduzibel-polynom>, Folgerung
  <reference|primitiv-irreduzibel-polynom-umformulierung>, Folgerung
  <reference|gauss-lemma-umformulierung> und Proposition
  <reference|zx-faktoriell> indem wir \R<math|<with|font|Bbb|Z>>\P durch
  \R<math|R>\P und \R<math|<with|font|Bbb|Q>>\P durch \R<math|K>\P ersetzen.

  <\lemma>
    <label|primitiv-irreduzibel-polynom-allgemein>Sei <math|R> ein
    faktorieller Ring und <math|K\<assign\>R<rsub|<around*|(|0|)>>> der
    Quotientenkörper von <math|R>. Ein primitives Polynom
    <math|f\<in\>R<around*|[|X|]>> ist in <math|R<around*|[|X|]>> genau dann
    irreduzibel, wenn es in <math|K<around*|[|X|]>> irreduzibel ist.
  </lemma>

  <\corollary>
    Sei <math|R> ein faktorieller Ring und
    <math|K\<assign\>R<rsub|<around*|(|0|)>>> der Quotientenkörper von
    <math|R>.

    <space|1em>Sei <math|f\<in\>R<around*|[|X|]>> ein primitives Polynom.
    Zerfällt <math|f> in ein Produkt <math|f=g h> mit
    <math|g,h\<in\>K<around*|[|X|]>>, so existieren primitive Polynome
    <math|g<rprime|'>,h<rprime|'>\<in\>R<around*|[|X|]>>, sodass
    <math|g\<sim\>g<rprime|'>> und <math|h\<sim\>h<rprime|'>> in
    <math|K<around*|[|X|]>> und <math|f=g<rprime|'> h<rprime|'>>.
    Insbesondere unterscheiden sich die Faktoren in <math|K<around*|[|X|]>>
    von denen in <math|R<around*|[|X|]>> nur durch Konstanten in <math|K>.
  </corollary>

  <\corollary>
    Sei <math|R> ein faktorieller Ring und
    <math|K\<assign\>R<rsub|<around*|(|0|)>>> der Quotientenkörper von
    <math|R>.

    <space|1em>Sei <math|f\<in\>R<around*|[|X|]>> ein normiertes Polynom das
    Produkt <math|f=g h> zweier normierter Polynome
    <math|g,h\<in\>K<around*|[|X|]>>. Dann folgt
    <math|g,h\<in\>R<around*|[|X|]>>.
  </corollary>

  <\proposition>
    Sei <math|R> ein faktorieller Ring. Dann ist <math|R<around*|[|X|]>>
    faktoriell.
  </proposition>

  <\corollary>
    Sei <math|R> ein faktorieller Ring. Dann ist auch
    <math|R<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>> faktoriell.
  </corollary>

  Ein durchaus nützliches Resultat, zurückgehend auf Theodor
  Schönemann<\footnote>
    Theodor Schönemann (1812 \U 1868), deutscher Mathematiker
  </footnote>, aber nach Gotthold Eisenstein<\footnote>
    Gotthold Eisenstein (1823 \U 1852), deutscher Mathematiker
  </footnote> benannt:

  <\proposition>
    <dueto|Eisensteinkriterium>Sei <math|R> ein faktorieller Ring mit
    Quotientenkörper <math|K=R<rsub|<around*|(|0|)>>>. Ist
    <math|f\<in\>R<around*|[|X|]>> ein primitives Polynom vom Grad
    <math|deg<around*|(|f|)>=n> mit <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i>
    X<rsup|i>> und existiert ein Primelement <math|p\<in\>R>, sodass

    <\itemize-dot>
      <item><math|p \<mid\>a<rsub|i>> für <math|i=0,\<ldots\>,n-1>,

      <item><math|p\<nmid\>a<rsub|n>>,

      <item><math|p<rsup|2>\<nmid\>a<rsub|0>>,
    </itemize-dot>

    dann ist <math|f> irreduzibel in <math|R<around*|[|X|]>> und
    <math|K<around*|[|X|]>>.
  </proposition>

  <\proof>
    Sei <math|p\<in\>R> ein Primelement, das die drei genannten Eigenschaften
    erfüllt. Da <math|p \<mid\>a<rsub|0>>, aber <math|p\<nmid\>a<rsub|n>>,
    folgt <math|n\<geq\>1>. Nach Lemma <reference|primitiv-irreduzibel-polynom-allgemein>
    ist es ausreichend die Irreduzibilität von <math|f> in
    <math|R<around*|[|X|]>> zu zeigen. Nehmen wir also indirekt an, dass
    <math|f=g\<cdot\>h> für <math|g,h\<in\>R<around*|[|X|]>>, wobei <math|g>
    und <math|h> nicht Einheiten sind. Dann folgt
    <math|deg<around*|(|g|)>,deg<around*|(|h|)>\<gtr\>0>. In der Tat, aus
    <math|deg<around*|(|g|)>=0> folgt, dass <math|g=b<rsub|0>\<in\>R>. Dann
    ist aber <math|b<rsub|0>> ein Teiler aller Koeffizienten von <math|f>
    und, da <math|f> primitiv ist, somit Einheit; ein Widerspruch. Ähnlich
    zeigt man, dass <math|deg<around*|(|h|)>\<gtr\>0>. Wir können also
    <math|g=<big|sum><rsub|i=0><rsup|r>b<rsub|i> X<rsup|i>> und
    <math|h=<big|sum><rsub|i=0><rsup|s>c<rsub|i> X<rsup|i>> für
    <math|r=deg<around*|(|g|)>,s=deg<around*|(|h|)>> und
    <math|b<rsub|0>,\<ldots\>,b<rsub|r>,c<rsub|0>,\<ldots\>,c<rsub|s>\<in\>R>
    schreiben. Da <math|R> ein Integritätsbereich ist, folgt
    <math|r+s=deg<around*|(|g\<cdot\>h|)>=deg<around*|(|f|)>=n> und damit
    <math|r,s\<leq\>n-1>. Weiters gilt <math|a<rsub|n>=b<rsub|r> c<rsub|s>>
    und <math|a<rsub|0>=b<rsub|0> c<rsub|0>>; da <math|p\<nmid\>a<rsub|n>>,
    folgt <math|p\<nmid\>b<rsub|r>> sowie <math|p\<nmid\>c<rsub|s>> und aus
    <math|p<rsup|2>\<nmid\>a<rsub|0>> folgt, dass <math|p> genau einen Faktor
    <math|b<rsub|0>> oder <math|c<rsub|0>> teilt. O. B. d. A. nehmen wir an,
    dass <math|p \<mid\>b<rsub|0>> und <math|p\<nmid\>c<rsub|0>>. Sei nun
    <math|t\<in\><with|font|Bbb|N><rsub|0>> mit der Eigenschaft, dass <math|p
    \<mid\>b<rsub|i>> für <math|i=0,\<ldots\>,t> maximal gewählt. Dann gilt
    <math|0\<leq\>t\<less\>r>. Betrachten wir den Koeffizienten

    <\equation*>
      a<rsub|t+1>=b<rsub|t+1> c<rsub|0>+<big|sum><rsub|i=1><rsup|t>b<rsub|i>
      c<rsub|t-i+1>
    </equation*>

    und bemerken, dass jeder Summand in der rechten Summe nach Definition von
    <math|t> durch <math|p> teilbar ist. Da aber <math|p\<nmid\>b<rsub|t+1>
    c<rsub|0>>, folgt <math|p\<nmid\>a<rsub|t+1>>, sodass nur die Möglichkeit
    <math|t+1=n> verbleibt. Daraus folgt aber
    <math|r=deg<around*|(|g|)>\<geq\>t+1=n> und das ist ein Widerspruch.
  </proof>

  Ein Polynom, für das ein solches <math|p> existiert, wird auch
  <em|Eisensteinpolynom bezüglich <math|p> genannt>.

  <\example>
    <label|eisenstein-beispiele>(1) Betrachten wir das Polynom
    <math|f\<assign\>X<rsup|3>+6 X<rsup|2>+4
    X+2\<in\><with|font|Bbb|Z><around*|[|X|]>>. Wenden wir das
    Eisensteinkriterium mit <math|p=2> an, folgt die Irreduzibilität von
    <math|f> in <math|<with|font|Bbb|Z><around*|[|X|]>> (und demnach auch
    <math|<with|font|Bbb|Q><around*|[|X|]>>).

    (2) Die Umkehrung des Eisensteinkriteriums gilt nicht. Das ganzzahlige
    Polynom <math|X<rsup|2>+4> erfüllt die Voraussetzungen nicht, ist aber in
    <math|<with|font|Bbb|Q><around*|[|X|]>> irreduzibel. Auch
    <math|X<rsup|2>-4> erfüllt das Kriterium nicht, ist aber in
    <math|<with|font|Bbb|Q><around*|[|X|]>> in
    <math|X<rsup|2>-4=<around*|(|X+2|)> <around*|(|X-2|)>> zerlegbar.

    (3) Sei <math|n\<geq\>2> eine natürliche Zahl und <math|p> eine Primzahl.
    Das Polynom <math|f\<assign\>X<rsup|n>-p\<in\><with|font|Bbb|Z><around*|[|X|]>>
    ist nach dem Eisensteinkriterium (angewandt mit <math|p>) irreduzibel in
    <math|<with|font|Bbb|Q><around*|[|X|]>>. Dies zeigt insbesondere, dass
    <math|<sqrt|p|n>> irrational ist und dass es für jeden Grad
    <math|n\<geq\>1> irreduzible Polynome in
    <math|<with|font|Bbb|Q><around*|[|X|]>> gibt.

    (4) Sei <math|f\<assign\>X<rsup|2>+Y<rsup|2>+1> ein Polynom in
    <math|<with|font|Bbb|R><around*|[|X,Y|]>>. Da
    <math|<with|font|Bbb|R><around*|[|X,Y|]>\<cong\><around*|(|<with|font|Bbb|R><around*|[|X|]>|)><around*|[|Y|]>>
    können wir <math|f> als Polynom in der Variablen <math|Y> mit
    Koeffizienten im Ring <math|R\<assign\><with|font|Bbb|R><around*|[|X|]>>
    auffassen, d.h <math|f=Y<rsup|2>+<around*|(|X<rsup|2>+1|)>\<in\>R<around*|[|Y|]>>.
    Dann ist <math|R> ein faktorieller Ring und das Element
    <math|p\<assign\>X<rsup|2>+1> ist in <math|<with|font|Bbb|R><around*|[|X|]>>
    irreduzibel, somit ein Primelement. Aus dem Eisensteinkriterium folgt
    nun, dass <math|f> in <math|<with|font|Bbb|R><around*|[|X,Y|]>>
    irreduzibel ist.

    (5) Sei <math|p> eine Primzahl. Das <em|<math|p>-te Kreisteilungspolynom>
    (oder <em|<math|p>-tes zyklotomisches Polynom>) ist definiert als

    <\equation*>
      \<Phi\><rsub|p>\<assign\><big|sum><rsub|i=0><rsup|p-1>X<rsup|i>=X<rsup|p-1>+X<rsup|p-2>+\<cdots\>+X+1.
    </equation*>

    Dann gilt <math|\<Phi\><rsub|p>=<frac|X<rsup|p>-1|X-1>>. Zwar können wir
    das Eisensteinkriterium nicht direkt auf <math|\<Phi\><rsub|p>> anwenden,
    aber betrachten wir die Substitution

    <\equation*>
      g\<assign\><frac|<around*|(|X+1|)><rsup|p>-1|<around*|(|X+1|)>-1>=<frac|1|X>
      <big|sum><rsub|k=1><rsup|p><binom|p|k>
      X<rsup|k>=<big|sum><rsub|k=1><rsup|p><binom|p|k> X<rsup|k-1>,
    </equation*>

    so sehen wir, dass <math|p> alle Koeffizienten mit Ausnahme des
    Leitkoeffizienten teilt (siehe auch Lemma <reference|freshmans-dream>)
    und <math|p<rsup|2>> kein Teiler des konstanten Gliedes ist, d.h.
    <math|g> ist nach dem Eisensteinkriterium irreduzibel. Dementsprechend
    ist auch <math|\<Phi\><rsub|p>> irreduzibel. Mehr zu diesem Polynom in
    Beispiel <reference|kreisteilungskoerper> (4).
  </example>

  Schlieÿen wir nun den Kreis und kommen zurück zum quadratischen Zahlkörper
  <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> und den Ringen ganzer Zahlen
  <math|<with|font|cal|O><rsub|d>>. Den Fall <math|d\<less\>0>, quadratfrei,
  haben wir bereits untersucht; nehmen wir also nun an, dass
  <math|d\<geq\>2>. Wir wissen bereits, dass <math|<with|font|cal|O><rsub|d>>
  <em|genau dann> ein Hauptidealring ist, wenn er faktoriell ist (Satz
  <reference|od-hir-gdw-ufd>), genauso wie im Fall <math|d\<less\>0>.
  Durchaus gibt es noch mehr Ähnlichkeiten, aber auch Unterschiede.

  <\example>
    <label|od-positiv-beispiele>(1) Da <math|X<rsup|2>-2> und
    <math|X<rsup|2>-3> in <math|<with|font|Bbb|F><rsub|5><around*|[|X|]>>
    irreduzibel sind, sind <math|2,3,2\<pm\><sqrt|10>> in
    <math|<with|font|cal|O><rsub|10>> irreduzibel. Dann folgt aber, dass
    <math|-6> die zwei Zerlegungen

    <\equation*>
      <around*|(|2+<sqrt|10>|)> <around*|(|2-<sqrt|10>|)>=-6=<around*|(|-1|)>
      <around*|(|2|)> <around*|(|3|)>
    </equation*>

    hat, also ist <math|<with|font|cal|O><rsub|10>> nicht faktoriell.

    (2) Für <math|d\<geq\>2> gibt es Beispiele von Ringen, die euklidisch
    sind, aber nicht norm-euklidisch, im Gegensatz zum Fall
    <math|d\<less\>0>. Beispielsweise kann man zeigen, dass
    <math|<with|font|cal|O><rsub|14>> nicht bezüglich
    <math|\<omega\>=<around*|\||N<rsub|14>|\|>> euklidisch ist, aber dafür
    bezüglich einer anderen Abbildung.

    (3) Sei <math|\<phi\>\<assign\><frac|1+<sqrt|5>|2>> der goldene Schnitt;
    dann gilt bekanntermaÿen <math|\<phi\><rsup|2>-\<phi\>-1=0>, sodass
    <math|\<phi\>> eine Einheit von <math|<with|font|cal|O><rsub|5>> ist. Da
    <math|\<phi\>\<gtr\>1> und die Einheitengruppe unter der Multiplikation
    abgeschlossen ist, folgt, dass <math|<with|font|cal|O><rsub|5>> unendlich
    viele Einheiten hat, erneut ein Unterschied zum Fall <math|d\<less\>0>,
    wo wir nur endlich viele Einheiten haben (siehe Beispiel
    <reference|einheiten-in-od>).
  </example>

  Beispiel <reference|od-positiv-beispiele> (3) lässt sich sogar
  verallgemeinern. Ist <math|d\<geq\>2> eine quadratfreie ganze Zahl, so ist
  die Einheitengruppe von <math|<with|font|cal|O><rsub|d><rsup|\<ast\>>>
  unendlich. Um das zu beweisen, benötigen wir einen Satz aus der
  Zahlentheorie, benannt nach Adolf Hurwitz<\footnote>
    Adolf Hurwitz (1859 \U 1919), deutscher Mathematiker
  </footnote>:

  <\theorem>
    <dueto|Hurwitz>Sei <math|\<alpha\>\<in\><with|font|Bbb|R>> eine
    irrationale Zahl. Dann existieren unendlich viele
    <math|p,q\<in\><with|font|Bbb|Z>> mit
    <math|<with|font-family|rm|ggT<around*|(|p,q|)>=1>>, sodass

    <\equation*>
      <around*|\||\<alpha\>-<frac|p|q>|\|>\<less\><frac|1|<sqrt|5>
      q<rsup|2>>.
    </equation*>
  </theorem>

  <\proof>
    Siehe Satz 193 in<nbsp><cite|Hardy1960>.
  </proof>

  <\lemma>
    Sei <math|d\<geq\>2> eine quadratfreie ganze Zahl. Dann existiert ein
    kleinstes <math|\<varepsilon\><rsub|0>\<in\><with|font|cal|O><rsub|d><rsup|\<ast\>>>
    mit <math|\<varepsilon\><rsub|0>\<gtr\>1>. Wir nennen
    <math|\<varepsilon\><rsub|0>> <em|Fundamentaleinheit>.
  </lemma>

  <\proposition>
    Sei <math|d\<geq\>2> eine quadratfreie ganze Zahl und
    <math|\<varepsilon\><rsub|0>> die zugehörige Fundamentaleinheit. Dann
    gilt:

    <\equation*>
      <with|font|cal|O><rsub|d><rsup|\<ast\>>=<around*|{|\<kappa\>\<cdot\>\<varepsilon\><rsub|0><rsup|n>
      <around*|\|||\<nobracket\>> \<kappa\>=\<pm\>1,n\<in\><with|font|Bbb|Z>|}>.
    </equation*>
  </proposition>

  <\proof>
    Aus Lemma <reference|einheitengruppe> folgern wir unmittelbar die erste
    Mengeninklusion. Sei nun umgekehrt <math|\<varepsilon\>\<in\><with|font|cal|O><rsub|d><rsup|\<ast\>>>.
    Wir unterscheiden vier Fälle.

    <\itemize-dot>
      <item><math|\<varepsilon\>=1>: Offensichtlich.

      <item><math|\<varepsilon\>\<gtr\>1>: Dann gilt
      <math|\<varepsilon\><rsub|0>\<leq\>\<varepsilon\>> und daher existiert
      ein <math|n\<in\><with|font|Bbb|N>> mit
      <math|\<varepsilon\><rsub|0><rsup|n>\<leq\>\<varepsilon\>\<less\>\<varepsilon\><rsub|0><rsup|n+1>>,
      insbesondere <math|1\<leq\>\<varepsilon\>
      \<varepsilon\><rsup|-n><rsub|0>\<less\>\<varepsilon\><rsub|0>>. Wegen
      <math|\<varepsilon\> \<varepsilon\><rsub|0><rsup|-n>\<less\>\<varepsilon\><rsub|0>>
      muss <math|\<varepsilon\> \<varepsilon\><rsub|0><rsup|-n>=1> folgen,
      d.h. <math|\<varepsilon\>=\<varepsilon\><rsub|0><rsup|n>>, wie
      gewünscht.

      <item><math|0\<less\>\<varepsilon\>\<less\>1>: Dann ist
      <math|\<varepsilon\><rsup|-1>\<gtr\>1> und aus dem obigen Fall folgt,
      dass ein <math|m\<in\><with|font|Bbb|Z>> mit
      <math|\<varepsilon\><rsup|-1>=\<varepsilon\><rsub|0><rsup|m>>
      existiert. Insbesondere gilt <math|\<varepsilon\>=\<varepsilon\><rsub|0><rsup|-m>>.

      <item><math|\<varepsilon\>\<less\>0>: Dann ist
      <math|-\<varepsilon\>\<gtr\>0>, also folgt aus den bereits gezeigten
      Fällen, dass <math|-\<varepsilon\>=\<varepsilon\><rsub|0><rsup|m>> für
      ein <math|m\<in\><with|font|Bbb|Z>> und damit
      <math|\<varepsilon\>=-\<varepsilon\><rsub|0><rsup|m>>.
    </itemize-dot>

    Also hält auch die umgekehrte Mengeninklusion.
  </proof>

  Unmittelbar aus dieser Proposition folgt:

  <\corollary>
    Für <math|d\<geq\>2> eine quadratfreie ganze Zahl ist
    <math|<with|font|cal|O><rsub|d><rsup|\<ast\>>> ist abzählbar unendlich.
  </corollary>

  Damit haben wir einen wesentlichen Unterschied zwischen
  <math|<with|font|cal|O><rsub|d>> für <math|d\<geq\>2> und
  <math|<with|font|cal|O><rsub|d>> für <math|d\<less\>0> gefunden, da die
  Einheitengruppe des letzteren Ringes nach Beispiel
  <reference|einheiten-in-od> jedenfalls endlich ist. Der Approximationssatz
  von Hurwitz ist in dieser Hinsicht jedoch noch tiefgreifender. Topologisch
  betrachtet liegt <math|<with|font|cal|O><rsub|d>> für <math|d\<geq\>2>
  dicht in den reellen Zahlen (als Obermenge der rationalen Zahlen), während
  <math|<with|font|cal|O><rsub|d>> für <math|d\<less\>0> diskret in
  <math|<with|font|Bbb|C>=<with|font|Bbb|R><rsup|2>> liegt. Um zu sehen, wie
  wichtig diese Eigenschaften sind, blicken wir auf den Beweis von Satz
  <reference|division-mit-rest>, die Division mit Rest, zurück: \RWir setzen
  <math|q\<assign\><around*|\<lfloor\>|<frac|a|b>|\<rfloor\>>> (<em|die
  gröÿte ganze Zahl, die kleiner oder gleich <math|<frac|a|b>>
  ist>)<text-dots>\P

  Schlieÿen wir nun unsere Diskussion der Ringe (der ganzen Zahlen) ab. Dazu
  geben wir einen Überblick zahlentheoretischer Ergebnisse, die die
  wichtigsten verbleibenden Fragen \U nämlich jene, die wir im Fall
  <math|d\<less\>0> bereits untersucht haben \U beantworten. Eine deutlich
  tiefgehendere Studie ist in<nbsp><cite|Lemmermeyer2004> zu finden.

  <\theorem>
    <dueto|Chatland, Davenport, Inkeri>Es sei <math|d\<geq\>2> eine
    quadratfreie ganze Zahl. Dann ist <math|<with|font|cal|O><rsub|d>> genau
    dann norm-euklidisch, wenn

    <\equation*>
      d\<in\><around*|{|2,3,5,6,7,11,13,17,19,21,29,33,37,41,57,73|}>.
    </equation*>
  </theorem>

  <\theorem>
    <dueto|Narkiewicz>Es sei <math|d\<geq\>2> eine quadratfreie ganze Zahl.
    Für alle, bis auf höchstens zwei Ausnahmen ist
    <math|<with|font|cal|O><rsub|d>> genau dann faktoriell, wenn er
    euklidisch ist.
  </theorem>

  Es ist unbekannt, ob es unendlich viele quadratfreie ganze Zahlen
  <math|d\<geq\>2> gibt, sodass <math|<with|font|cal|O><rsub|d>> faktoriell
  ist. Jedenfalls wird es vermutet. Ebenso wird vermutet, dass es die zwei
  \Rominösen\P Ausnahmen in Narkiewicz' Theorem nicht gibt. Der Grund dafür
  ist u. a. in der Theorie der automorphen Formen und ihrer L-Funktionen zu
  finden, siehe z. B.<nbsp><cite|Grobner2023>.

  <chapter|Körper>

  Widmen wir uns nun der Körpertheorie ganz allgemein. Im letzten Abschnitt
  haben wir <math|<with|font|cal|O><rsub|d>> als Unterring von
  <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> untersucht und kurz bemerkt,
  dass <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> eine
  \RKörpererweiterung von <math|<with|font|Bbb|Q>> vom Grad <math|2>\P ist.
  Das suggeriert die Existenz von Körpererweiterungen höheren Grades. Die
  Formalisierung dieser Konzepte wird ein wesentlicher Bestandteil dieses
  Kapitels sein. In unserer Untersuchung von Ringen haben wir bereits
  zahlreiche andere Beispiele von Körpern gesehen: Die rationalen Zahlen
  <math|<with|font|Bbb|Q>>, die reellen Zahlen <math|<with|font|Bbb|R>>, die
  komplexen Zahlen <math|<with|font|Bbb|C>>, insbesondere die auf
  Cauchy<\footnote>
    Augustin-Louis Cauchy (1789 \U 1857), französischer Mathematiker und
    Physiker
  </footnote> zurückgehende Beschreibung als
  <math|<with|font|Bbb|R><around*|[|X|]>/<around*|(|X<rsup|2>+1|)>> oder die
  zuletzt studierten Quotientenkörper.

  <section|Algebraische Körpererweiterungen>

  <\definition>
    Es seien <math|K,L> Körper mit <math|K\<subseteq\>L>.\ 

    <\indent>
      (1) Wir nennen <math|L> <em|Körpererweiterung von <math|K>> oder
      <em|Erweiterungskörper von <math|K>>. Ferner nennen wir <math|K> dann
      <em|Teilkörper von <math|L>>. Ist auÿerdem <math|M> ein Körper mit
      <math|K\<subseteq\>M\<subseteq\>L>, so heiÿt <math|M>
      <em|Zwischenkörper>. Wir schreiben <math|L :K>, um die
      Körpererweiterung von <math|L> über <math|K> zu bezeichnen.

      (2) Die Körpermultiplikation von Elementen aus <math|K> mit Elementen
      aus <math|L> macht <math|L> zu einem Vektorraum über <math|K>. Als
      solcher besitzt <math|L> eine bestimmte Dimension <math|dim<rsub|K> L>.
      Sie heiÿt <em|Grad von <math|L> über <math|K>> und wird mit
      <math|<around*|[|L :K|]>> bezeichnet. Eine Körpererweiterung <math|L
      :K> von endlichem Körpergrad heiÿt <em|endlich>.
    </indent>
  </definition>

  <\example>
    (1) Die reellen Zahlen sind eine Körpererweiterung der rationalen Zahlen,
    <math|<with|font|Bbb|Q>\<subseteq\><with|font|Bbb|R>>.

    (2) Für <math|d\<in\><with|font|Bbb|Z>>, quadratfrei, haben wir
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> als Körpererweiterung von
    <math|<with|font|Bbb|Q>> kennengelernt. Insbesondere ist
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> Zwischenkörper
    <math|<with|font|Bbb|Q>\<subseteq\><with|font|Bbb|Q><around*|(|<sqrt|d>|)>\<subseteq\><with|font|Bbb|C>>.

    (3) Ist <math|K> ein Körper, so ist der Körper der rationalen Funktionen
    <math|K<around*|(|X|)>> über <math|K> eine Körpererweiterung von
    <math|K>. Offenbar ist im Gegensatz dazu <math|K<around*|[|X|]>>
    <em|keine> Körpererweiterung von <math|K>.
  </example>

  <\lemma>
    <label|turm-regel>Es seien <math|K\<subseteq\>K<rprime|'>\<subseteq\>K<rprime|''>>
    drei Körper. Dann gilt

    <\equation*>
      <around*|[|K<rprime|''>:K|]>=<around*|[|K<rprime|''>:K<rprime|'>|]>\<cdot\><around*|[|K<rprime|'>:K|]>.
    </equation*>

    Insbesondere ist <math|K<rprime|''> :K> genau dann endlich, wenn sowohl
    <math|K<rprime|'>:K>, als auch <math|K<rprime|''>:K<rprime|'>> endlich
    sind.
  </lemma>

  <\proof>
    Es sei <math|U> eine Basis von <math|K<rprime|''> :K<rprime|'>> und
    <math|V> eine Basis von <math|K<rprime|'> :K>. Wir zeigen, dass
    <math|W\<assign\><around*|{|u v <around*|\|||\<nobracket\>>
    u\<in\>U,v\<in\>V|}>> eine Basis von <math|K<rprime|''> :K> ist. Aus der
    linearen Unabhängigkeit von <math|U> folgt dann, dass die Elemente in
    <math|W> paarweise verschieden sind und daraus die Behauptung.

    <space|1em>Erzeugendensystem: Sei <math|u\<in\>K<rprime|''>> beliebig.
    Dann ist <math|u=<big|sum><rsub|i=1><rsup|n>m<rsub|i> u<rsub|i>> für ein
    <math|n\<in\><with|font|Bbb|N>,m<rsub|i>\<in\>K<rprime|'>> und
    <math|u<rsub|i>\<in\>U>, da <math|U> Erzeugendensystem von
    <math|K<rprime|''>> als <math|K<rprime|'>>-Vektorraum ist. Da aber
    <math|K<rprime|'>> ein <math|K>-Vektorraum ist, ist jedes
    <math|m<rsub|i>> von der Form <math|m<rsub|i>=<big|sum><rsub|j=1><rsup|n<rsub|i>>k<rsub|i
    j> v<rsub|j>> für ein <math|n<rsub|i>=n<rsub|i><around*|(|m<rsub|i>|)>,k<rsub|i
    j>\<in\>K> und <math|v<rsub|j>\<in\>V>. Daher ist

    <\equation*>
      u=<big|sum><rsub|i=1><rsup|n>m<rsub|i>
      u<rsub|i>=<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|n<rsub|i>>k<rsub|i
      j> v<rsub|j>|)> u<rsub|i>=<big|sum><rsub|i=1><rsup|n><big|sum><rsub|j=1><rsup|n<rsub|i>>k<rsub|i
      j> <around*|(|u<rsub|i> v<rsub|j>|)>,
    </equation*>

    sodass <math|W> ein Erzeugendensystem von <math|K<rprime|''>> über
    <math|K> ist.

    <space|1em>Lineare Unabhängigkeit: Sei nun

    <\equation*>
      <big|sum><rsub|i=1><rsup|n><big|sum><rsub|j=1><rsup|\<ell\>>k<rsub|i j>
      <around*|(|u<rsub|i> v<rsub|j>|)>=0<space|1em><text|für
      <math|\<ell\>,n\<in\><with|font|Bbb|N>,k<rsub|i j>\<in\>K> und
      <math|u<rsub|i> v<rsub|j>\<in\>W>.>
    </equation*>

    Sei <math|m<rsub|i>\<assign\><big|sum><rsub|j=1><rsup|\<ell\>>k<rsub|i j>
    v<rsub|j>\<in\>K<rprime|'>> für <math|i=1,\<ldots\>,n>. Dann folgt
    <math|<big|sum><rsub|i=1><rsup|n>m<rsub|i> u<rsub|i>=0> und da <math|U>
    als Basis von <math|K<rprime|''>> über <math|K<rprime|'>> linear
    unabhängig ist, muss <math|m<rsub|i>=0> für alle <math|i> folgen.
    Insbesondere folgt daraus, dass <math|<big|sum><rsub|j=1><rsup|\<ell\>>k<rsub|i
    j> v<rsub|j>=0> und da <math|V> als Basis von <math|K<rprime|'>> über
    <math|K> auch linear unabhängig ist, folgt sogar <math|k<rsub|i j>=0> für
    alle <math|i> und <math|j>. Damit ist die lineare Unabhängigkeit von
    <math|W> gezeigt.
  </proof>

  Eine interessante Konsequenz ist:

  <\corollary>
    <label|tower-law-korollar>Es seien <math|K\<subseteq\>K<rprime|'>\<subseteq\>K<rprime|''>>
    drei Körper. Dann folgt, dass <math|<around*|[|K<rprime|'>:K|]>> ein
    Teiler von <math|<around*|[|K<rprime|''> :K|]>> ist. Insbesondere gilt:
    Wenn <math|<around*|[|K<rprime|''> :K|]>> eine Primzahl ist, so gibt es
    zwischen <math|K<rprime|''>> und <math|K> keinen echten Zwischenkörper.
  </corollary>

  <\proof>
    Die erste Aussage folgt unmittelbar aus Lemma <reference|turm-regel>. Ist
    <math|<around*|[|K<rprime|''> :K|]>> eine Primzahl und gibt es einen
    Zwischenkörper <math|K\<subseteq\>K<rprime|'>\<subseteq\>K<rprime|''>>,
    so folgt aus demselben Lemma <math|<around*|[|K<rprime|'>:K|]>=1> oder
    <math|<around*|[|K<rprime|''>:K<rprime|'>|]>=1>. Insbesondere muss
    <math|K=K<rprime|'>> oder <math|K<rprime|'>=K<rprime|''>> gelten.
  </proof>

  Lemma <reference|turm-regel> ist also ein hilfreiches Werkzeug, die Frage
  der Existenz von Teilkörpern in ein Teilbarkeitsproblem zu verwandeln.

  <\definition>
    Es sei <math|L> ein Körper und <math|\<Theta\>\<subseteq\>L> eine
    Teilmenge.

    <\indent>
      (1) Der Durchschnitt aller Teilkörper (bzw. Unterringe) von <math|L>,
      welche <math|\<Theta\>> enthalten, ist ein Teilkörper (bzw. Unterring)
      von <math|L> und heiÿt der <em|von <math|\<Theta\>> erzeugte
      Teilkörper> (bzw. <em|Unterring>) <em|von <math|L>>.

      (2) Ist <math|L :K> eine Körpererweiterung eines Körpers <math|K> und
      <math|\<Xi\>\<subseteq\>L> eine Teilmenge, so heiÿt der von
      <math|K\<cup\>\<Xi\>> erzeugte Teilkörper (bzw. Unterring) von <math|L>
      der <em|von <math|\<Xi\>> über <math|K> erzeugte Teilkörper> (bzw.
      <em|Unterring>) <em|von <math|L>> und wird mit
      <math|K<around*|(|\<Xi\>|)>> (bzw. <math|K<around*|[|\<Xi\>|]>>)
      bezeichnet. Ist <math|\<Xi\>=<around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|}>>
      eine endliche Menge, so schreiben wir
      <math|K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
      (bzw. <math|K<around*|[|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|]>>).
    </indent>
  </definition>

  Die Notation aus Punkt (2) erinnert stark an jene der (Lokalisierung von)
  Polynomringen. Das ist auch gerechtfertigt:

  <\proposition>
    Sei <math|L :K> eine Körpererweiterung und
    <math|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>\<in\>L>. Dann gilt
    für den von <math|K> und <math|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>>
    erzeugten Zwischenkörper

    <\equation*>
      K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>=<around*|{|<frac|f<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>|g<around*|(|\<alpha\><rsub|1>,\<ldots\>,a<rsub|n>|)>>
      <around*|\|||\<nobracket\>> f,g\<in\>K<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>,g<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>\<neq\>0|}>.
    </equation*>
  </proposition>

  <\proof>
    Sei <math|S> die rechte Seite. Ist <math|<frac|f<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>|g<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>\<in\>S>
    für <math|f,g\<in\>K<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>> und
    <math|g<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>\<neq\>0>,
    so sind der Zähler und Nenner Elemente von
    <math|K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>, da
    dieser als Körper unter Multiplikation und Addition abgeschlossen ist und
    damit auch das Ergebnis der Division dieser Elemente. Es folgt
    <math|S\<subseteq\>K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>.
    Umgekehrt folgt unmittelbar, dass <math|S> ein Teilkörper von <math|L>
    ist, der <math|K\<cup\><around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|}>>
    enthält und damit per Definition <math|K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>\<subseteq\>S>.
  </proof>

  Ein analoges Resultat werden wir in Kürze auch für
  <math|K<around*|[|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|]>> sehen.

  <\definition>
    Es sei <math|K\<subseteq\>L> eine Körpererweiterung. Ein Element
    <math|\<alpha\>\<in\>L> heiÿt <em|algebraisch über <math|K>>, falls
    <math|f\<in\>K<around*|[|X|]>,f\<neq\>0>, existiert mit
    <math|f<around*|(|\<alpha\>|)>=0>. Falls kein solches Polynom existiert,
    nennen wir <math|\<alpha\>> <em|transzendent über <math|K>>. Die
    Erweiterung <math|L :K> heiÿt <em|algebraisch>, wenn jedes Element von
    <math|L> algebraisch ist und sonst nennen wir <math|L :K>
    <em|transzendent>.
  </definition>

  <\example>
    (1) Sei <math|K=<with|font|Bbb|Q>> und <math|\<alpha\>=<sqrt|2>>. Dann
    ist <math|f\<assign\>X<rsup|2>-2\<in\>K<around*|[|X|]>> ein Polynom mit
    <math|<sqrt|2>> als Nullstelle. Folglich ist <math|<sqrt|2>> algebraisch
    über <math|<with|font|Bbb|Q>>. Eine transzendente Körpererweiterung
    <math|L:K> kann also sehr wohl algebraische Elemente enthalten, die nicht
    schon in <math|K> waren.

    (2) Als Nullstelle von <math|X<rsup|2>+1> ist <math|<sqrt|-1>>
    algebraisch über <math|<with|font|Bbb|Q>> und daher insbesondere über
    <math|<with|font|Bbb|R>>.

    (3) Charles Hermite<\footnote>
      Charles Hermite (1822 \U 1901), französischer Mathematiker
    </footnote> hat im Jahr 1873 bewiesen, dass <math|\<mathe\>> transzendent
    ist. Kurz danach hat Lindemann<\footnote>
      Carl Louis Ferdinand Lindemann (1852 \U 1939), deutscher Mathematiker
    </footnote> im Jahr 1882 gezeigt, dass auch <math|\<pi\>> transzendent
    ist.

    (4) Ist <math|\<alpha\>\<in\>K>, dann ist <math|\<alpha\>> auch
    algebraisch über <math|K>, nämlich als Nullstelle des Polynoms
    <math|X-\<alpha\>>.

    (5) Ein algebraisches Element über <math|<with|font|Bbb|Q>> heiÿt
    <em|algebraische Zahl>. Da es höchstens abzählbar unendlich viele
    rationale Polynome mit endlich vielen Nullstellen und deshalb nur
    höchstens abzählbar unendlich viele algebraische Zahlen gibt, folgt, dass
    überabzählbar unendlich viele transzendente reelle Zahlen existieren.
  </example>

  Die Bedeutung algebraischer Elemente sehen wir in folgendem Satz.

  <\theorem>
    <label|algebraisch-koerpererweiterung-satz>Es sei <math|L :K> eine
    Körpererweiterung und <math|\<alpha\>\<in\>L> algebraisch über <math|K>.
    Dann gilt:

    <\indent>
      (1) <math|K<around*|(|\<alpha\>|)>=K<around*|[|\<alpha\>|]>>.

      (2) <math|K<around*|(|\<alpha\>|)>\<cong\>K<around*|[|X|]>/<around*|(|\<varphi\>|)>>
      für ein irreduzibles, monisches Polynom
      <math|\<varphi\>\<in\>K<around*|[|X|]>> vom Grad <math|n\<geq\>1>.

      (3) <math|<around*|{|1,\<alpha\>,\<alpha\><rsup|2>,\<ldots\>,\<alpha\><rsup|n-1>|}>>
      ist eine <math|K>-Basis von <math|K<around*|(|\<alpha\>|)>> und es gilt
      <math|<around*|[|K<around*|(|\<alpha\>|)> :K|]>=n>.
    </indent>

    Insbesondere ist das Polynom <math|\<varphi\>> in (2) als irreduzibles,
    monisches Polynom mit <math|\<varphi\><around*|(|\<alpha\>|)>=0>
    eindeutig bestimmt. Ist <math|g\<in\>K<around*|[|X|]>> mit
    <math|g<around*|(|\<alpha\>|)>=0>, so folgt <math|\<varphi\> \<mid\>g>.
  </theorem>

  <\proof>
    (1) Da <math|K\<subseteq\>K<around*|[|\<alpha\>|]>>, können wir die
    Evaluationsabbildung <math|<with|font-family|rm|ev><rsub|\<alpha\>>
    :K<around*|[|X|]>\<rightarrow\>K<around*|[|\<alpha\>|]>> betrachten.
    Diese ist ein Ringhomomorphismus und sogar surjektiv. In der Tat, da
    offenbar <math|K\<cup\><around*|{|\<alpha\>|}>\<subseteq\><with|font-family|rm|im>
    <with|font-family|rm|ev><rsub|\<alpha\>>> folgt aus der Definition von
    <math|K<around*|[|\<alpha\>|]>> als Durchschnitt aller Unterringe, die
    <math|K\<cup\><around*|{|\<alpha\>|}>> enthalten, dass
    <math|K<around*|[|\<alpha\>|]>\<subseteq\><with|font-family|rm|im>
    <with|font-family|rm|ev><rsub|\<alpha\>>> und daher sogar
    <math|K<around*|[|\<alpha\>|]>=<with|font-family|rm|im>
    <with|font-family|rm|ev><rsub|\<alpha\>>>.

    <space|1em>Nach Lemma <reference|kern-ist-ideal> (1) ist <math|ker
    <with|font-family|rm|ev><rsub|\<alpha\>>\<trianglelefteqslant\>K<around*|[|X|]>>
    ein Ideal von <math|K<around*|[|X|]>>. Nach Proposition
    <reference|polynomring-euklidisch> ist <math|K<around*|[|X|]>> aber ein
    Hauptidealring und somit existiert <math|f\<in\>K<around*|[|X|]>> mit
    <math|ker <with|font-family|rm|ev><rsub|\<alpha\>>=<around*|(|f|)>>. Dann
    gilt <math|f<around*|(|\<alpha\>|)>=0>. Insbesondere folgt aus
    <math|\<alpha\>> algebraisch, dass <math|<around*|(|f|)>\<neq\><around*|(|0|)>>
    und aus der Surjektivität von <math|<with|font-family|rm|ev><rsub|\<alpha\>>>,
    dass <math|ker <with|font-family|rm|ev><rsub|\<alpha\>>\<neq\>K<around*|[|X|]>>.
    Somit ist <math|<around*|(|f|)>> ein echtes Ideal von
    <math|K<around*|[|X|]>>, also <math|f\<neq\>0> und
    <math|f\<notin\>K<around*|[|X|]><rsup|\<ast\>>>. Daraus folgt, dass
    <math|deg<around*|(|f|)>\<geq\>1>. Wir können also
    <math|f=<big|sum><rsub|i=0><rsup|n>a<rsub|i> X<rsup|i>> für
    <math|a<rsub|0>,\<ldots\>,a<rsub|n>\<in\>K> mit
    <math|n=deg<around*|(|f|)>> schreiben. Da <math|a<rsub|n>\<neq\>0>, ist
    <math|\<varphi\>\<assign\>a<rsub|n><rsup|-1> f> wohldefiniert. Wir halten
    einige Eigenschaften von <math|\<varphi\>> fest:

    <\itemize-dot>
      <item><math|\<varphi\>> ist monisch mit
      <math|deg<around*|(|\<varphi\>|)>\<geq\>1>.

      <item>Es gilt <math|\<varphi\>\<sim\>f> und somit
      <math|<around*|(|\<varphi\>|)>=<around*|(|f|)>> nach Lemma
      <reference|integritaetsbereich-ideale-lemma> (2).

      <item><math|\<varphi\>\<in\>ker <with|font-family|rm|ev><rsub|\<alpha\>>>,
      also <math|\<varphi\><around*|(|\<alpha\>|)>=0>.
    </itemize-dot>

    Aus dem Isomorphiesatz für Ringe <reference|erster-isomorphiesatz-fuer-ringe>
    folgt, dass

    <\equation*>
      K<around*|[|X|]>/<around*|(|\<varphi\>|)>=K<around*|[|X|]>/ker
      <with|font-family|rm|ev><rsub|\<alpha\>>\<cong\><with|font-family|rm|im>
      <with|font-family|rm|ev><rsub|\<alpha\>>=K<around*|[|\<alpha\>|]>.
    </equation*>

    Da <math|K<around*|[|\<alpha\>|]>\<subseteq\>L>, ist
    <math|K<around*|[|\<alpha\>|]>> nullteilerfrei, sodass nach Proposition
    <reference|ideale-quotientenring> <math|<around*|(|\<varphi\>|)>> ein
    Primideal in <math|K<around*|[|X|]>> ist, <math|\<varphi\>> also ein
    Primelement in <math|K<around*|[|X|]>> (Lemma
    <reference|primelement-wenn-primideal>), daher irreduzibel (Lemma
    <reference|prim-irreduzibel>) und also ein maximales Ideal (Proposition
    <reference|polynomring-euklidisch> und Lemma
    <reference|integritaetsbereich-ideale-lemma> (3)), insbesondere
    <math|K<around*|[|X|]>/<around*|(|\<varphi\>|)>> also ein Körper
    (Proposition <reference|ideale-quotientenring>). Da
    <math|K<around*|(|\<alpha\>|)>> nach Definition der <em|kleinste> Körper
    ist, der <math|K\<cup\><around*|{|\<alpha\>|}>> enthält muss schon
    <math|K<around*|(|\<alpha\>|)>=K<around*|[|\<alpha\>|]>> gelten.

    (2) Aus Teil (1) wissen wir, dass <math|K<around*|(|\<alpha\>|)>\<cong\>K<around*|[|X|]>/<around*|(|\<varphi\>|)>>
    für ein irreduzibles, monisches Polynom <math|\<varphi\>> mit
    <math|deg<around*|(|\<varphi\>|)>\<geq\>1>. Wir zeigen nun, dass es
    eindeutig bestimmt ist. Ist aber <math|g<around*|(|\<alpha\>|)>=0> für
    ein <math|g\<in\>K<around*|[|X|]>>, so folgt
    <math|<with|font-family|rm|ev><rsub|\<alpha\>><around*|(|g|)>=0>, also
    <math|g\<in\>ker <with|font-family|rm|ev><rsub|\<alpha\>>> und damit
    <math|g\<in\><around*|(|\<varphi\>|)>>, i.e. <math|\<varphi\> \<mid\>g>.

    (3) Sei <math|\<beta\>\<in\>K<around*|(|\<alpha\>|)>> beliebig. Nach (1)
    existiert <math|g\<in\>K<around*|[|X|]>> mit
    <math|<with|font-family|rm|ev><rsub|\<alpha\>><around*|(|g|)>=\<beta\>>,
    d.h. <math|g<around*|(|\<alpha\>|)>=\<beta\>>. Da <math|K<around*|[|X|]>>
    bezüglich <math|deg> euklidisch ist (Proposition
    <reference|polynomring-euklidisch>), existieren
    <math|q,r\<in\>K<around*|[|X|]>> mit <math|g=q \<varphi\>+r> und
    <math|deg<around*|(|r|)>\<less\>deg<around*|(|\<varphi\>|)>>. Sei
    <math|r=<big|sum><rsub|i=0><rsup|m>b<rsub|i> X<rsup|i>> für
    <math|b<rsub|0>,\<ldots\>,b<rsub|m>\<in\>K> und
    <math|m=deg<around*|(|r|)>>. Dann folgt

    <\equation*>
      g<around*|(|\<alpha\>|)>=q<around*|(|\<alpha\>|)>
      \<varphi\><around*|(|\<alpha\>|)>+r<around*|(|\<alpha\>|)>=r<around*|(|\<alpha\>|)>=<big|sum><rsub|i=0><rsup|m>b<rsub|i>
      \<alpha\><rsup|i>,
    </equation*>

    sodass <math|<around*|{|1,\<alpha\>,\<ldots\>,\<alpha\><rsup|n-1>|}>>
    jedenfalls Erzeugendensystem von <math|K<around*|(|\<alpha\>|)>> ist. Es
    verbleibt noch, die lineare Unabhängigkeit zu zeigen. Angenommen, dass
    <math|<big|sum><rsub|i=0><rsup|n-1>\<lambda\><rsub|i>
    \<alpha\><rsup|i>=0> für <math|\<lambda\><rsub|0>,\<ldots\>,\<lambda\><rsub|n-1>\<in\>K>.
    Sei <math|h\<assign\><big|sum><rsub|i=0><rsup|n-1>\<lambda\><rsub|i>
    X<rsup|i>>. Dann gilt <math|h<around*|(|\<alpha\>|)>=<big|sum><rsub|i=0><rsup|n-1>\<lambda\><rsub|i>
    \<alpha\><rsup|i>=0> und <math|deg<around*|(|h|)>\<less\>n=deg<around*|(|\<varphi\>|)>>.
    Nach (2) haben wir aber auch <math|\<varphi\> \<mid\>h> und daher muss
    <math|h=0> sein. Insbesondere folgt, dass
    <math|\<lambda\><rsub|0>=\<cdots\>=\<lambda\><rsub|n-1>=0>.
  </proof>

  <\definition>
    Das eindeutig bestimmte irreduzible, monische Polynom
    <math|\<varphi\>\<in\>K<around*|[|X|]>> mit
    <math|\<varphi\><around*|(|\<alpha\>|)>=0> aus Satz
    <reference|algebraisch-koerpererweiterung-satz> (2) heiÿt
    <em|Minimalpolynom von <math|\<alpha\>> über <math|K>>.
  </definition>

  <\example>
    <label|basis-von-q23>(1) Das Element <math|\<alpha\>\<assign\><sqrt|2>>
    ist, wie bereits festgestellt, über <math|<with|font|Bbb|Q>> algebraisch
    und hat Minimalpolynom <math|X<rsup|2>-2>. Aber <math|\<alpha\>> ist
    (trivialerweise) auch algebraisch über <math|<with|font|Bbb|R>> mit
    Minimalpolynom <math|X-<sqrt|2>>. Der Körper, über den wir
    <math|\<alpha\>> betrachten, spielt also eine wesentliche Rolle.

    (2) Betrachten wir den Körper <math|<with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>>.
    Das Minimalpolynom von <math|<sqrt|3>> über
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2>|)>> ist offenbar
    <math|X<rsup|2>-3>, also <math|<around*|[|<with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>
    :<with|font|Bbb|Q><around*|(|<sqrt|2>|)>|]>=2> wegen Satz
    <reference|algebraisch-koerpererweiterung-satz>. Aus Satz
    <reference|algebraisch-koerpererweiterung-satz> folgt auÿerdem, dass
    <math|<around*|{|1,<sqrt|3>|}>> eine Basis von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>> über
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2>|)>> ist. Die Gradregel liefert
    nun <math|<around*|[|<with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>
    :<with|font|Bbb|Q>|]>=4>. Eine Basis von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2>|)>> über
    <math|<with|font|Bbb|Q>> ist gegeben durch
    <math|<around*|{|1,<sqrt|2>|}>>; ist also
    <math|\<alpha\>=\<alpha\><rsub|1>+\<alpha\><rsub|2>
    <sqrt|3>\<in\><with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>> für
    <math|\<alpha\><rsub|1>,\<alpha\><rsub|2>\<in\><with|font|Bbb|Q><around*|(|<sqrt|2>|)>>,
    so folgt durch Substitution von <math|\<alpha\><rsub|1>=a<rsub|1>+b<rsub|1>
    <sqrt|2>> und <math|\<alpha\><rsub|2>=a<rsub|2>+b<rsub|2> <sqrt|2>>,
    <math|a<rsub|1>,a<rsub|2>,b<rsub|1>,b<rsub|2>\<in\><with|font|Bbb|Q>>,
    dass

    <\equation*>
      \<alpha\>=<around*|(|a<rsub|1>+b<rsub|1>
      <sqrt|2>|)>+<around*|(|a<rsub|2>+b<rsub|2> <sqrt|2>|)>
      <sqrt|3>=a<rsub|1>+b<rsub|1> <sqrt|2>+a<rsub|2> <sqrt|3>+b<rsub|2>
      <sqrt|6>.
    </equation*>

    Da <math|<around*|{|1,<sqrt|2>,<sqrt|3>,<sqrt|6>|}>> eine vier-elementige
    Menge ist, folgt dass dies bereits eine Basis von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>> über den
    rationalen Zahlen ist.
  </example>

  <\corollary>
    <label|algebraisch-koerpererweiterung-folgerung>Ist <math|L :K> eine
    Körpererweiterung und sind <math|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>\<in\>L>
    algebraische Elemente, so ist <math|K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
    eine endliche Erweiterung von <math|K> mit
    <math|K<around*|[|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|]>=K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>.
  </corollary>

  <\example>
    <label|r-q-koeerw-unendlich>Es sei <math|p> eine Primzahl und
    <math|n\<in\><with|font|Bbb|N>>. Dann ist <math|<sqrt|p|n>> als
    Nullstelle des Polynoms <math|\<varphi\>\<assign\>X<rsup|n>-p\<in\><with|font|Bbb|Q><around*|[|X|]>>
    algebraisch über <math|<with|font|Bbb|Q>> und folglich ist
    <math|<with|font|Bbb|Q><around*|[|<sqrt|p|n>|]>> eine endliche
    Körpererweiterung von <math|<with|font|Bbb|Q>>. Aus dem Kriterium von
    Eisenstein folgt, dass <math|\<varphi\>> irreduzibel ist (cf. Beispiel
    <reference|eisenstein-beispiele>) und ist als normiertes Polynom demnach
    schon das Minimalpolynom von <math|<sqrt|p|n>> über
    <math|<with|font|Bbb|Q>>. Es folgt, dass
    <math|<around*|[|<with|font|Bbb|Q><around*|[|<sqrt|p|n>|]>
    :<with|font|Bbb|Q>|]>=deg<around*|(|\<varphi\>|)>=n>. Insbesondere ist
    nach der Gradregel (Lemma <reference|turm-regel>) die Erweiterung
    <math|<with|font|Bbb|R> :<with|font|Bbb|Q>> unendlich.
  </example>

  Auch die Umkehrung von Satz <reference|algebraisch-koerpererweiterung-satz>
  gilt:

  <\proposition>
    <label|endliche-koe-erweiterung-algebraisch>Es sei <math|L :K> eine
    endliche Körpererweiterung des Körpers <math|K>. Dann ist <math|L>
    algebraisch über <math|K> und <math|L=K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
    für <math|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>\<in\>L>.\ 
  </proposition>

  <\proof>
    Sei <math|n\<assign\><around*|[|L :K|]>> eine positive ganze Zahl und sei
    <math|\<alpha\>\<in\>L> beliebig. Dann sind die <math|n+1> Elemente
    <math|1,\<alpha\>,\<ldots\>,\<alpha\><rsup|n>> linear abhängig über
    <math|K>, sodass es <math|\<lambda\><rsub|0>,\<ldots\>,\<lambda\><rsub|n>\<in\>K>
    gibt, die nicht alle Null sind, mit <math|<big|sum><rsub|i=0><rsup|n>\<lambda\><rsub|i>
    \<alpha\><rsup|i><rsub|>=0>. Daraus folgt aber unmittelbar, dass
    <math|\<alpha\>> Nullstelle des Polynoms
    <math|g\<assign\><big|sum><rsub|i=0><rsup|n>\<lambda\><rsub|i>
    X<rsup|i>\<in\>K<around*|[|X|]>\<setminus\><around*|{|0|}>> ist. Weil
    <math|\<alpha\>> beliebig gewählt worden ist, folgt, dass <math|L :K>
    algebraisch ist. Sei nun <math|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>\<in\>L>
    eine Basis von <math|L> als Vektorraum über <math|K>; dann gilt
    <math|L=K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>. In
    der Tat, per Definition gilt <math|K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>\<subseteq\>L>
    und ist <math|\<alpha\>\<in\>L> beliebig, so ist wegen der
    Abgeschlossenheit von <math|K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
    unter Addition und (Skalar-)Multiplikation auch die Linearkombination von
    <math|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>>, die
    <math|\<alpha\>> beschreibt, in <math|K<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>.
  </proof>

  <\example>
    <label|kreisteilungskoerper>(1) Die Körpererweiterung
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>
    :<with|font|Bbb|Q>> ist algebraisch.

    (2) Da <math|\<mathe\><rsup|\<pi\> <sqrt|-1>/n>> für
    <math|n\<in\><with|font|Bbb|N>> eine Nullstelle des Polynoms
    <math|X<rsup|2 n>-1> ist, folgt, dass
    <math|<with|font|Bbb|Q><around*|(|\<mathe\><rsup|\<pi\> <sqrt|-1>/n>|)>>
    endlich ist und damit sogar algebraisch. Insbesondere sehen wir, dass

    <\equation*>
      cos<around*|(|<frac|\<pi\>|n>|)>=<frac|1|2>
      <around*|(|\<mathe\><rsup|\<pi\> <sqrt|-1>/n>+\<mathe\><rsup|-\<pi\>
      <sqrt|-1>/n>|)>\<in\><with|font|Bbb|Q><around*|(|\<mathe\><rsup|\<pi\>
      <sqrt|-1>/n>|)>
    </equation*>

    und also auch algebraisch über <math|<with|font|Bbb|Q>> ist.

    (3) Wir haben bereits gesehen, dass sowohl <math|\<pi\>>, als auch
    <math|\<mathe\>> transzendent (über <math|<with|font|Bbb|Q>>) sind. Gilt
    das auch für <math|\<pi\>+\<mathe\>> und <math|\<pi\>\<cdot\>\<mathe\>>?
    Die Antwort ist unbekannt, aber wir können feststellen, dass
    <em|mindestens eine> dieser Zahlen transzendent über
    <math|<with|font|Bbb|Q>> sein muss. Wären beide Zahlen
    <math|\<pi\>+\<mathe\>,\<pi\>\<cdot\>\<mathe\>> algebraisch über
    <math|<with|font|Bbb|Q>>, so wäre <math|<with|font|Bbb|Q><around*|(|\<pi\>\<cdot\>\<mathe\>,\<pi\>+\<mathe\>|)>>
    eine endliche Körpererweiterung von <math|<with|font|Bbb|Q>> und daher
    algebraisch. Insbesondere ist dann <math|<around*|(|\<pi\>-\<mathe\>|)><rsup|2>=<around*|(|\<pi\>+\<mathe\>|)><rsup|2>-4
    <around*|(|\<pi\>\<cdot\>\<mathe\>|)>> algebraisch über
    <math|<with|font|Bbb|Q>> und folglich auch <math|\<pi\>-\<mathe\>>.
    Daraus ergibt sich dann aber der Widerspruch, dass <math|\<pi\>>
    algebraisch über <math|<with|font|Bbb|Q>> ist.

    (4) Sei <math|\<zeta\><rsub|p>\<assign\>\<mathe\><rsup|2 \<pi\>
    <sqrt|-1>/p>> für eine Primzahl <math|p\<in\><with|font|Bbb|P>> die
    <em|<math|p>-te primitive Einheitswurzel>. Dann ist
    <math|\<zeta\><rsub|p>> Nullstelle des rationalen Polynoms
    <math|X<rsup|p>-1> und damit algebraisch über <math|<with|font|Bbb|Q>>.
    Da <math|X<rsup|p>-1=<around*|(|X-1|)>\<cdot\>\<Phi\><rsub|p>> und
    <math|\<zeta\><rsub|p>\<neq\>1> für das zyklotomische Polynom
    <math|\<Phi\><rsub|p>> aus Beispiel <reference|eisenstein-beispiele>
    gilt, folgt, dass <math|\<Phi\><rsub|p>> sogar das Minimalpolynom von
    <math|\<zeta\><rsub|p>> über <math|<with|font|Bbb|Q>> ist. Aus Satz
    <reference|algebraisch-koerpererweiterung-satz> folgt also

    <\equation*>
      <with|font|Bbb|Q><around*|(|\<zeta\><rsub|p>|)>=<big|oplus><rsub|k=0><rsup|p-2><with|font|Bbb|Q>
      \<zeta\><rsub|p><rsup|k>
    </equation*>

    (mit der Notation aus Definition <reference|ganzheitsbasis>) und ferner

    <\equation*>
      <with|font|Bbb|Q><around*|[|X|]>/<around*|(|\<Phi\><rsub|p>|)>\<cong\><with|font|Bbb|Q><around*|(|\<zeta\><rsub|p>|)>
    </equation*>

    mit <math|<around*|[|<with|font|Bbb|Q><around*|(|\<zeta\><rsub|p>|)>
    :<with|font|Bbb|Q>|]>=p-1>, was die Bezeichnung \R<em|Kreisteilungskörper
    vom Grad <math|p-1>>\P rechtfertigt.

    (5) Sei <math|d\<in\><with|font|Bbb|Z>\<setminus\><around*|{|0,1|}>> eine
    quadratfreie ganze Zahl. Dann ist <math|\<omega\><rsub|d>> algebraisch,
    <math|<with|font|Bbb|Q><around*|(|\<omega\><rsub|d>|)>> also eine
    algebraische Körpererweiterung von <math|<with|font|Bbb|Q>> und
    <math|<with|font|Bbb|Q><around*|[|X|]>/<around*|(|\<varphi\>|)>\<cong\><with|font|Bbb|Q><around*|(|\<omega\><rsub|d>|)>>
    für das Minimalpolynom <math|\<varphi\>> von <math|\<omega\><rsub|d>>.
    Doch wir haben gesehen (Diskussion vor Definition
    <reference|quadratischer-zahlkoerper>), dass <math|p<rsub|d>> das
    Minimalpolynom von <math|\<omega\><rsub|d>> in <math|<with|font|Bbb|Q>>
    ist, also erhalten wir die bekannte Beziehung
    <math|<with|font|Bbb|Q><around*|[|X|]>/<around*|(|p<rsub|d>|)>\<cong\><with|font|Bbb|Q><around*|(|\<omega\><rsub|d>|)>=<with|font|Bbb|Q><around*|(|<sqrt|d>|)>><\footnote>
      Für <math|d=-3> erhalten wir sogar, da <math|2
      \<zeta\><rsub|3>+1=<sqrt|-3>>, dass
      <math|<with|font|Bbb|Q><around*|(|<sqrt|-3>|)>=<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3>|)>>.
    </footnote>.
  </example>

  Der Begriff der algebraischen Körpererweiterung ist \Rtransitiv\P:

  <\lemma>
    <label|transitivität-algebraisch>Seien <math|K\<subseteq\>M\<subseteq\>L>
    Körpererweiterungen. Ist <math|\<alpha\>\<in\>L> algebraisch über
    <math|M> und ist <math|M :K> algebraisch, so ist auch <math|\<alpha\>>
    algebraisch über <math|K>. Insbesondere ist die Erweiterung <math|L :K>
    genau dann algebraisch, wenn <math|L :M> und <math|M :K> algebraisch
    sind.
  </lemma>

  <\proof>
    Sei <math|\<varphi\>=<big|sum><rsub|i=0><rsup|n>a<rsub|i> X<rsup|i>> das
    Minimalpolynom von <math|\<alpha\>> über <math|M>. Dann ist
    <math|\<alpha\>> über dem Teilkörper <math|K<around*|(|a<rsub|0>,\<ldots\>,a<rsub|n>|)>>
    von <math|M> algebraisch, sodass <math|<around*|[|K<around*|(|a<rsub|0>,\<ldots\>,a<rsub|n>,\<alpha\>|)>
    :K<around*|(|a<rsub|0>,\<ldots\>,a<rsub|n>|)>|]>\<less\>\<infty\>> nach
    Satz <reference|algebraisch-koerpererweiterung-satz>. Nach Folgerung
    <reference|algebraisch-koerpererweiterung-folgerung> ist auch
    <math|<around*|[|K<around*|(|a<rsub|0>,\<ldots\>,a<rsub|n>|)>
    :K|]>\<less\>\<infty\>>, wegen Lemma <reference|turm-regel> also
    insbesondere <math|<around*|[|K<around*|(|a<rsub|0>,\<ldots\>,a<rsub|n>,\<alpha\>|)>
    :K|]>\<less\>\<infty\>>. Wegen Proposition
    <reference|endliche-koe-erweiterung-algebraisch> ist
    <math|K<around*|(|a<rsub|0>,\<ldots\>,a<rsub|n>,\<alpha\>|)>> algebraisch
    über <math|K>, insbesondere also <math|\<alpha\>> algebraisch über
    <math|K>.
  </proof>

  In Definition <reference|algebraisch-abgeschlossen> haben wir die
  algebraische Abgeschlossenheit definiert. Wir wollen diesen Begriff nun
  weiter ausführen.

  <\definition>
    (1) Es sei <math|K :<with|font|Bbb|Q>> eine endliche Körpererweiterung.
    Dann heiÿt <math|K> <em|(algebraischer)<\footnote>
      Da seine Elemente nach Proposition <reference|endliche-koe-erweiterung-algebraisch>
      alle algebraisch sind.
    </footnote> Zahlkörper>.

    (2) Es sei <math|K> ein Körper, <math|K<rprime|'> :K> eine algebraisch
    abgeschlossene Körpererweiterung und <math|\<Xi\>\<assign\><around*|{|\<alpha\>\<in\>K<rprime|'>
    <around*|\|||\<nobracket\>> \<alpha\><text| alg. über >K|}>>. Dann heiÿt
    <math|<wide|K|\<bar\>>\<assign\>K<around*|(|\<Xi\>|)>> der
    <em|algebraische Abschluss von <math|K> in <math|K<rprime|'>>>.

    <space|1em>Ist <math|K=<with|font|Bbb|Q>> und
    <math|K<rprime|'>=<with|font|Bbb|C>>, so nennt man
    <math|<wide|<with|font|Bbb|Q>|\<bar\>>> schlicht den Körper der
    <em|algebraischen Zahlen> und <math|\<alpha\>\<in\><with|font|Bbb|C>>
    <em|algebraisch>, wenn es algebraisch über <math|<with|font|Bbb|Q>> ist.
    Ansonsten nennt man <math|\<alpha\>> <em|transzendent>.
  </definition>

  Die Bezeichnung \Ralgebraischer Abschluss\P ist angebracht:

  <\lemma>
    <label|algebraischer-abschluss-lemma>Sei <math|K> ein Körper,
    <math|K<rprime|'> :K> eine algebraisch abgeschlossene Körpererweiterung.
    Dann gilt:

    <\indent>
      (1) Ist <math|\<Xi\>\<assign\><around*|{|\<alpha\>\<in\>K<rprime|'>
      <around*|\|||\<nobracket\>> \<alpha\><text| alg. über <math|K>>|}>>, so
      gilt <math|<wide|K|\<bar\>>=\<Xi\>>.

      (2) <math|<wide|K|\<bar\>>> ist algebraisch über <math|K>.

      (3) <math|<wide|K|\<bar\>>> ist algebraisch abgeschlossen.
    </indent>
  </lemma>

  <\proof>
    (1) Per Definition gilt <math|\<Xi\>\<subseteq\><wide|K|\<bar\>>>. Seien
    umgekehrt <math|\<alpha\>,\<beta\>\<in\>\<Xi\>>; wenn wir zeigen können,
    dass auch <math|\<alpha\>+\<beta\>,\<alpha\>\<cdot\>\<beta\>,\<alpha\><rsup|-1>>
    in <math|\<Xi\>> liegen, i.e. <math|\<Xi\>> ein Körper ist, so folgt aus
    der Minimalität von <math|K<around*|(|\<Xi\>|)>> unmittelbar, dass
    <math|K<around*|(|\<Xi\>|)>\<subseteq\>\<Xi\>>. In der Tat,
    <math|K<around*|(|\<alpha\>,\<beta\>|)>> ist nach Proposition
    <reference|endliche-koe-erweiterung-algebraisch> eine endliche
    Körpererweiterung, daher algebraisch und somit sind auch
    <math|\<alpha\>+\<beta\>,\<alpha\>\<cdot\>\<beta\>> und
    <math|\<alpha\><rsup|-1>> algebraisch über <math|K>.

    (2) Das folgt unmittelbar aus (1).

    (3) Sei <math|f\<in\><wide|K|\<bar\>><around*|[|X|]>> ein beliebiges
    nichtkonstantes Polynom. Da <math|<wide|K|\<bar\>>\<subseteq\>K<rprime|'>>,
    hat <math|f> eine Nullstelle <math|\<alpha\>\<in\>K<rprime|'>> und
    <math|\<alpha\>> ist algebraisch über <math|<wide|K|\<bar\>>>. Da
    <math|<wide|K|\<bar\>>> algebraisch über <math|K> ist, nach (2), folgt
    aus Lemma <reference|transitivität-algebraisch>, dass <math|\<alpha\>>
    algebraisch über <math|K> ist, also <math|\<alpha\>\<in\>\<Xi\>>. Aber
    wegen (1) gilt <math|<wide|K|\<bar\>>=\<Xi\>>, also hat <math|f> eine
    Nullstelle in <math|<wide|K|\<bar\>>>.\ 
  </proof>

  <\example>
    (1) Es gilt <math|<with|font|Bbb|Q>\<subseteq\><wide|<with|font|Bbb|Q>|\<bar\>>\<subseteq\><with|font|Bbb|C>>.
    Ersetzen wir in Beispiel <reference|r-q-koeerw-unendlich>
    \R<math|<with|font|Bbb|R>>\P durch \R<math|<wide|<with|font|Bbb|Q>|\<bar\>>>\P,
    so sehen wir, dass <math|<wide|<with|font|Bbb|Q>|\<bar\>>
    :<with|font|Bbb|Q>> eine unendliche Körpererweiterung von
    <math|<with|font|Bbb|Q>> ist. Die Umkehrung von Proposition
    <reference|endliche-koe-erweiterung-algebraisch> gilt also nicht: Es
    existieren algebraische Körpererweiterungen, die unendlich sind.

    (2) Sind <math|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>\<in\><with|font|Bbb|C>>
    algebraisch, dann ist <math|K\<assign\><with|font|Bbb|Q><around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
    ein algebraischer Zahlkörper mit <math|<with|font|Bbb|Q>\<subseteq\>K\<subseteq\><wide|<with|font|Bbb|Q>|\<bar\>>\<subseteq\><with|font|Bbb|C>>.
    Es gilt unter Anwendung von Lemma <reference|transitivität-algebraisch>,
    dass <math|<wide|K|\<bar\>>=<wide|<with|font|Bbb|Q>|\<bar\>>>. \ Da
    <math|K :<with|font|Bbb|Q>> endlich ist, folgt, dass der algebraische
    Abschluss endlicher Körpererweiterungen nicht unbedingt endlich sein
    muss. (Offenbar ist diese Beispiel nicht das einfachste.)

    (3) Mit Hilfe des Auswahlaxioms kann man zeigen, dass jeder Körper
    <math|K> einen algebraischen Abschluss besitzt, d.h. es existiert ein
    kleinster Körper <math|<wide|K|\<bar\>>>, der <math|K> enthält und
    algebraisch abgeschlossen ist.

    (4) Ist <math|K<rprime|'> :K> algebraisch abgeschlossen, so können wir im
    Allgemeinen nicht folgern, dass <math|K<rprime|'>> algebraisch über
    <math|K> ist, sei beispielsweise <math|K<rprime|'>=<with|font|Bbb|C>> und
    <math|K=<with|font|Bbb|Q>>.
  </example>

  Viele der Begriffe, die wir in diesem Abschnitt eingeführt haben, sind
  Verallgemeinerungen von Konzepten, die uns schon im Studium der
  quadratischen Zahlkörper begegnet sind. In Proposition
  <reference|od-ganzer-abschluss-von-z> haben wir gezeigt, dass
  <math|<with|font|cal|O><rsub|d>> der ganze Abschluss von
  <math|<with|font|Bbb|Z>> in <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
  ist. Gibt es auch ein Analogon davon in allgemeinen Zahlkörpern? Dazu ein
  kurzer Überblick; eine tiefgehendere Untersuchung dieser Objekte ist vor
  allem Gegenstand der algebraischen Zahlentheorie.

  <\definition>
    Es sei <math|K> ein algebraischer Zahlkörper. Dann heiÿt

    \;

    <\equation*>
      <with|font|cal|O><rsub|K>\<assign\><around*|{|\<alpha\>\<in\>K
      <around*|\|||\<nobracket\>> \<exists\>f\<in\><with|font|Bbb|Z><around*|[|X|]>
      :<text|monisch, <math|f<around*|(|\<alpha\>|)>=0>>|}>
    </equation*>

    der <em|ganze Abschluss> (oder <em|Ganzabschluss>) <em|von
    <math|<with|font|Bbb|Z>> in <math|K>>.
  </definition>

  Man kann zeigen:

  <\theorem>
    Sei <math|K> ein algebraischer Zahlkörper. Dann ist
    <math|<with|font|cal|O><rsub|K>> ein noetherscher Ring und heiÿt <em|Ring
    der ganzen Zahlen von <math|K>>.
  </theorem>

  Zum Abschluss noch einige interessante Resultate über
  <math|<with|font|cal|O><rsub|K>>, die auch den nächsten Abschnitt
  motivieren.

  <\theorem>
    <dueto|Weinberger>Unter der Annahme der Verallgemeinerten Riemann'schen
    Vermutung gilt: Enthält <math|<with|font|cal|O><rsub|K>> unendlich viele
    Einheiten, dann ist <math|<with|font|cal|O><rsub|K>> genau dann
    euklidisch, wenn es ein HIR ist.
  </theorem>

  Ebenso kann man zeigen, dass <math|<with|font|cal|O><rsub|K><rsup|\<ast\>>>
  nur für <math|K=<with|font|Bbb|Q>> und <math|K=<with|font|Bbb|Q><around*|(|<sqrt|d>|)>>
  für <math|d\<less\>0>, quadratfrei, endlich ist. Das bedeutet, dass die
  Beispiele für Hauptidealringe, die nicht euklidisch sind, unter <em|allen>
  <math|<with|font|cal|O><rsub|K>> genau <math|<with|font|cal|O><rsub|-19>,<with|font|cal|O><rsub|-43>,<with|font|cal|O><rsub|-67>>
  und <math|<with|font|cal|O><rsub|-163>> sind. Allerdings ist das unter der
  Annahme der Riemann'schen Vermutung. Was weiÿ man ohne Annahme dieser?

  <\theorem>
    <dueto|Dirichlet'scher Einheitensatz>Sei <math|K> ein algebraischer
    Zahlkörper. Dann gilt

    <\equation*>
      <with|font|cal|O><rsub|K><rsup|\<ast\>>\<cong\><around*|{|\<alpha\>\<in\>K
      <around*|\|||\<nobracket\>> \<exists\>k\<in\><with|font|Bbb|N>
      :\<alpha\><rsup|k>=1|}>\<times\><with|font|Bbb|Z><rsup|\<nu\>>
    </equation*>

    für ein <math|\<nu\>\<geq\>0>.
  </theorem>

  <\proof>
    Ein zugänglicher Beweis ist in<nbsp><cite|Marcus2018> zu finden.
  </proof>

  Das bedeutet insbesondere, dass <math|<with|font|cal|O><rsub|K><rsup|\<ast\>>>
  genau dann unendlich ist, wenn der Exponent <math|\<nu\>> gröÿer als Null
  ist. Das führt uns zu folgendem Ergebnis:

  <\theorem>
    <dueto|Murty, Harper>Ist <math|\<nu\>\<geq\>4> und ist <math|K> eine
    Galoiserweiterung der rationalen Zahlen, so ist der Ring
    <math|<with|font|cal|O><rsub|K>> genau dann euklidisch, wenn er ein
    Hauptidealring ist.
  </theorem>

  <section|Galoistheorie>

  Abgesehen davon, dass wir nicht über die notwendigen Mittel verfügen, diese
  Sätze rigoros zu beweisen, bleiben noch zwei Fragen offen: Was ist eine
  Galoiserweiterung? Wie ist die Isomorphie im Dirichlet'schen Einheitensatz
  zu verstehen? Folgendes Lemma ebnet den Weg zur Klärung dieser Fragen.

  <\lemma>
    <label|galoiserweiterung-bedingung>Es seien <math|L :K> und <math|F :K>
    Körpererweiterungen und <math|\<sigma\> :F\<rightarrow\>L> ein
    Körperhomomorphismus. Dann ist <math|\<sigma\>> genau dann
    <math|K>-linear, wenn <math|\<sigma\><around*|(|k|)>=k> für alle
    <math|k\<in\>K>.
  </lemma>

  <\proof>
    Es sei <math|\<sigma\>> zunächst <math|K>-linear. Dann ist
    <math|\<sigma\><around*|(|k|)>=\<sigma\><around*|(|k\<cdot\>1|)>=k\<cdot\>\<sigma\><around*|(|1|)>=k>
    für beliebiges <math|k\<in\>K>. Umgekehrt, falls
    <math|\<sigma\><around*|(|k|)>=k> für alle <math|k\<in\>K> gilt, so seien
    <math|k,k<rprime|'>\<in\>K> sowie <math|u,v\<in\>F> beliebig. Dann gilt

    <\equation*>
      \<sigma\><around*|(|k u+k<rprime|'> v|)>=\<sigma\><around*|(|k|)>
      \<sigma\><around*|(|u|)>+\<sigma\><around*|(|k<rprime|'>|)>
      \<sigma\><around*|(|v|)>=k \<sigma\><around*|(|u|)>+k<rprime|'>
      \<sigma\><around*|(|v|)>,
    </equation*>

    also ist <math|\<sigma\>> auch <math|K>-linear.
  </proof>

  <\definition>
    Es seien <math|L :K> und <math|F :K> Körpererweiterungen und
    <math|\<sigma\> :F\<rightarrow\>L> ein Körperhomomorphismus, der die
    äquivalenten Bedingungen aus Lemma <reference|galoiserweiterung-bedingung>
    erfüllt. Dann heiÿt <math|\<sigma\>> ein <em|<math|K>-Homomorphismus von
    <math|F> nach <math|L>>. Ist <math|F=L> und <math|\<sigma\>> sogar ein
    Isomorphismus, so nennen wir <math|\<sigma\>> einen
    <em|<math|K>-Automorphismus von <math|L>>.

    <space|1em>Wir schreiben

    <\equation*>
      <with|font-family|rm|Gal><around*|(|L/K|)>\<assign\><around*|{|\<sigma\>:L<wide|\<rightarrow\>|~>
      L <around*|\|||\<nobracket\>> <text|<math|K>-Automorphismus>|}>
    </equation*>

    für die Menge aller <math|K>-Automorphismen von <math|L> und nennen diese
    Menge die <em|Galois-Gruppe><\footnote>
      Évariste Galois (1811 \U 1832), französischer Mathematiker
    </footnote> der Körpererweiterung <math|L :K>.
  </definition>

  <\example>
    <label|galoisgruppe-beispiel>(1) Wir berechnen die Galois-Gruppe von
    <math|<with|font|Bbb|C> :<with|font|Bbb|R>>. Sei <math|\<sigma\>
    :<with|font|Bbb|C>\<rightarrow\><with|font|Bbb|C>> ein beliebiger
    <math|<with|font|Bbb|R>>-Automorphismus der komplexen Zahlen. Dann gilt
    für eine komplexe Zahl <math|a+b <sqrt|-1>>,
    <math|a,b\<in\><with|font|Bbb|R>>,

    <\equation*>
      \<sigma\><around*|(|a+b <sqrt|-1>|)>=\<sigma\><around*|(|a|)>+\<sigma\><around*|(|b|)>
      \<sigma\><around*|(|<sqrt|-1>|)>=a+b \<sigma\><around*|(|<sqrt|-1>|)>.
    </equation*>

    Da <math|\<sigma\><around*|(|<sqrt|-1>|)><rsup|2>=-1> erfüllen muss,
    haben wir die zwei Möglichkeiten <math|\<sigma\><around*|(|<sqrt|-1>|)>=<sqrt|-1>>
    und <math|\<sigma\><around*|(|<sqrt|-1>|)>=-<sqrt|-1>>. Das heiÿt die
    Galois-Gruppe von <math|<with|font|Bbb|C> :<with|font|Bbb|R>> hat zwei
    Elemente: Die Identitäts- und Konjugationsabbildungen.

    (2) In Beispiel <reference|basis-von-q23> haben wir die Basis
    <math|<around*|{|1,<sqrt|2>,<sqrt|3>,<sqrt|6>|}>> von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>
    :<with|font|Bbb|Q>> bestimmt; was ist die Galois-Gruppe dieser
    Körpererweiterung? Sei <math|\<sigma\>
    :<with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>\<rightarrow\><with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>>
    ein <math|<with|font|Bbb|Q>>-Automorphismus von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2>,<sqrt|3>|)>>. Dann gilt für
    ein beliebiges Element <math|a+b <sqrt|2>+c <sqrt|3>+d <sqrt|6>> aus
    diesem Körper

    <\equation*>
      \<sigma\><around*|(|a+b <sqrt|2>+c <sqrt|3>+d <sqrt|6>|)>=a+b
      \<sigma\><around*|(|<sqrt|2>|)>+c \<sigma\><around*|(|<sqrt|3>|)>+d
      \<sigma\><around*|(|<sqrt|6>|)>.
    </equation*>

    Die Einschränkung <math|\<sigma\><around*|(|<sqrt|2>|)><rsup|2>=2,\<sigma\><around*|(|<sqrt|3>|)><rsup|2>=3,\<sigma\><around*|(|<sqrt|6>|)><rsup|2>=6>
    liefert uns nun vier Möglichkeiten, i.e.

    <\equation*>
      \<sigma\><around*|(|<sqrt|2>|)>=\<pm\><sqrt|2>,\<sigma\><around*|(|<sqrt|3>|)>=\<pm\><sqrt|3>,
    </equation*>

    wobei <math|\<sigma\><around*|(|<sqrt|6>|)>=\<sigma\><around*|(|<sqrt|2>|)>
    \<sigma\><around*|(|<sqrt|3>|)>> bereits durch die Wahl von
    <math|\<sigma\><around*|(|<sqrt|2>|)>> und
    <math|\<sigma\><around*|(|<sqrt|3>|)>> festgelegt ist.

    (3) Wir zeigen, dass die Galoisgruppe von <math|<with|font|Bbb|R>
    :<with|font|Bbb|Q>> trivial ist. Sei <math|\<sigma\>
    :<with|font|Bbb|R>\<rightarrow\><with|font|Bbb|R>> ein
    <math|<with|font|Bbb|Q>>-Automorphismus. Falls <math|x\<gtr\>0>, so gilt
    <math|\<sigma\><around*|(|x|)>=\<sigma\><around*|(|<around*|(|<sqrt|x>|)><rsup|2>|)>=\<sigma\><around*|(|<sqrt|x>|)><rsup|2>\<gtr\>0>.
    Falls also <math|x,y\<in\><with|font|Bbb|R>> mit <math|x\<less\>y>, so
    gilt <math|\<sigma\><around*|(|y|)>-\<sigma\><around*|(|x|)>=\<sigma\><around*|(|y-x|)>\<gtr\>0>,
    d.h. <math|\<sigma\><around*|(|x|)>\<less\>\<sigma\><around*|(|y|)>>.

    <space|1em>Sei nun <math|x\<in\><with|font|Bbb|R>> beliebig; wir wollen
    zeigen, dass <math|\<sigma\><around*|(|x|)>=x>. Offenbar gilt das, wenn
    <math|x\<in\><with|font|Bbb|Q>>; sei also
    <math|x\<notin\><with|font|Bbb|Q>>. Dann können wir eine Folge
    <math|<around*|(|x<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>> in
    <math|<with|font|Bbb|Q>> finden, sodass <math|x<rsub|n>\<rightarrow\>x>
    und <math|x<rsub|n>\<less\>x> für alle <math|n\<geq\>1>. Ähnlich finden
    wir eine Folge <math|<around*|(|y<rsub|n>|)><rsub|n\<in\><with|font|Bbb|N>>>
    in <math|<with|font|Bbb|Q>>, sodass <math|y<rsub|n>\<rightarrow\>x> und
    <math|y<rsub|n>\<gtr\>x> für alle <math|n\<geq\>1>. Es folgt, dass
    <math|x<rsub|n>\<less\>x\<less\>y<rsub|n>> für alle <math|n\<geq\>1>,
    insbesondere <math|x<rsub|n>=\<sigma\><around*|(|x<rsub|n>|)>\<less\>\<sigma\><around*|(|x|)>\<less\>\<sigma\><around*|(|y<rsub|n>|)>=y<rsub|n>>,
    sodass aus der Eindeutigkeit von Grenzwerten folgt,
    <math|\<sigma\><around*|(|x|)>=x>.
  </example>

  <\lemma>
    <label|galoisgruppe-ist-gruppe>Es sei <math|L :K> eine Körpererweiterung.
    Dann ist <math|<with|font-family|rm|Gal><around*|(|L/K|)>> eine Gruppe
    bezüglich der Zusammensetzung von Abbildungen. Insbesondere gilt
    <math|<with|font-family|rm|Gal><around*|(|L/K|)>\<leq\>S<around*|(|L|)>>.
  </lemma>

  <\proof>
    Seien <math|\<sigma\><rsub|1>,\<sigma\><rsub|2>
    :L<wide|\<rightarrow\>|~>L> zwei <math|K>-Automorphismen. Wir müssen
    zeigen, dass <math|\<sigma\><rsub|1>\<circ\>\<sigma\><rsub|2>\<in\><with|font-family|rm|Gal><around*|(|L/K|)>>
    und <math|\<sigma\><rsub|1><rsup|-1>\<in\><with|font-family|rm|Gal><around*|(|L/K|)>>.
    Seien <math|u<rsub|1>,u<rsub|2>\<in\>L>; dann existieren
    <math|v<rsub|1>,v<rsub|2>\<in\>L> mit
    <math|\<sigma\><rsub|1><around*|(|v<rsub|1>|)>=u<rsub|1>> und
    <math|\<sigma\><rsub|1><around*|(|v<rsub|2>|)>=u<rsub|2>>. Daraus folgt

    <\equation*>
      \<sigma\><rsub|1><rsup|-1><around*|(|u<rsub|1>+u<rsub|2>|)>=\<sigma\><rsub|1><rsup|-1><around*|(|\<sigma\><rsub|1><around*|(|v<rsub|1>|)>+\<sigma\><rsub|1><around*|(|v<rsub|2>|)>|)>=\<sigma\><rsub|1><rsup|-1><around*|(|\<sigma\><rsub|1><around*|(|v<rsub|1>+v<rsub|2>|)>|)>=v<rsub|1>+v<rsub|2>=\<sigma\><rsub|1><rsup|-1><around*|(|u<rsub|1>|)>+\<sigma\><rsub|1><rsup|-1><around*|(|u<rsub|2>|)>
    </equation*>

    und ähnlich <math|\<sigma\><rsub|1><rsup|-1><around*|(|u<rsub|1>\<cdot\>u<rsub|2>|)>=\<sigma\><rsub|1><rsup|-1><around*|(|u<rsub|1>|)>\<cdot\>\<sigma\><rsub|1><rsup|-1><around*|(|u<rsub|2>|)>>.
    Ferner gilt <math|\<sigma\><rsub|1><rsup|-1><around*|(|k|)>=\<sigma\><rsub|1><rsup|-1><around*|(|\<sigma\><rsub|1><around*|(|k|)>|)>=k>
    für alle <math|k\<in\>K>, also tatsächlich
    <math|\<sigma\><rsub|1><rsup|-1>\<in\><with|font-family|rm|Gal><around*|(|L/K|)>>.
    Auÿerdem sehen wir

    <math|<align*|<tformat|<table|<row|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<sigma\><rsub|2>|)><around*|(|u<rsub|1>+u<rsub|2>|)>=>|<cell|\<sigma\><rsub|1><around*|(|\<sigma\><rsub|2><around*|(|u<rsub|1>+u<rsub|2>|)>|)>=\<sigma\><rsub|1><around*|(|\<sigma\><rsub|2><around*|(|u<rsub|1>|)>+\<sigma\><rsub|2><around*|(|u<rsub|2>|)>|)>>>|<row|<cell|=>|<cell|\<sigma\><rsub|1><around*|(|\<sigma\><rsub|2><around*|(|u<rsub|1>|)>|)>+\<sigma\><rsub|1><around*|(|\<sigma\><rsub|2><around*|(|u<rsub|2>|)>|)>>>|<row|<cell|=>|<cell|<around*|(|\<sigma\><rsub|1>\<circ\>\<sigma\><rsub|2>|)><around*|(|u<rsub|1>|)>+<around*|(|\<sigma\><rsub|1>\<circ\>\<sigma\><rsub|2>|)><around*|(|u<rsub|2>|)>>>>>>>

    und <math|<around*|(|\<sigma\><rsub|1>\<circ\>\<sigma\><rsub|2>|)><around*|(|k|)>=\<sigma\><rsub|1><around*|(|\<sigma\><rsub|2><around*|(|k|)>|)>=\<sigma\><rsub|1><around*|(|k|)>=k>.
    Ähnlich zeigt man, dass <math|\<sigma\><rsub|1>\<circ\>\<sigma\><rsub|2>>
    mit der Multiplikation veträglich ist. Da die Identitätsabbildung auf
    <math|L> offenbar ein <math|K>-Automorphismus ist, folgt, dass
    <math|<with|font-family|rm|Gal><around*|(|L/K|)>> eine Untergruppe von
    <math|S<around*|(|L|)>>, der Bijektionen auf <math|L>, ist (siehe auch
    Beispiel <reference|restklassen-modulo-m> (4)).
  </proof>

  <\lemma>
    <label|galois-erweiterung-lemma>Es sei <math|K\<subseteq\>M\<subseteq\>L>
    eine Körpererweiterung mit Zwischenkörper <math|M> und
    <math|H\<leq\><with|font-family|rm|Gal><around*|(|L/K|)>> eine
    Untergruppe. Dann gilt:

    <\indent>
      (1) <math|L<rsup|H>\<assign\><around*|{|\<ell\>\<in\>L
      <around*|\|||\<nobracket\>> \<forall\>\<sigma\>\<in\>H
      :\<sigma\><around*|(|\<ell\>|)>=\<ell\>|}>> ist ein Zwischenkörper von
      <math|K\<subseteq\>L>, genannt der <em|Fixkörper von <math|H> in
      <math|L>>.

      (2) <math|<with|font-family|rm|Gal><around*|(|L/M|)>> ist eine
      Untergruppe von <math|<with|font-family|rm|Gal><around*|(|L/K|)>>.
    </indent>
  </lemma>

  <\proof>
    (1) Seien <math|\<ell\><rsub|1>,\<ell\><rsub|2>\<in\>L<rsup|H>> und
    <math|\<sigma\>\<in\>H> beliebig. Dann gilt

    <\equation*>
      \<sigma\><around*|(|\<ell\><rsub|1>-\<ell\><rsub|2>|)>=\<sigma\><around*|(|\<ell\><rsub|1>|)>-\<sigma\><around*|(|\<ell\><rsub|2>|)>=\<ell\><rsub|1>-\<ell\><rsub|2>,<space|1em>\<sigma\><around*|(|\<ell\><rsub|1>\<cdot\>\<ell\><rsub|2><rsup|-1>|)>=\<sigma\><around*|(|\<ell\><rsub|1>|)>\<cdot\>\<sigma\><around*|(|\<ell\><rsub|2><rsup|-1>|)>=\<ell\><rsub|1>\<cdot\>\<ell\><rsub|2><rsup|-1>
    </equation*>

    also handelt es sich tatsächlich um einen Teilkörper von <math|L>. Da
    <math|\<sigma\><around*|(|k|)>=k> für alle <math|k\<in\>K> per Definition
    von <math|H> folgt insbesondere <math|K\<subseteq\>L<rsup|H>\<subseteq\>L>.

    (2) Nach Lemma <reference|galoisgruppe-ist-gruppe> ist
    <math|<with|font-family|rm|Gal><around*|(|L/M|)>> tatsächlich eine
    Gruppe. Wir müssen also nur zeigen, dass
    <math|<with|font-family|rm|Gal><around*|(|L/M|)>\<subseteq\><with|font-family|rm|Gal><around*|(|L/K|)>>.
    Aber ist <math|\<sigma\>\<in\><with|font-family|rm|Gal><around*|(|L/M|)>>
    und <math|k\<in\>K> beliebig, so folgt <math|k\<in\>M> und daher
    <math|\<sigma\><around*|(|k|)>=k>, da <math|\<sigma\>> ein
    <math|M>-Automorphismus ist.
  </proof>

  <\definition>
    Es sei <math|L :K> eine Körpererweiterung. Ist
    <math|K=L<rsup|<with|font-family|rm|Gal><around*|(|L/K|)>>>, dann heiÿt
    <math|L :K> eine <em|Galoiserweiterung> bzw. <em|galoissch>.
  </definition>

  <\example>
    <label|galoiserweiterung-beispiele>(1) Sei <math|L :K> eine
    Körpererweiterung und <math|K<rsub|0>\<assign\>L<rsup|<with|font-family|rm|Gal><around*|(|L/K|)>>>.
    Dann ist <math|K\<subseteq\>K<rsub|0>> und <math|L :K<rsub|0>> eine
    Galoiserweiterung mit <math|<with|font-family|rm|Gal><around*|(|L/K<rsub|0>|)>=<with|font-family|rm|Gal><around*|(|L/K|)>>.

    (2) Für <math|d\<in\><with|font|Bbb|Z>\<setminus\><around*|{|0,1|}>> ist
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)> :<with|font|Bbb|Q>> eine
    Galoiserweiterung. In der Tat, offenbar fixiert jeder
    <math|<with|font|Bbb|Q>>-Automorphismus von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|d>|)>> die rationalen Zahlen
    während die Konjugationsabbildung ein Automorphismus ist, der alle
    anderen Elemente \Rbewegt\P. Insbesondere erhalten wir so unendlich viele
    Galoiserweiterungen von <math|<with|font|Bbb|Q>>.

    (3) Aus Beispiel <reference|galoisgruppe-beispiel> (1) folgt, dass
    <math|<with|font|Bbb|C> :<with|font|Bbb|R>> galoissch ist.

    (4) Sei <math|K> ein unendlicher Körper sodass
    <math|1+1+\<cdots\>+1\<neq\>0> (formal,
    <math|<with|font-family|rm|char><around*|(|K|)>=0>). Dann ist
    <math|K<around*|(|X|)> :K> eine Galoiserweiterung; beispielsweise
    induziert die Substitution <math|X\<mapsto\>X+1> einen
    <math|K>-Automorphismus von <math|K<around*|(|X|)>> mit Fixkörper
    <math|K>, da <math|K> per Annahme unendlich ist. Insbesondere folgt, dass
    <math|K<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)> :K> eine
    Galoiserweiterung ist.
  </example>

  Die Signifikanz von Galoiserweiterungen ist auf folgendes Resultat, genannt
  der \R<em|Hauptsatz der Galoistheorie>\P zurückzuführen:

  <\theorem>
    <dueto|Hauptsatz der Galoistheorie><label|hauptsatz-galoistheorie>Es sei
    <math|L :K> eine endliche Galoiserweiterung. Dann gibt es eine Bijektion
    zwischen der Menge der Zwischenkörper von <math|K\<subseteq\>L> und der
    Menge der Untergruppen von <math|<with|font-family|rm|Gal><around*|(|L/K|)>>,
    gegeben durch

    <math|<align*|<tformat|<table|<row|<cell|<around*|{|M
    <around*|\|||\<nobracket\>> K\<subseteq\>M\<subseteq\>L<text|
    Zwischenkörper>|}>\<rightarrow\>>|<cell|<around*|{|H
    <around*|\|||\<nobracket\>> H\<leq\><with|font-family|rm|Gal><around*|(|L/K|)><text|
    Untergruppe>|}>>>|<row|<cell|M\<mapsto\>>|<cell|<with|font-family|rm|Gal><around*|(|L/M|)>>>>>>>

    mit inverser Abbildung

    <\equation*>
      L<rsup|H>\<mapsfrom\>H.
    </equation*>
  </theorem>

  <\proof>
    Siehe<nbsp><cite|Milne2022>, Satz 3.17.
  </proof>

  <\example>
    Wir wollen alle Zwischenkörper von <math|<with|font|Bbb|Q>\<subseteq\><with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>>
    bestimmen. Das Minimalpolynom von <math|<sqrt|2|3>> über dem Körper
    <math|<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3>|)>> ist

    <\equation*>
      X<rsup|3>-2=<around*|(|X-<sqrt|2|3>|)> <around*|(|X-<sqrt|2|3>
      \<zeta\><rsub|3>|)> <around*|(|X-<sqrt|2|3>
      \<zeta\><rsub|3><rsup|2>|)>,
    </equation*>

    daher <math|<around*|[|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>
    :<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3>|)>|]>=3> und

    <\equation*>
      <around*|[|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>
      :<with|font|Bbb|Q>|]>=<around*|[|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>
      :<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3>|)>|]>\<cdot\><around*|[|<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3>|)>
      :<with|font|Bbb|Q>|]>=3\<cdot\>2=6.
    </equation*>

    Eine Basis von <math|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>>
    über <math|<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3>|)>> ist
    <math|<around*|{|1,<sqrt|2|3>,<sqrt|4|3>|}>> nach Satz
    <reference|algebraisch-koerpererweiterung-satz>. Weiterhin wissen wir,
    dass <math|<around*|{|1,\<zeta\><rsub|3>|}>> eine Basis von
    <math|<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3>|)>> über
    <math|<with|font|Bbb|Q>> ist. Ist also
    <math|\<alpha\>=\<alpha\><rsub|1>+\<alpha\><rsub|2>
    <sqrt|2|3>+\<alpha\><rsub|3> <sqrt|4|3>\<in\><with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>>,
    so haben wir <math|\<alpha\><rsub|1>=a<rsub|1>+b<rsub|1>
    \<zeta\><rsub|3>,\<alpha\><rsub|2>=a<rsub|2>+b<rsub|2> \<zeta\><rsub|3>>
    und <math|\<alpha\><rsub|3>=a<rsub|3>+b<rsub|3> \<zeta\><rsub|3>> für
    rationale <math|a<rsub|i>,b<rsub|i>>, <math|1\<leq\>i\<leq\>3>, sodass

    <math|<align*|<tformat|<table|<row|<cell|\<alpha\>=>|<cell|\<alpha\><rsub|1>+\<alpha\><rsub|2>
    <sqrt|2|3>+\<alpha\><rsub|3> <sqrt|4|3>>>|<row|<cell|=>|<cell|a<rsub|1>+b<rsub|1>
    \<zeta\><rsub|3>+<around*|(|a<rsub|2>+b<rsub|2> \<zeta\><rsub|3>|)>
    <sqrt|2|3>+<around*|(|a<rsub|3>+b<rsub|3> \<zeta\><rsub|3>|)>
    <sqrt|4|3>>>|<row|<cell|=>|<cell|a<rsub|1>+b<rsub|1>
    \<zeta\><rsub|3>+a<rsub|2> <sqrt|2|3>+b<rsub|2> \<zeta\><rsub|3>
    <sqrt|2|3>+a<rsub|3> <sqrt|4|3>+b<rsub|3> \<zeta\><rsub|3>
    <sqrt|4|3>,>>>>>>

    i.e. <math|<around*|{|1,<sqrt|2|3>,<sqrt|4|3>,\<zeta\><rsub|3>,\<zeta\><rsub|3>
    <sqrt|2|3>,\<zeta\><rsub|3> <sqrt|4|3>|}>> ist Erzeugendensystem von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>> als
    Vektorraum über <math|<with|font|Bbb|Q>> und sogar Basis.

    <space|1em>Wir berechnen nun die Galoisgruppe von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>
    :<with|font|Bbb|Q>>. Sei <math|\<sigma\>
    :<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>\<rightarrow\><with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>>
    ein beliebiger <math|<with|font|Bbb|Q>>-Automorphismus von
    <math|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>>. Mit
    <math|\<alpha\>> wie vorher, erhalten wir dann

    <math|<align*|<tformat|<table|<row|<cell|\<sigma\><around*|(|a<rsub|1>+b<rsub|1>
    \<zeta\><rsub|3>+a<rsub|2> <sqrt|2|3>+b<rsub|2> \<zeta\><rsub|3>
    <sqrt|2|3>+a<rsub|3> <sqrt|4|3>+b<rsub|3> \<zeta\><rsub|3>
    <sqrt|4|3>|)>=>|<cell|a<rsub|1>+b<rsub|1>
    \<sigma\><around*|(|\<zeta\><rsub|3>|)>+a<rsub|2>
    \<sigma\><around*|(|<sqrt|2|3>|)>+b<rsub|2>
    \<sigma\><around*|(|\<zeta\><rsub|3> <sqrt|2|3>|)>>>|<row|<cell|+>|<cell|a<rsub|3>
    \<sigma\><around*|(|<sqrt|4|3>|)>+b<rsub|3>
    \<sigma\><around*|(|\<zeta\><rsub|3> <sqrt|4|3>|)>,>>>>>>

    wobei wir <math|\<sigma\><around*|(|\<zeta\><rsub|3>|)><rsup|3>=1,\<sigma\><around*|(|<sqrt|2|3>|)><rsup|3>=2>
    fordern (und bemerken, dass <math|\<sigma\><around*|(|<sqrt|4|3>|)>> und
    <math|\<sigma\><around*|(|\<zeta\><rsub|3> <sqrt|2|3>|)>> damit
    automatisch bestimmt sind). Das liefert die Möglichkeiten

    <\equation*>
      \<sigma\><around*|(|\<zeta\><rsub|3>|)>=\<zeta\><rsub|3>,<space|1em>\<sigma\><around*|(|\<zeta\><rsub|3>|)>=\<zeta\><rsub|3><rsup|2>,<space|1em>\<sigma\><around*|(|<sqrt|2|3>|)>=<sqrt|2|3>,<space|1em>\<sigma\><around*|(|<sqrt|2|3>|)>=\<zeta\><rsub|3><sqrt|2|3>,<space|1em>\<sigma\><around*|(|<sqrt|2|3>|)>=\<zeta\><rsub|3><rsup|2>
      <sqrt|2|3>.
    </equation*>

    Die Galoisgruppe von <math|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>
    :<with|font|Bbb|Q>> hat also die sechs Elemente

    <math|<align*|<tformat|<table|<row|<cell|\<sigma\><rsub|1><around*|(|\<zeta\><rsub|3>|)>=\<zeta\><rsub|3>,>|<cell|<space|1em>\<sigma\><rsub|1><around*|(|<sqrt|2|3>|)>=<sqrt|2|3>,>>|<row|<cell|\<sigma\><rsub|2><around*|(|\<zeta\><rsub|3>|)>=\<zeta\><rsub|3><rsup|2>,>|<cell|<space|1em>\<sigma\><rsub|2><around*|(|<sqrt|2|3>|)>=<sqrt|2|3>,>>|<row|<cell|\<sigma\><rsub|3><around*|(|\<zeta\><rsub|3>|)>=\<zeta\><rsub|3>,>|<cell|<space|1em>\<sigma\><rsub|3><around*|(|<sqrt|2|3>|)>=\<zeta\><rsub|3>
    <sqrt|2|3>,>>|<row|<cell|\<sigma\><rsub|4><around*|(|\<zeta\><rsub|3>|)>=\<zeta\><rsub|3><rsup|2>,>|<cell|<space|1em>\<sigma\><rsub|4><around*|(|<sqrt|2|3>|)>=\<zeta\><rsub|3>
    <sqrt|2|3>,>>|<row|<cell|\<sigma\><rsub|5><around*|(|\<zeta\><rsub|3>|)>=\<zeta\><rsub|3>,>|<cell|<space|1em>\<sigma\><rsub|5><around*|(|<sqrt|2|3>|)>=\<zeta\><rsub|3><rsup|2>
    <sqrt|2|3>,>>|<row|<cell|\<sigma\><rsub|6><around*|(|\<zeta\><rsub|3>|)>=\<zeta\><rsub|3><rsup|2>,>|<cell|<space|1em>\<sigma\><rsub|6><around*|(|<sqrt|2|3>|)>=\<zeta\><rsub|3><rsup|2>
    <sqrt|2|3>.>>>>>>

    Nach dem Fundamentalsatz der Galoistheorie, entspricht jede Untergruppe
    dieser sechselementigen Gruppe einem Zwischenkörper
    <math|<with|font|Bbb|Q>\<subseteq\>K\<subseteq\><with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>>,
    wobei <math|K=<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)><rsup|H>>
    für eine Untergruppe <math|H\<leq\><with|font-family|rm|Gal><around*|(|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>/<with|font|Bbb|Q>|)>>.
    Also müssen wir die Untergruppen von <math|<with|font-family|rm|Gal><around*|(|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>/<with|font|Bbb|Q>|)>>
    bestimmen. Hier machen wir zwei Vorgriffe in die Gruppentheorie: Nach dem
    Satz von Lagrange (Proposition <reference|satz-von-lagrange>) haben die
    Untergruppen von <math|<with|font-family|rm|Gal><around*|(|<with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>/<with|font|Bbb|Q>|)>>
    entweder <math|2> oder <math|3> Elemente und diese sind nach Korollar
    <reference|primordnung-zyklisch> alle zyklisch. Somit erhalten wir die
    Untergruppen

    <\equation*>
      <around*|{|\<sigma\><rsub|1>|}>,<space|1em><around*|{|\<sigma\><rsub|1>,\<sigma\><rsub|2>|}>,<space|1em><around*|{|\<sigma\><rsub|1>,\<sigma\><rsub|3>,\<sigma\><rsub|5>|}>,<space|1em><around*|{|\<sigma\><rsub|1>,\<sigma\><rsub|4>|}>,<space|1em><around*|{|\<sigma\><rsub|1>,\<sigma\><rsub|6>|}>,<space|1em><around*|{|\<sigma\><rsub|1>,\<sigma\><rsub|2>,\<sigma\><rsub|3>,\<sigma\><rsub|4>,\<sigma\><rsub|5>,\<sigma\><rsub|6>|}>.
    </equation*>

    Diese entsprechen genau den Zwischenkörpern (der Reihenfolge nach)

    <\equation*>
      <with|font|Bbb|Q><around*|(|<sqrt|2|3>,\<zeta\><rsub|3>|)>,<with|font|Bbb|Q><around*|(|<sqrt|2|3>|)>,<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3>|)>,<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3><rsup|2>
      <sqrt|2|3>|)>,<with|font|Bbb|Q><around*|(|\<zeta\><rsub|3>
      <sqrt|2|3>|)>,<with|font|Bbb|Q>.
    </equation*>
  </example>

  Konsequenz des Hauptsatzes ist unter anderem folgender Satz:

  <\theorem>
    <label|endliche-gruppe-galois-gruppe>Jede endliche Gruppe <math|G> kann
    mit der Galoisgruppe einer Körpererweiterung <math|L :K> identifiziert
    werden.
  </theorem>

  Um ihn zu beweisen, werden wir uns erlauben einen Augenblick in die
  Gruppentheorie, die ausführlich im nächsten Kapitel behandelt wird,
  vorzugreifen. Es handelt sich um den bekannten <em|Satz von
  Cayley><\footnote>
    Arthur Cayley (1821 \U 1895), englischer Mathematiker
  </footnote>.

  <\lemma>
    <dueto|Cayley>Sei <math|<around*|(|G,\<cdot\>|)>> eine Gruppe mit
    neutralem Element <math|e\<in\>G>. Dann existiert eine Menge <math|M> und
    eine Untergruppe <math|U\<leq\>S<around*|(|M|)>> mit
    <math|G\<cong\>U><\footnote>
      Siehe Definition <reference|gruppenhomomorphismus-definition> für eine
      formale Definition der Isomorphie von Gruppen und
      Gruppenhomomorphismen.
    </footnote>.
  </lemma>

  <\proof>
    Sei <math|M\<assign\>G>. Für <math|g\<in\>G> definieren wir die Abbildung
    <math|f<rsub|g> :M\<rightarrow\>M> durch
    <math|f<rsub|g><around*|(|x|)>\<assign\>g\<cdot\>x> für alle
    <math|x\<in\>M>. Dann gilt

    <\equation*>
      f<rsub|g>\<circ\>f<rsub|h>=f<rsub|g\<cdot\>h>,<space|1em>f<rsub|e>=<with|font-family|rm|id><rsub|M>,<space|1em>f<rsub|g>\<circ\>f<rsub|g<rsup|-1>>=<with|font-family|rm|id><rsub|M>
    </equation*>

    und offenbar ist <math|f<rsub|g>> bijektiv. Folglich erhalten wir einen
    Gruppenhomomorphismus

    <\equation*>
      \<phi\> :G\<rightarrow\>S<around*|(|M|)>,<space|1em>\<phi\><around*|(|g|)>\<assign\>f<rsub|g>.
    </equation*>

    Da aus <math|f<rsub|g>=f<rsub|h>> für <math|g,h\<in\>G> unmittelbar
    <math|g=f<rsub|g><around*|(|e|)>=f<rsub|h><around*|(|e|)>=h> folgt, ist
    <math|\<phi\>> injektiv. Es folgt, dass <math|\<phi\>> ein Isomorphismus
    zwischen <math|G> und <math|U\<assign\><with|font-family|rm|im>
    \<phi\>\<leq\>S<around*|(|M|)>> ist.
  </proof>

  Insbesondere ist jede endliche Gruppe Untergruppe einer symmetrischen
  Gruppe <math|S<rsub|n>>, <math|n\<in\><with|font|Bbb|N>>.

  <\lemma>
    <label|variablen-permutation-automorphismus>Sei
    <math|\<sigma\>\<in\>S<rsub|n>>, <math|F> ein beliebiger unendlicher
    Körper und <math|L\<assign\>F<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>>
    der Körper der rationalen Funktionen über <math|F>. Dann ist die
    Abbildung

    <\equation*>
      <wide|\<sigma\> |~>:L\<rightarrow\>L,<space|1em><frac|f|g>\<mapsto\><wide|\<sigma\>|~><around*|(|<frac|f|g>|)>\<assign\><frac|f<around*|(|X<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,X<rsub|\<sigma\><around*|(|n|)>>|)>|g<around*|(|X<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,X<rsub|\<sigma\><around*|(|n|)>>|)>>
    </equation*>

    ein <math|F>-Automorphismus von <math|L>, i.e.
    <math|<wide|\<sigma\>|~>\<in\><with|font-family|rm|Gal><around*|(|L/F|)>>.
  </lemma>

  <\proof>
    Sei <math|\<alpha\>=<around*|(|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|)>>
    ein beliebiger Multiindex und <math|X\<assign\><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>|)>>.
    Dann gilt

    <\equation*>
      <wide|\<sigma\>|~><around*|(|<big|sum><rsub|\<alpha\>>c<rsub|\<alpha\>>
      X<rsup|\<alpha\>>|)>=<big|sum><rsub|\<alpha\>>c<rsub|\<alpha\>>
      <big|prod><rsub|i=1><rsup|n>X<rsub|\<sigma\><around*|(|i|)>><rsup|\<alpha\><rsub|i>>
    </equation*>

    für <math|c<rsub|\<alpha\>>\<in\>F>. Sei nun
    <math|f=<big|sum><rsub|\<alpha\>>a<rsub|\<alpha\>> X<rsup|\<alpha\>>> und
    <math|g=<big|sum><rsub|\<alpha\>>b<rsub|\<alpha\>> X<rsup|\<alpha\>>> für
    <math|a<rsub|\<alpha\>>,b<rsub|\<alpha\>>\<in\>F>, sodass

    <math|<align*|<tformat|<table|<row|<cell|<wide|\<sigma\>|~><around*|(|f+g|)>>|<cell|=<wide|\<sigma\>|~><around*|(|<big|sum><rsub|\<alpha\>><around*|(|a<rsub|\<alpha\>>+b<rsub|\<alpha\>>|)>
    X<rsup|\<alpha\>>|)>=<big|sum><rsub|\<alpha\>><around*|(|a<rsub|\<alpha\>>+b<rsub|\<alpha\>>|)>
    <big|prod><rsub|i=1><rsup|n>X<rsub|\<sigma\><around*|(|i|)>><rsup|\<alpha\><rsub|i>>>>|<row|<cell|=>|<cell|<big|sum><rsub|\<alpha\>>a<rsub|\<alpha\>>
    <big|prod><rsub|i=1><rsup|n>X<rsub|\<sigma\><around*|(|i|)>><rsup|\<alpha\><rsub|i>>+<big|sum><rsub|\<alpha\>>b<rsub|\<alpha\>>
    <big|prod><rsub|i=1><rsup|n>X<rsub|\<sigma\><around*|(|i|)>><rsup|\<alpha\><rsub|i>>>>|<row|<cell|=>|<cell|<wide|\<sigma\>|~><around*|(|f|)>+<wide|\<sigma\>|~><around*|(|g|)>.>>>>>>

    Ähnlich zeigt man, dass <math|<wide|\<sigma\>|~><around*|(|f\<cdot\>g|)>=<wide|\<sigma\>|~><around*|(|f|)>\<cdot\><wide|\<sigma\>|~><around*|(|g|)>>.
    Das heiÿt, <math|<wide|\<sigma\>|~>> ist ein Homomorphismus auf
    <math|F<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>>. Nun ist auch
    <math|<wide|\<sigma\>|~><rsub|-1>> ein Homomorphismus auf diesem Ring,
    wenn man <math|\<sigma\>> durch sein Inverses <math|\<sigma\><rsup|-1>>
    ersetzt und es folgt, dass <math|<wide|\<sigma\>|~>\<circ\><wide|\<sigma\>|~><rsub|-1>>
    die Identität auf <math|F<around*|[|X<rsub|1>,\<ldots\>,X<rsub|n>|]>>
    ist. Als unmittelbare Konsequenz davon ist <math|<wide|\<sigma\>|~>> ein
    Körperautomorphismus von <math|L> und da <math|<wide|\<sigma\>|~>> die
    konstanten Polynome in <math|L> offenbar fixiert, gilt insbesondere
    <math|<wide|\<sigma\>|~>\<in\><with|font-family|rm|Gal><around*|(|L/F|)>>.
  </proof>

  Der Beweis von Satz <reference|endliche-gruppe-galois-gruppe> ist nun eine
  Anwendung dieser Hilfsresultate.

  <\proof>
    Nach dem Satz von Cayley, können wir o. B. d. A. annehmen, dass
    <math|G\<leq\>S<rsub|n>> für ein <math|n\<in\><with|font|Bbb|N>>.
    Betrachten wir die Abbildung

    <\equation*>
      \<Phi\> :S<rsub|n>\<rightarrow\><with|font-family|rm|Gal><around*|(|L/F|)>,<space|1em>\<Phi\><around*|(|\<sigma\>|)>=<wide|\<sigma\>|~>
    </equation*>

    aus Lemma <reference|variablen-permutation-automorphismus>. Diese
    Zuweisung ist ein injektiver Gruppenhomomorphismus, denn gilt
    <math|<wide|\<sigma\>|~>=<wide|\<rho\>|~>> für
    <math|\<rho\>,\<sigma\>\<in\>S<rsub|n>>, so folgt

    <\equation*>
      X<rsub|\<sigma\><around*|(|i|)>>=<wide|\<sigma\>|~><around*|(|X<rsub|i>|)>=<wide|\<rho\>|~><around*|(|X<rsub|i>|)>=X<rsub|\<rho\><around*|(|i|)>>
    </equation*>

    für <math|i=1,\<ldots\>,n>, d.h. <math|\<sigma\>=\<rho\>> und die
    Homomorphieeigenschaft von <math|\<Phi\>> folgt unmittelbar. Also können
    wir <math|G> mit <math|H\<assign\>\<Phi\><around*|(|G|)>\<leq\><with|font-family|rm|Gal><around*|(|L/F|)>>
    identifizieren, d.h. <math|H\<cong\>G>. Setzen wir nun
    <math|K\<assign\>L<rsup|H>>, so folgt, dass <math|L :K> eine endliche
    Galoiserweiterung ist (siehe<nbsp><cite|Lang2002>, Satz 1.8 für einen
    Beweis) und <math|<with|font-family|rm|Gal><around*|(|L/K|)>=H\<cong\>G>.
    Somit haben wir eine Galoiserweiterung <math|L :K> mit Galoisgruppe
    <math|G> gefunden.
  </proof>

  Es herrscht also eine gewisse Dualität:

  <\padded-center>
    \R<em|Jede endliche Gruppe ist Untergruppe einer symmetrischen Gruppe>.\P

    \R<em|Jede endliche Gruppe ist Galoisgruppe einer Körpererweiterung>.\P
  </padded-center>

  <chapter|Gruppen>

  Wir beginnen das Kapitel, indem wir Konstruktionen und Definitionen, die
  wir im Kontext der Ringtheorie bereits gesehen haben, auch für Gruppen
  einführen. Es wird sich herausstellen, dass diese bei Gruppen in gewisser
  Art und Weise \Rsimpler\P sind.

  <section|Untergruppen und Quotientengruppen>

  <\definition>
    Es sei <math|G> eine Gruppe, <math|g\<in\>G>. Dann nennen wir die Zahl

    <\equation*>
      <with|font-family|rm|ord><rsub|G><around*|(|g|)>\<assign\><with|font-family|rm|ord><around*|(|g|)>\<assign\><around*|\||\<langle\>g\<rangle\>|\|>
    </equation*>

    die Ordnung von <math|g>.
  </definition>

  <\lemma>
    Es sei <math|G> eine Gruppe, <math|g\<in\>G>. Dann gilt:

    <\indent>
      (1) <math|<with|font-family|rm|ord><around*|(|g|)>> ist die Anzahl der
      Elemente in der von <math|g> erzeugten zyklischen Untergruppe
      <math|\<langle\>g\<rangle\>> von <math|G>.

      (2)

      <\equation*>
        <with|font-family|rm|ord><around*|(|g|)>=<choice|<tformat|<table|<row|<cell|min<around*|{|n\<in\><with|font|Bbb|N>
        <around*|\|||\<nobracket\>> g<rsup|n>=e|}><text|, wenn <math|g>
        endlich ist>,>>|<row|<cell|\<aleph\><rsub|0><text|, wenn
        <math|\<langle\>g\<rangle\>> unendlich ist>.>>>>>
      </equation*>
    </indent>
  </lemma>

  <\proof>
    Beide Aussagen sind unmittelbare Konsequenz der Definition von
    <math|<with|font-family|rm|ord><around*|(|g|)>>.
  </proof>

  <\lemma>
    <label|ordnung-teiler>Sei <math|G> eine Gruppe und <math|g\<in\>G> mit
    <math|\<ell\>\<assign\><with|font-family|rm|ord><around*|(|g|)>>. Gilt
    <math|g<rsup|k>=e> für ein <math|k\<in\><with|font|Bbb|N>>, so folgt
    <math|\<ell\> \<mid\>k>.
  </lemma>

  <\proof>
    Es existieren <math|q,r\<in\><with|font|Bbb|N><rsub|0>> mit
    <math|k=\<ell\> q+r> und <math|r\<less\>\<ell\>>. Dann gilt

    <\equation*>
      e=g<rsup|k>=g<rsup|\<ell\> q+r>=g<rsup|\<ell\> q>
      g<rsup|r>=<around*|(|g<rsup|\<ell\>>|)><rsup|q> g<rsup|r>=e<rsup|q>
      g<rsup|r>=g<rsup|r>
    </equation*>

    und da <math|\<ell\>\<in\><with|font|Bbb|N>> per Definition minimal mit
    <math|g<rsup|\<ell\>>=e> ist, folgt <math|r=0>, d.h. <math|\<ell\>
    \<mid\>k>.
  </proof>

  Ein Analogon zum direkten Produkt von Ringen:

  <\definition>
    Es sei <math|A> eine beliebige nichtleere Indexmenge und
    <math|<around*|(|G<rsub|a>|)><rsub|a\<in\>A>> eine Familie von Gruppen.
    Dann ist

    <\equation*>
      <big|prod><rsub|a\<in\>A>G<rsub|a>=<around*|{|<around*|(|g<rsub|a>|)><rsub|a\<in\>A>
      <around*|\|||\<nobracket\>> g<rsub|a>\<in\>G<rsub|a>,a\<in\>A|}>
    </equation*>

    eine Gruppe vermöge der Operationen

    <\equation*>
      <around*|(|g<rsub|a>|)><rsub|a\<in\>A>\<circ\><around*|(|h<rsub|a>|)><rsub|a\<in\>A>\<assign\><around*|(|g<rsub|a>\<circ\>h<rsub|a>|)><rsub|a\<in\>A>.
    </equation*>

    Offenbar ist <math|<big|prod><rsub|a\<in\>A>G<rsub|a>> genau dann
    abelsch, wenn <math|G<rsub|a>> für alle <math|a\<in\>A> abelsch ist. Wir
    nennen <math|<big|prod><rsub|a\<in\>A>G<rsub|a>> die <em|Produktgruppe>
    oder das <em|(äuÿere) direkte Produkt der <math|G<rsub|a>>>.
  </definition>

  <\example>
    Ist <math|<around*|(|H<rsub|a>|)><rsub|a\<in\>A>> eine weitere Familie
    von Gruppen mit <math|H<rsub|a>\<leq\>G<rsub|a>> für alle
    <math|a\<in\>A>, so folgt <math|<big|prod><rsub|a\<in\>A>H<rsub|a>\<leq\><big|prod><rsub|a\<in\>A>G<rsub|a>>.
    Die Umkehrung gilt wiederum nicht: Betrachten wir die Untergruppe

    <\equation*>
      H\<assign\><around*|{|<around*|(|a,b|)>\<in\><with|font|Bbb|Z>\<times\><with|font|Bbb|Z>
      <around*|\|||\<nobracket\>> a+b\<equiv\>0 <pmod|2>|}>
    </equation*>

    von <math|<around*|(|<with|font|Bbb|Z>\<times\><with|font|Bbb|Z>,+|)>>.
    Angenommen <math|H<rsub|1>\<times\>H<rsub|2>=H> für
    <math|H<rsub|1>,H<rsub|2>\<leq\><with|font|Bbb|Z>>. Da
    <math|<around*|(|a,a|)>\<in\>H> für beliebiges
    <math|a\<in\><with|font|Bbb|Z>>, folgt dann insbesondere
    <math|H<rsub|1>=H<rsub|2>=<with|font|Bbb|Z>>, aber
    <math|<around*|(|1,0|)>\<notin\>H>, also kann
    <math|H<rsub|1>\<times\>H<rsub|2>=H> nicht sein.
  </example>

  Auch Gruppen können \RIdeale\P haben. Zunächst einige Vorbereitungen.

  <\definition>
    Sei <math|G> eine Gruppe und <math|H\<leq\>G> eine Untergruppe von
    <math|G>. Für jedes Element <math|g\<in\>G> nennen wir

    <\equation*>
      g H\<assign\><around*|{|g h <around*|\|||\<nobracket\>> h\<in\>H|}>
    </equation*>

    die <em|Linksnebenklasse von <math|g> nach <math|H>> (oder auch modulo
    <math|H>). Analog definieren wir die Rechtsnebenklasse <math|H
    g\<assign\><around*|{|h g <around*|\|||\<nobracket\>> g\<in\>G|}>>.
  </definition>

  <\proposition>
    <label|linksnebenklassenzerlegung>Seien <math|G> eine Gruppe und
    <math|H\<leq\>G> sowie <math|g<rsub|1>,g<rsub|2>\<in\>G>. Dann bilden die
    Links- und Rechtsnebenklassen nach <math|H> eine Partition von <math|G>
    mit <math|g<rsub|1> H=g<rsub|2> H> (bzw. <math|H g<rsub|1>=H g<rsub|2>>)
    genau dann, wenn <math|g<rsub|1><rsup|-1> g<rsub|2>\<in\>H> (bzw.
    <math|g<rsub|1> g<rsub|2><rsup|-1>\<in\>H>).
  </proposition>

  <\proof>
    Wir zeigen die Aussage für Linksnebenklassen; der Beweis für
    Rechtsnebenklassen verläuft analog. Die Nebenklassen <math|g<rsub|1> H>
    und <math|g<rsub|2> H> haben genau dann nichtleeren Schnitt, wenn wir
    <math|h<rsub|1>,h<rsub|2>\<in\>H> mit <math|g<rsub|1> h<rsub|1>=g<rsub|2>
    h<rsub|2>> finden können. Ist <math|h\<in\>H> dann beliebig, so folgt

    <\equation*>
      g<rsub|2> h=g<rsub|2> h<rsub|2> h<rsub|2><rsup|-1> h=g<rsub|1>
      h<rsub|1> h<rsub|2><rsup|-1> h\<in\>g<rsub|1> H,
    </equation*>

    d.h. <math|g<rsub|2> H\<subseteq\>g<rsub|1> H> und ähnlich
    <math|g<rsub|1> H\<subseteq\>g<rsub|2> H>, also <math|g<rsub|1>
    H=g<rsub|2> H>. Da <math|g\<in\>g H> für alle <math|g\<in\>G> sind die
    Nebenklassen nichtleer und deren Vereinigung ist ganz <math|G>, sodass
    tatsächlich eine Partition von <math|G> vorliegt. Mit der Beobachtung,
    dass <math|g<rsub|1> H=g<rsub|2> H> genau dann, wenn
    <math|g<rsub|1><rsup|-1> g<rsub|2>\<in\>H>, folgt die Behauptung.\ 
  </proof>

  Ist <math|G> nicht abelsch, so müssen Links- und Rechtsnebenklassen nicht
  übereinstimmen. Man findet aber für endliche wie unendliche Gruppen
  zumindest eine Bijektion.

  <\lemma>
    Sei <math|G> eine Gruppe und <math|H\<leq\>G>. Dann gibt es eine
    Bijektion zwischen der Menge der Links- und Rechtsnebenklassen von
    <math|G> modulo <math|H>.
  </lemma>

  <\proof>
    Sei

    <\equation*>
      \<phi\> :<around*|{|g H <around*|\|||\<nobracket\>>
      g\<in\>G|}>\<rightarrow\><around*|{|H g <around*|\|||\<nobracket\>>
      g\<in\>G|}>,<space|1em>\<phi\><around*|(|g H|)>\<assign\>H g<rsup|-1>.
    </equation*>

    Diese Abbildung ist wohldefiniert. In der Tat, sind
    <math|g<rsub|1>,g<rsub|2>\<in\>G> mit <math|g<rsub|1> H=g<rsub|2> H>, so
    gibt es <math|h<rsub|1>,h<rsub|2>\<in\>H> mit <math|g<rsub|1>
    h<rsub|1>=g<rsub|2> h<rsub|2>>, also <math|g<rsub|1>=g<rsub|2> h<rsub|2>
    h<rsub|1><rsup|-1>>. Ist also <math|h g<rsub|1><rsup|-1>\<in\>H
    g<rsub|1><rsup|-1>> für ein <math|h\<in\>H>, so folgt

    <\equation*>
      h g<rsub|1><rsup|-1>=h <around*|(|g<rsub|2> h<rsub|2>
      h<rsub|1><rsup|-1>|)><rsup|-1>=h h<rsub|1> h<rsub|2><rsup|-1>
      g<rsub|2><rsup|-1>\<in\>H g<rsub|2><rsup|-1>,
    </equation*>

    also <math|H g<rsub|1><rsup|-1>\<subseteq\>H g<rsub|2><rsup|-1>>, sodass
    <math|\<phi\><around*|(|g<rsub|1> H|)>=\<phi\><around*|(|g<rsub|2> H|)>>.
    Ebenso ist <math|\<phi\>> injektiv. Gilt nämlich
    <math|\<phi\><around*|(|g<rsub|1> H|)>=\<phi\><around*|(|g<rsub|2> H|)>>,
    erneut für unbestimmte <math|g<rsub|1>,g<rsub|2>\<in\>H>, so folgt
    <math|g<rsub|1> H=g<rsub|2> H> und ähnlich zeigt man, dass <math|\<phi\>>
    auch surjektiv ist.
  </proof>

  Das motiviert die folgende Definition.

  <\definition>
    Sei <math|G> eine Gruppe und <math|H\<leq\>G> eine Untergruppe. Dann
    nennt man die Kardinalität der Menge aller Linksnebenklassen (oder,
    äquivalent, aller Rechtsnebenklassen) den <em|Index von <math|H> in
    <math|G>>. Man schreibt dafür dann <math|<around*|[|G :H|]>>.
  </definition>

  <\proposition>
    <dueto|Lagrange><label|satz-von-lagrange>Sei <math|G> eine Gruppe und
    <math|H\<leq\>G> eine Untergruppe. Dann gibt es eine Bijektion
    <math|\<varphi\> :H\<times\><around*|{|g H <around*|\|||\<nobracket\>>
    g\<in\>G|}>\<rightarrow\>G>, i.e.

    <\equation*>
      <around*|\||G|\|>=<around*|\||H|\|>\<cdot\><around*|[|G :H|]>.
    </equation*>

    Wenn <math|G> endlich ist, gilt insbesondere <math|<around*|[|G
    :H|]>=<frac|<around*|\||G|\|>|<around*|\||H|\|>>>.
  </proposition>

  <\proof>
    Wir wählen für jede Linksnebenklasse <math|g H>, <math|g\<in\>G>, ein
    fixiertes Element <math|r\<in\>G> aus und bezeichnen die Menge dieser
    Vertreter mit <math|R>, d.h. <math|<around*|{|g H
    <around*|\|||\<nobracket\>> g\<in\>G|}>=<around*|{|r H
    <around*|\|||\<nobracket\>> r\<in\>R|}>> und <math|r H\<neq\>r<rprime|'>
    H> für alle verschiedenen <math|r,r<rprime|'>\<in\>R>.

    <space|1em>Sei nun

    <\equation*>
      \<varphi\> :H\<times\><around*|{|g H <around*|\|||\<nobracket\>>
      g\<in\>G|}>\<rightarrow\>G,<space|1em>\<varphi\><around*|(|h,g
      H|)>\<assign\>r\<circ\>h,
    </equation*>

    wobei <math|r> der zugehörige Vertreter der Nebenklasse <math|g H> ist.
    Diese Abbildung ist dann offenbar wohldefiniert. Gilt
    <math|\<varphi\><around*|(|h<rsub|1>,r<rsub|1>|)>=\<varphi\><around*|(|h<rsub|2>,r<rsub|2>|)>>
    so folgt durch Umformung, dass <math|r<rsub|2><rsup|-1>\<circ\>r<rsub|1>\<in\>H>,
    also <math|r<rsub|1> H=r<rsub|2> H> bzw. <math|r<rsub|1>=r<rsub|2>> und
    <math|h<rsub|1>=h<rsub|2>>, per Konstruktion unseres Vertretersystems.
    Wählen wir einen fixen Repräsentanten <math|r\<in\>R>, so gilt auch
    <math|\<varphi\><around*|(|r<rsup|-1> g,r
    H|)>=r\<circ\><around*|(|r<rsup|-1> g|)>=g> für beliebiges
    <math|g\<in\>G>.
  </proof>

  Im endlichen Fall ist das obige Resultat auch als <em|Satz von
  Lagrange><\footnote>
    Joseph-Louis Lagrange (1736 \U 1813), italienischer Mathematiker,
    Physiker und Astronom
  </footnote> bekannt.

  Ähnlich zur Gradregel bei Körpererweiterungen haben wir für Gruppenindizes
  den sogenannten <em|Indexsatz>. Er ist unmittelbare Konsequenz von
  Proposition <reference|satz-von-lagrange>.

  <\corollary>
    <dueto|Indexsatz>Es seien <math|G\<subseteq\>G<rprime|'>\<subseteq\>G<rprime|''>>
    drei endliche Gruppen. Dann gilt

    <\equation*>
      <around*|[|G<rprime|''> :G|]>=<around*|[|G<rprime|''>
      :G<rprime|'>|]>\<cdot\><around*|[|G<rprime|'> :G|]>.
    </equation*>
  </corollary>

  <\proof>
    Wir haben einerseits <math|<around*|[|G<rprime|''>
    :G<rprime|'>|]>=<frac|<around*|\||G<rprime|''>|\|>|<around*|\||G<rprime|'>|\|>>>
    und andererseits <math|<around*|[|G<rprime|'>
    :G|]>=<frac|<around*|\||G<rprime|'>|\|>|<around*|\||G|\|>>>, also

    <\equation*>
      <around*|[|G<rprime|''> :G|]>=<frac|<around*|\||G<rprime|''>|\|>|<around*|\||G|\|>>=<frac|<around*|\||G<rprime|''>|\|>|<around*|\||G<rprime|'>|\|>>\<cdot\><frac|<around*|\||G<rprime|'>|\|>|<around*|\||G|\|>>=<around*|[|G<rprime|''>
      :G<rprime|'>|]>\<cdot\><frac|<around*|\||G<rprime|'>|\|>|<around*|\||G|\|>>.
    </equation*>

    \;
  </proof>

  Der Indexsatz lässt sich auch auf unendliche Gruppen verallgemeinern.

  <\definition>
    Sei <math|G> eine Gruppe. Eine Untergruppe <math|N\<leq\>G> heiÿt
    <em|normal> oder <em|Normalteiler von <math|G>>, falls

    <\equation*>
      g N g<rsup|-1>=N
    </equation*>

    für alle <math|g\<in\>G> gilt. Wir schreiben dann
    <math|N\<trianglelefteqslant\>G>.
  </definition>

  <\example>
    <label|quaternionengruppe>(1) Ist <math|G> abelsch, so ist offenbar jede
    Untergruppe <math|H\<leq\>G> Normalteiler von <math|G>.<\footnote>
      Eine Gruppe <math|G> deren Untergruppen alle Normalteiler von <math|G>
      sind werden <em|dedekindsche Gruppen> genannt.
    </footnote> Die Umkehrung gilt nicht. Betrachten wir beispielsweise die
    Quaternionen <math|<with|font|Bbb|H>> aus Beispiel
    <reference|quaternionen>.<\footnote>
      Dementsprechend bezeichnen wir nicht-abelsche dedekindsche Gruppen auch
      als <em|hamiltonsche Gruppen>. Sie können (bis auf Isomorphie)
      vollständig angegeben werden.
    </footnote> Insbesondere definieren wir die Quaternionengruppe
    <math|Q<rsub|8>> indem wir das Quaternionenprodukt als Operation auf der
    Menge

    <\equation*>
      <around*|{|\<pm\>1,\<pm\>\<mathi\>,\<pm\><text|j>,\<pm\><text|k>|}>
    </equation*>

    auffassen. Die Untergruppen bestimmen wir durch Fallunterscheidung. Sei
    <math|U\<leq\>Q<rsub|8>> eine beliebige Untergruppe; nehmen wir an, dass
    <math|U\<neq\><around*|{|1|}>> oder <math|U\<neq\><around*|{|\<pm\>1|}>>.
    Dann ist eines von <math|\<mathi\>>, <math|<text|j>> und <math|<text|k>>
    in <math|U>. O. B. d. A. sei <math|\<mathi\>\<in\>U>; die anderen beiden
    Fälle sind ähnlich. Also ist auch <math|-1=\<mathi\><rsup|2>\<in\>U>,
    sodass entweder <math|U=Q<rsub|8>>, falls <math|<text|j>> oder
    <math|<text|k>> Element von <math|U> ist und sonst
    <math|U=<around*|{|\<pm\>1,\<pm\>\<mathi\>|}>=\<langle\>\<mathi\>\<rangle\>>.
    Das liefert die (echten) Untergruppen

    <\equation*>
      \<langle\>1\<rangle\>,<space|1em>\<langle\>-1\<rangle\>,<space|1em>\<langle\>\<mathi\>\<rangle\>,<space|1em>\<langle\><text|j>\<rangle\>,<space|1em>\<langle\><text|k>\<rangle\>
    </equation*>

    von <math|Q<rsub|8>>. Insbesondere bemerken wir, dass diese Untergruppen
    von <math|Q<rsub|8>> zyklisch sind und daher abelsch, <math|Q<rsub|8>>
    hingegen nicht. Ferner sind sie sogar Normalteiler von <math|Q<rsub|8>>,
    wie man leicht überprüfen kann.

    (2) Sei <math|S<rsub|3>> die symmetrische Gruppe auf drei Elementen. Dann
    ist <math|H\<assign\>\<langle\><around*|(|1 2|)>\<rangle\>> eine abelsche
    Untergruppe von <math|S<rsub|3>>, aber nicht normal, da
    <math|<around*|(|1 2 3|)> <around*|(|1 2|)> <around*|(|1 2
    3|)><rsup|-1>=<around*|(|2 3|)>\<notin\>H>.
  </example>

  Nun zum gruppentheoretischen Pendant von Quotientenringen und
  Homomorphismen.

  <\definition>
    Sei <math|G> eine Gruppe, <math|N\<trianglelefteqslant\>G>. Dann ist

    <\equation*>
      G/N\<assign\><around*|{|g N <around*|\|||\<nobracket\>> g\<in\>G|}>,
    </equation*>

    die Menge der Linksnebenklassen modulo <math|N>, mit der Operation

    <\equation*>
      <around*|(|g N|)>\<circ\><around*|(|h
      N|)>\<assign\><around*|(|g\<circ\>h|)> N
    </equation*>

    eine Gruppe, genannt die <em|Quotientengruppe von <math|G> modulo
    <math|N>><\footnote>
      Auch: <em|Faktorgruppe>, <em|Restklassengruppe>.
    </footnote>.
  </definition>

  <\definition>
    <label|gruppenhomomorphismus-definition>Seien <math|G,H> Gruppen.

    <\indent>
      (1) Eine Abbildung <math|\<phi\> :G\<rightarrow\>H> heiÿt
      (Gruppen)-Homomorphismus, wenn für alle <math|g,h\<in\>G> gilt, dass

      <\equation*>
        \<phi\><around*|(|g\<circ\>h|)>=\<phi\><around*|(|g|)>\<circ\>\<phi\><around*|(|h|)>.
      </equation*>

      (2) Ein injektiver Homomorphismus heiÿt <em|Monomorphismus> oder
      <em|(isomorphe) Einbettung> und wir schreiben <math|\<phi\>
      :G\<hookrightarrow\>H>.

      (3) Ein surjektiver Homomorphismus heiÿt <em|Epimorphismus> und wir
      schreiben <math|\<phi\> :G\<twoheadrightarrow\>H>.

      (4) Ein bijektiver Homomorphismus heiÿt <em|Isomorphismus>. Wir
      schreiben dann <math|\<phi\> :G<wide|\<rightarrow\>|~>H> und
      <math|G\<cong\>H>. Man nennt <math|G> und <math|H> dann zueinander
      <em|isomorph>.
    </indent>
  </definition>

  <\example>
    (1) Die Abbildung <math|\<phi\> :G\<rightarrow\>S<around*|(|M|)>,\<phi\><around*|(|g|)>\<assign\>f<rsub|g>>
    im Beweis des Satzes von Cayley ist ein Monomorphismus.

    (2) Ist <math|G> eine Gruppe, <math|N\<trianglelefteqslant\>G> ein
    Normalteiler, so ist die <em|natürliche Projektion von <math|G> auf den
    Quotienten <math|G/N>> ein Epimorphismus (cf. Beispiel
    <reference|ringhomomorphismus-beispiele>).

    (3) Seien <math|G<rsub|1>,G<rsub|2>> Gruppen. Dann ist

    <\equation*>
      G<rsub|1>\<times\>G<rsub|2>\<rightarrow\>G<rsub|2>\<times\>G<rsub|1>,<space|1em><around*|(|g<rsub|1>,g<rsub|2>|)>\<mapsto\><around*|(|g<rsub|2>,g<rsub|1>|)>
    </equation*>

    ein Gruppenisomorphismus von <math|G<rsub|1>> nach <math|G<rsub|2>>.

    (4) Sei <math|G> eine Gruppe und <math|g\<in\>G>. Dann ist

    <\equation*>
      G\<rightarrow\>G,<space|1em>x\<mapsto\>g x g<rsup|-1>
    </equation*>

    ein Gruppenisomorphismus von <math|G> nach <math|G>. Wir nennen diese
    Abbildung die <em|Konjugation von <math|g>>.

    (5) Die Nullabbildung ist (trivialerweise) immer ein
    Gruppenhomomorphismus.
  </example>

  Ganz analog im Fall zum Ringen beweist man:

  <\lemma>
    Seien <math|G> und <math|H> Gruppen, <math|\<phi\> :G\<rightarrow\>H> ein
    Homomorphismus. Dann gilt <math|\<phi\><around*|(|e<rsub|G>|)>=e<rsub|H>>
    und <math|\<phi\><around*|(|g<rsup|-1>|)>=\<phi\><around*|(|g|)><rsup|-1>>
    für alle <math|g\<in\>G>.
  </lemma>

  Und:

  <\definition>
    Seien <math|G> und <math|H> Gruppen, <math|\<phi\> :R\<rightarrow\>S> ein
    Homomorphismus. Dann heiÿt die Menge

    <\equation*>
      ker \<phi\>\<assign\><around*|{|g\<in\>G <around*|\|||\<nobracket\>>
      \<phi\><around*|(|g|)>=e<rsub|H>|}>
    </equation*>

    der <em|Kern von <math|\<phi\>>>. Ferner definieren wir das <em|Bild von
    <math|\<phi\>>> als

    <\equation*>
      <with|font-family|rm|im> \<phi\>\<assign\><around*|{|\<phi\><around*|(|g|)>
      <around*|\|||\<nobracket\>> g\<in\>G|}>.
    </equation*>
  </definition>

  <\lemma>
    <label|gruppenhomomorphismus-lemma>Seien <math|G> und <math|H> Gruppen,
    <math|\<phi\> :G\<rightarrow\>H> ein Homomorphismus. Dann gilt:

    <\indent>
      (1) <math|ker \<phi\>> ist ein Normalteiler von <math|G> und
      <math|<with|font-family|rm|im> \<phi\>> ist eine Untergruppe von
      <math|H>.

      (2) <math|\<phi\>> ist genau dann ein Monomorphismus, wenn <math|ker
      \<phi\>=<around*|{|e<rsub|G>|}>>.
    </indent>
  </lemma>

  Genauso zentral wie bei Ringen ist der erste Isomorphiesatz für Gruppen.
  Zur Illustration kopieren wir seinen Beweis fast wortwörtlich:

  <\theorem>
    <dueto|Erster Isomorphiesatz für Gruppen>Es sei <math|\<phi\>
    :G\<rightarrow\>H> ein Gruppenhomomorphismus von <math|G> nach <math|H>.
    Dann induziert <math|\<phi\>> einen Isomorphismus

    <\equation*>
      \<phi\><rsup|\<ast\>> :G/ker \<phi\> <wide|\<rightarrow\>|~>
      <with|font-family|rm|im> \<phi\>,<space|1em>\<phi\><rsup|\<ast\>><around*|(|g
      ker \<phi\>|)>\<assign\>\<phi\><around*|(|g|)>.
    </equation*>

    Insbesondere gilt <math|G/ker \<phi\>\<cong\><with|font-family|rm|im>
    \<phi\>>.
  </theorem>

  <\proof>
    Sei <math|K\<assign\>ker \<phi\>>. Wir zeigen schrittweise, dass
    <math|\<phi\><rsup|\<ast\>>> ein wohldefinierter Isomorphismus von
    <math|G> nach <math|H> ist.

    Wohldefiniertheit: Seien <math|g<rsub|1>,g<rsub|2>\<in\>G> mit
    <math|g<rsub|1> K=g<rsub|2> K>. Dann gilt <math|g<rsub|1>
    g<rsub|2><rsup|-1>\<in\>K>, also <math|\<phi\><around*|(|g<rsub|1>|)>
    \<phi\><around*|(|g<rsub|2>|)><rsup|-1>=\<phi\><around*|(|g<rsub|1>
    g<rsub|2><rsup|-1>|)>=e>. Insbesondere muss
    <math|\<phi\><around*|(|g<rsub|1>|)>=\<phi\><around*|(|g<rsub|2>|)>>
    gelten, d.h. <math|\<phi\><rsup|\<ast\>><around*|(|g<rsub|1>
    K|)>=\<phi\><rsup|\<ast\>><around*|(|g<rsub|2> K|)>>.

    Homomorphieeigenschaft: Für alle <math|g,h\<in\>G> gilt

    <math|<align*|<tformat|<table|<row|<cell|\<phi\><rsup|\<ast\>><around*|(|<around*|(|g
    K|)>\<circ\><around*|(|h K|)>|)>=>|<cell|\<phi\><rsup|\<ast\>><around*|(|<around*|(|g\<circ\>h|)>
    K|)>=\<phi\><around*|(|g\<circ\>h|)>=\<phi\><around*|(|g|)>\<circ\>\<phi\><around*|(|h|)>>>|<row|<cell|=>|<cell|\<phi\><rsup|\<ast\>><around*|(|g
    K|)>\<circ\>\<phi\><rsup|\<ast\>><around*|(|h K|)>.>>>>>>

    Injektivität: Ist <math|e=\<phi\><rsup|\<ast\>><around*|(|g
    K|)>=\<phi\><around*|(|g|)>> für ein <math|g\<in\>G>, so gilt offenbar
    <math|g\<in\>K>. Daraus folgt, dass

    <\equation*>
      ker \<phi\><rsup|\<ast\>>=<around*|{|e K|}>
    </equation*>

    und somit ist <math|\<phi\><rsup|\<ast\>>> nach Lemma
    <reference|gruppenhomomorphismus-lemma> (2) injektiv.

    Surjektivität: Das folgt unmittelbar aus der Definition von
    <math|\<phi\><rsup|\<ast\>>>.
  </proof>

  Der Begriff von Kern/Bild im Kontext der Gruppen hat ebenso eine Verbindung
  zu Normalteilern. Folgende Eigenschaften sind auch ganz allgemein nützlich:

  <\lemma>
    Sei <math|G> eine Gruppe mit neutralem Element <math|e\<in\>G> und
    <math|N\<leq\>G> eine Untergruppe. Dann sind die folgenden Aussagen
    äquivalent:

    <\indent>
      (1) Es gibt eine Gruppe <math|H> und einen Homomorphismus
      <math|\<varphi\> :G\<rightarrow\>H> mit <math|N=ker \<varphi\>>.

      (2) <math|N> ist Normalteiler von <math|G>.

      (3) <math|g N g<rsup|-1>\<subseteq\>N> für alle <math|g\<in\>G>.

      (4) <math|g N=N g> für alle <math|g\<in\>G>.

      (5) Links- und Rechtskongruenz modulo <math|N> definieren dieselbe
      Äquivalenzrelation.

      (6) <math|g N\<subseteq\>N g> für alle <math|g\<in\>G>.
    </indent>
  </lemma>

  <\proof>
    Die Implikationskette <math|<around*|(|1|)>\<Rightarrow\><around*|(|2|)>\<Rightarrow\><around*|(|3|)>\<Rightarrow\><around*|(|4|)>\<Rightarrow\><around*|(|5|)>\<Rightarrow\><around*|(|6|)>>
    folgt unmittelbar aus den Definitionen, wir müssen also nur zeigen, dass
    falls <math|g N\<subseteq\>N g> für alle <math|g\<in\>G> gilt, <math|N>
    der Kern eines Homomorphismus von <math|G> nach <math|H> ist. Ist
    <math|N> Normalteiler, so folgt direkt, dass <math|N> der Kern der
    natürlichen Projektion auf den Quotienten <math|G/N> ist. Da <math|g
    N\<subseteq\>N g> für alle <math|g\<in\>G>, gilt insbesondere <math|g N
    g<rsup|-1>\<subseteq\>N g g<rsup|-1>=N>. Andererseits gilt auch
    <math|g<rsup|-1> N\<subseteq\>N g<rsup|-1>>, somit <math|N=g g<rsup|-1>
    N\<subseteq\>g N g<rsup|-1>>, also <math|g N g<rsup|-1>=N> und <math|N>
    ist normal.
  </proof>

  Damit haben wir alle wesentlichen Definitionen aus der Ringtheorie in die
  Sprache der Gruppen übersetzt. Kommen wir nun zum ersten neuen Ergebnis.

  <\lemma>
    Sei <math|G> eine Gruppe und <math|H\<leq\>G> eine Untergruppe mit
    <math|<around*|[|G :H|]>=2>. Dann ist <math|H> ein Normalteiler von
    <math|G>.
  </lemma>

  <\proof>
    Sei <math|g\<in\>G> beliebig. Falls <math|g\<in\>H>, folgt <math|g H=H=H
    g>. Falls <math|g\<notin\>H>, dann folgt aus <math|<around*|[|G :H|]>=2>,
    dass <math|g H=G\<setminus\>H> und ähnlich sieht man <math|H
    g=G\<setminus\>H>. Insbesondere also <math|g H=G\<setminus\>H=H g>. Da
    <math|g> beliebig gewählt war, folgt also
    <math|H\<trianglelefteqslant\>G>.
  </proof>

  <\proposition>
    <label|klassifikation-zyklische-gruppen>Sei
    <math|n\<in\><with|font|Bbb|N>> beliebig. Dann existiert eine bis auf
    Isomorphie eindeutig bestimmte zyklische Gruppe der Ordnung <math|n>,
    nämlich <math|<around*|(|<with|font|Bbb|Z>/n <with|font|Bbb|Z>,+|)>>.
    Weiterhin ist jede unendliche zyklische Gruppe zu
    <math|<around*|(|<with|font|Bbb|Z>,+|)>> isomorph.
  </proposition>

  <\proof>
    Es sei <math|G\<assign\><around*|{|g<rsup|n> <around*|\|||\<nobracket\>>
    n\<in\><with|font|Bbb|Z>|}>> eine beliebige zyklische Gruppe. Dann ist

    <\equation*>
      \<phi\> :<around*|(|<with|font|Bbb|Z>,+|)>\<rightarrow\><around*|(|G,\<circ\>|)>,<space|1em>m\<mapsto\>g<rsup|m>
    </equation*>

    ein surjektiver Gruppenhomomorphismus mit <math|ker
    \<phi\>\<leq\><with|font|Bbb|Z>>. Also existiert ein eindeutiges
    <math|d\<in\><with|font|Bbb|N><rsub|0>> mit <math|ker \<phi\>=d
    <with|font|Bbb|Z>> (Folgerung <reference|untergruppen-von-z>). Aus dem
    Ersten Isomorphiesatz folgt nun

    <\equation*>
      <with|font|Bbb|Z>/d <with|font|Bbb|Z>\<cong\>G.
    </equation*>

    Ist insbesondere <math|d=0>, so folgt <math|ker \<phi\>=<around*|{|0|}>>,
    d.h. <math|\<phi\>> ist injektiv und sogar ein Isomorphismus.
  </proof>

  <\corollary>
    <label|untergruppen-zyklisch-existenz>Sei <math|G> eine endliche
    zyklische Gruppe mit <math|<around*|\||G|\|>=m>. Dann existiert zu jedem
    Teiler <math|k> von <math|m> genau eine Untergruppe <math|H\<leq\>G> mit
    <math|<around*|\||H|\|>=k>.
  </corollary>

  <\proof>
    Es gilt <math|G\<cong\><with|font|Bbb|Z>/m <with|font|Bbb|Z>> nach
    Proposition <reference|klassifikation-zyklische-gruppen>. Sei <math|k
    \<mid\>m> ein Teiler von <math|m>. Dann existiert ein eindeutig
    bestimmtes <math|\<ell\>\<in\><with|font|Bbb|N>> mit
    <math|k\<cdot\>\<ell\>=m>. Nun ist <math|H=<around*|{|0,\<ell\>,2
    \<ell\>,\<ldots\>,<around*|(|k-1|)> \<ell\>|}>> die gewünschte
    Untergruppe von <math|<with|font|Bbb|Z>/m <with|font|Bbb|Z>>.

    <space|1em>Um die Eindeutigkeit zu zeigen, sei
    <math|U\<leq\><with|font|Bbb|Z>/m <with|font|Bbb|Z>> eine Untergruppe mit
    <math|<around*|\||U|\|>=k>. Dann ist <math|U=\<langle\>a\<rangle\>> für
    ein <math|a\<in\><with|font|Bbb|Z>/m <with|font|Bbb|Z>> und wegen
    <math|k=<with|font-family|rm|ord><around*|(|a|)>=<frac|m|<with|font-family|rm|ggT><around*|(|a,m|)>>>,
    gilt <math|<with|font-family|rm|ggT><around*|(|a,m|)>=m/k=\<ell\>>. Daher
    <math|\<langle\>a\<rangle\>=\<langle\>\<ell\>\<rangle\>=H>, wie
    gewünscht.
  </proof>

  Unser nächstes Ziel ist es, folgende Frage zu beantworten: Hält die
  Umkehrung des Satzes von Lagrange? Formal: Sei <math|G> eine endliche
  Gruppe und <math|k> ein Teiler von <math|<around*|\||G|\|>>. Existiert eine
  Untergruppe <math|H\<leq\>G> der Ordnung <math|k>? Die Antwort ist
  <em|nein>, wie wir im nächsten Beispiel sehen werden. Welche
  Zusatzbedingungen müssen wir also fordern? In diesem Sinne führen wir nun
  einige wesentliche Begrifflichkeiten und Ergebnisse ein.

  <\example>
    <label|alternierende-gruppe>(1) Sei <math|n\<geq\>2>. Aus der linearen
    Algebra kennen wir die Abbildung

    <\equation*>
      <with|font-family|rm|sgn >:S<rsub|n>\<rightarrow\><around*|{|\<pm\>1|}>,<space|1em><with|font-family|rm|sgn><around*|(|\<sigma\>|)>\<assign\><big|prod><rsub|1\<leq\>i\<less\>j\<leq\>n><frac|\<sigma\><around*|(|i|)>-\<sigma\><around*|(|j|)>|i-j>,
    </equation*>

    die wir u. a. für die Definition der Determinante (nach Leibniz)
    benötigen. Dort haben wir gesehen, dass <math|<with|font-family|rm|sgn>>
    sogar ein (surjektiver) Gruppenhomomorphismus ist. Den Kern dieser
    Abbildung nennen wir die <em|alternierende Gruppe>; geschrieben

    <\equation*>
      A<rsub|n>\<assign\>ker <with|font-family|rm|sgn>.
    </equation*>

    Da dann <math|A<rsub|n>\<vartriangleleft\>S<rsub|n>>, folgt aus dem
    Ersten Isomorphiesatz und dem Satz von Lagrange, dass

    <\equation*>
      2=<around*|\||S<rsub|n>/A<rsub|n>|\|>=<frac|<around*|\||S<rsub|n>|\|>|<around*|\||A<rsub|n>|\|>>=<frac|n!|<around*|\||A<rsub|n>|\|>>,
    </equation*>

    also <math|<around*|\||A<rsub|n>|\|>=n!/2>. Im Fall <math|n=4> ist
    <math|<around*|\||A<rsub|4>|\|>=12> und obwohl <math|6 \<mid\>12>,
    existiert keine Untergruppe <math|H\<leq\>A<rsub|4>> mit
    <math|<around*|\||H|\|>=6>.

    (2) Wir kennen den Satz von Lagrange, Proposition
    <reference|satz-von-lagrange>, eigentlich schon. Wir haben in Satz
    <reference|endliche-gruppe-galois-gruppe> gesehen, dass jede endliche
    Gruppe <math|G> zu einer Galoisgruppe
    <math|<with|font-family|rm|Gal><around*|(|L/K|)>>, <math|L :K>
    Körpererweiterung, isomorph ist, wobei
    <math|<around*|\||G|\|>=<around*|[|L :K|]>>. Weiters sagt der Hauptsatz
    der Galoistheorie eben, dass jede Untergruppe
    <math|H\<leq\>G\<cong\><with|font-family|rm|Gal><around*|(|L/K|)>> zu
    einem Zwischenkörper <math|K\<subseteq\>M\<subseteq\>L> bijektiv
    korrespondiert, nämlich <math|M\<cong\>L<rsup|H>>. Dann gilt
    <math|<around*|\||H|\|>=<around*|[|L :L<rsup|H>|]>> und
    <math|<around*|[|G :H|]>=<frac|<around*|\||G|\|>|<around*|\||H|\|>>=<frac|<around*|[|L
    :K|]>|<around*|[|L:L<rsup|H>|]>>=<around*|[|L<rsup|H>:K|]>> nach der
    Gradregel. Zusammengefasst:

    <\equation*>
      <wide|<around*|[|L :K|]>|\<wide-overbrace\>><rsup|<around*|\||G|\|>>=<wide|<around*|[|L
      :L<rsup|H>|]>|\<wide-overbrace\>><rsup|H>\<cdot\><wide|<around*|[|L<rsup|H>
      :K|]>|\<wide-overbrace\>><rsup|<around*|[|G :H|]>>.
    </equation*>
  </example>

  <\corollary>
    <label|kleiner-fermat-allgemein>Es sei <math|G> eine endliche Gruppe und
    <math|g\<in\>G>. Dann ist <math|<with|font-family|rm|ord><around*|(|g|)>>
    ein Teiler von <math|<around*|\||G|\|>> und
    <math|g<rsup|<around*|\||G|\|>>=e>.
  </corollary>

  <\proof>
    Die erste Behauptung folgt unmittelbar aus dem Satz von Lagrange;
    insbesondere ist <math|<frac|<around*|\||G|\|>|<with|font-family|rm|ord><around*|(|g|)>>>
    eine ganze Zahl. Die zweite Behauptung folgt wiederum aus der Beobachtung

    <\equation*>
      g<rsup|<around*|\||G|\|>>=g<rsup|<with|font-family|rm|ord><around*|(|g|)>\<cdot\><frac|<around*|\||G|\|>|<with|font-family|rm|ord><around*|(|g|)>>>=<around*|(|g<rsup|<with|font-family|rm|ord><around*|(|g|)>>|)><rsup|<frac|<around*|\||G|\|>|<with|font-family|rm|ord><around*|(|g|)>>>=e<rsup|<frac|<around*|\||G|\|>|<with|font-family|rm|ord><around*|(|g|)>>>=e.
    </equation*>

    \;
  </proof>

  Man bemerke hier auch die Ähnlichkeit zum Kleinen Fermat'schen Satz, Lemma
  <reference|kleiner-fermat>.

  <\corollary>
    <label|primordnung-zyklisch>Sei <math|G> eine Gruppe mit
    <math|<around*|\||G|\|>=p>, <math|p\<in\><with|font|Bbb|P>>. Dann ist
    <math|G> zyklisch und <math|G\<cong\><around*|(|<with|font|Bbb|Z>/p
    <with|font|Bbb|Z>,+|)>>.
  </corollary>

  <\proof>
    Es sei <math|g\<in\>G> nicht das neutrale Element. Dann gilt
    <math|<with|font-family|rm|ord><around*|(|g|)>\<geq\>2> und
    <math|<with|font-family|rm|ord><around*|(|g|)>\<mid\><around*|\||G|\|>=p>
    nach Folgerung <reference|kleiner-fermat-allgemein>, also
    notwendigerweise <math|<with|font-family|rm|ord><around*|(|g|)>=p>, da
    <math|p> eine Primzahl ist.
  </proof>

  Auch diese Aussage kennen wir im Prinzip schon, nämlich Korollar
  <reference|tower-law-korollar>.

  <section|Endliche Gruppen>

  <\definition>
    Sei <math|<around*|(|G,\<circ\>|)>> eine Gruppe und <math|S> eine
    nichtleere Menge. Eine <em|Aktion von <math|G> auf <math|S>> ist eine
    Abbildung

    <\equation*>
      \<ast\> :G\<times\>S\<rightarrow\>S,<space|1em><around*|(|g,x|)>\<mapsto\>g\<ast\>x,
    </equation*>

    die folgende Bedingungen erfüllt:

    <\indent>
      (1) <math|e\<ast\>x=x> für alle <math|x\<in\>S>.

      (2) <math|g\<ast\><around*|(|h\<ast\>x|)>=<around*|(|g\<circ\>h|)>\<ast\>x>
      für alle <math|g,h\<in\>G> und <math|x\<in\>S>.
    </indent>

    Wir sagen, dass <math|G> auf <math|S> <em|operiert>.
  </definition>

  <\example>
    <label|aktion-beispiel>(1) Sei <math|H\<leq\>G> eine Untergruppe und
    <math|S=G>. Dann ist

    <\equation*>
      H\<times\>G\<rightarrow\>G,<space|1em><around*|(|h,g|)>\<mapsto\>h\<circ\>g
    </equation*>

    eine Aktion von <math|H> auf <math|G>. Sie wird auch <em|Linkstranslation
    von <math|H> auf <math|G>> genannt.

    (2) Sei <math|H\<leq\>G> wieder eine Untergruppe und <math|S=G>. Die
    Konjugationsabbildung

    <\equation*>
      <around*|(|h,g|)>\<mapsto\>h\<ast\>g\<assign\>h g h<rsup|-1>,
    </equation*>

    genannt die <em|Konjugation von <math|H> auf <math|G>>, ist eine Aktion
    von <math|H> auf <math|G>.

    (3) Sei <math|G=<with|font-family|rm|Gal><around*|(|L/K|)>> und
    <math|S=L> eine Galoiserweiterung des Körpers <math|K>. Man überprüft,
    dass

    <\equation*>
      G\<times\>L\<rightarrow\>L,<space|1em><around*|(|\<sigma\>,\<ell\>|)>\<mapsto\>\<sigma\>\<ast\>\<ell\>\<assign\>\<sigma\><around*|(|\<ell\>|)>
    </equation*>

    eine Gruppenaktion von <math|G> auf <math|K> definiert.

    (4) Sei <math|V> ein Vektorraum über einem Körper <math|K>. Dann
    definiert die Multiplikation von Vektoren aus <math|V> mit Skalaren aus
    <math|K<rsup|\<ast\>>> \R<math|\<cdot\>>\P die Gruppenaktion

    <\equation*>
      K<rsup|\<ast\>>\<times\>V\<rightarrow\>V,<space|1em><around*|(|k,v|)>\<mapsto\>k\<cdot\>v
    </equation*>

    von <math|K<rsup|\<ast\>>> auf <math|V>. Setzt man für alle
    <math|v\<in\>V> noch <math|0\<cdot\>v=v>, so kann diese auf ganz <math|K>
    ausgedehnt werden. Fordern wir zusätzlich, dass die Distributivgesetze
    <math|<around*|(|k<rsub|1>+k<rsub|2>|)>\<cdot\>v=k<rsub|1>\<cdot\>v+k<rsub|2>\<cdot\>v>
    und <math|k\<cdot\><around*|(|v<rsub|1>+v<rsub|2>|)>=k\<cdot\>v<rsub|1>+k\<cdot\>v<rsub|2>>
    für <math|k,k<rsub|1>,k<rsub|2>\<in\>K> und
    <math|v,v<rsub|1>,v<rsub|2>\<in\>V> gelten, erhalten wir die übliche
    Struktur in Vektorräumen.

    (5) Die Matrix-Vektor-Multiplikation

    <\equation*>
      <with|font-family|rm|GL><around*|(|n,K|)>\<times\>K<rsup|n>\<rightarrow\>K<rsup|n>,<space|1em><around*|(|A,v|)>\<mapsto\>A
      v
    </equation*>

    definiert eine Aktion von <math|<with|font-family|rm|GL><around*|(|n,K|)>>
    auf <math|K<rsup|n>>.
  </example>

  <\lemma>
    <label|orbits-relation>Sei <math|G> eine Gruppe und <math|S> eine Menge
    auf der <math|G> per \R<math|\<ast\>>\P operiert. Dann gilt:

    <\indent>
      (1) Die Relation

      <\equation*>
        x\<sim\>x<rprime|'><space|1em>:\<Leftrightarrow\><space|1em>\<exists\>g\<in\>G
        : g\<ast\>x=x<rprime|'>
      </equation*>

      ist eine Äquivalenzrelation auf <math|S>.

      (2) Die Menge <math|G<rsub|x>\<assign\><around*|{|g\<in\>G
      <around*|\|||\<nobracket\>> g\<ast\>x=x|}>> ist eine Untergruppe von
      <math|G> für alle <math|x\<in\>S>.
    </indent>
  </lemma>

  <\proof>
    (1) Reflexivität: Es gilt <math|e\<ast\>x=x> für alle <math|x\<in\>S>,
    d.h. <math|x\<sim\>x>.

    Symmetrie: Nehmen wir an, dass <math|x\<sim\>y> für <math|x,y\<in\>S>,
    also existiert <math|g\<in\>G> mit <math|g\<ast\>x=y> und daher

    <\equation*>
      g<rsup|-1>\<ast\>y=g<rsup|-1>\<ast\><around*|(|g\<ast\>x|)>=<around*|(|g<rsup|-1>\<circ\>g|)>\<ast\>x=e\<ast\>x=x.
    </equation*>

    Transitivität: Sei <math|x\<sim\>y> und <math|y\<sim\>z> für
    <math|x,y,z\<in\>S>. Dann gibt es <math|g<rsub|1>,g<rsub|2>\<in\>G>,
    sodass <math|g<rsub|1>\<ast\>x=y> und <math|g<rsub|2>\<ast\>y=z>. Es
    folgt, dass <math|<around*|(|g<rsub|2>\<circ\>g<rsub|1>|)>\<ast\>x=g<rsub|2>\<ast\><around*|(|g<rsub|1>\<ast\>x|)>=g<rsub|2>\<ast\>y=z>.

    (2) Sei <math|x\<in\>S> beliebig. Sind
    <math|g<rsub|1>,g<rsub|2>\<in\>G<rsub|x>>, so folgt

    <\equation*>
      <around*|(|g<rsub|1>\<circ\>g<rsub|2>|)>\<ast\>x=g<rsub|1>\<ast\><around*|(|g<rsub|2>\<ast\>x|)>=g<rsub|1>\<ast\>x=x,
    </equation*>

    d.h. <math|g<rsub|1>\<circ\>g<rsub|2>\<in\>G<rsub|x>>. Da

    <\equation*>
      g<rsub|1><rsup|-1>\<ast\>x=g<rsub|1><rsup|-1>\<ast\><around*|(|g<rsub|1>\<ast\>x|)>=<around*|(|g<rsub|1><rsup|-1>\<circ\>g<rsub|1>|)>\<ast\>x=x
    </equation*>

    und offenbar <math|e\<in\>G<rsub|x>>, folgt <math|G<rsub|x>\<leq\>G>.
  </proof>

  Wir nennen die von einer Aktion \R<math|\<ast\>>\P auf <math|S> induzierten
  Äquivalenzklassen die <em|Orbits von <math|G> in <math|S>>. Der Orbit von
  <math|x\<in\>S> wird auch mit <math|<around*|[|x|]><rsub|G,\<ast\>>> oder
  <math|<around*|[|x|]>> oder <math|G x> (sofern <math|G> und
  \R<math|\<ast\>>\P vom Kontext her klar sind) bezeichnet. Die Untergruppe
  <math|G<rsub|x>> nennen wir auch den <em|Stabilisator von <math|x> in
  <math|G>>, alternativ die <em|Isotropiegruppe von <math|x> in <math|G>>.

  <\definition>
    Betrachten wir Beispiel <reference|aktion-beispiel> (2).

    <\indent>
      (1) Der Orbit von <math|g\<in\>G> bezüglich der Konjugation mit
      Elementen aus <math|H> heiÿt <em|<math|H>-Konjugationsklasse von
      <math|g>>. Es gilt <math|<around*|[|g|]>=<around*|{|h g h<rsup|-1>
      <around*|\|||\<nobracket\>> h\<in\>H|}>>.

      (2) Die Isotropiegruppe <math|H<rsub|g>=<around*|{|h\<in\>H
      <around*|\|||\<nobracket\>> h g h<rsup|-1>=g|}>> von einem
      <math|g\<in\>G> heiÿt <em|Zentralisator von <math|g> in <math|H>> und
      wird mit <math|C<rsub|H><around*|(|g|)>> bezeichnet. Im Fall <math|G=H>
      wird der Durchschnitt

      <\equation*>
        Z<around*|(|G|)>\<assign\><big|cap><rsub|g\<in\>G>C<rsub|G><around*|(|g|)>
      </equation*>

      das <em|Zentrum von <math|G>> genannt.

      (3) Sei <math|S=<around*|{|K\<leq\>G|}>> und

      <\equation*>
        H\<times\>S,<space|1em><around*|(|h,K|)>\<mapsto\>h K h<rsup|-1>
      </equation*>

      eine Aktion von <math|H> auf <math|S>. Dann heiÿt die Isotropiegruppe
      von <math|K\<in\>S> in <math|H> bezüglich dieser Aktion der
      <em|Normalisator von <math|K> in <math|H>> und wird mit
      <math|N<rsub|H><around*|(|K|)>> bezeichnet.
    </indent>
  </definition>

  <\example>
    (1) Sei <math|H=G>. Offenbar handelt es sich bei <math|Z<around*|(|G|)>>
    um jene Untergruppe von <math|G>, die aus den Elementen von <math|G>
    besteht, die man mit allen <math|g\<in\>G> vertauschen kann, i.e.

    <\equation*>
      Z<around*|(|G|)>=<around*|{|z\<in\>G <around*|\|||\<nobracket\>>
      \<forall\>g\<in\>G :z g=g z|}>.
    </equation*>

    (2) Es gilt <math|N<rsub|G><around*|(|K|)>\<leq\>G>. Ferner gilt
    <math|K\<trianglelefteqslant\>G> genau dann, wenn
    <math|N<rsub|G><around*|(|K|)>=G>. Auÿerdem gilt
    <math|K\<trianglelefteqslant\>N<rsub|G><around*|(|K|)>>, aber <em|nicht>
    unbedingt <math|N<rsub|G><around*|(|K|)>\<trianglelefteqslant\>G>. Sei
    beispielsweise <math|G=<with|font-family|rm|GL><around*|(|2,<with|font|Bbb|R>|)>>
    und <math|K\<leq\>G> die Menge der Diagonalmatrizen in dieser Gruppe.
    Dann ist der Normalisator von <math|K> in <math|G> die Menge der
    Matrizen, bei denen in jeder Zeile bzw. Spalte genau ein Eintrag ungleich
    Null ist. Insbesondere haben wir

    <\equation*>
      <matrix|<tformat|<table|<row|<cell|0>|<cell|2>>|<row|<cell|1>|<cell|0>>>>>\<in\>N<rsub|G><around*|(|K|)>,<space|1em><text|aber><space|1em><matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>>>>>
      <matrix|<tformat|<table|<row|<cell|0>|<cell|2>>|<row|<cell|1>|<cell|0>>>>>
      <matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>>>>><rsup|-1>=<matrix|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|-1>>>>>\<notin\>N<rsub|G><around*|(|K|)>,
    </equation*>

    d.h. <math|N<rsub|G><around*|(|K|)><neg|\<trianglelefteqslant\>> G>.
  </example>

  <\lemma>
    <dueto|Bahnformel><label|orbits-kardinalitaet>Sei <math|G> eine Gruppe,
    die per \R<math|\<ast\>>\P auf der Menge <math|S> operiert. Dann ist

    <\equation*>
      <around*|\||<around*|[|x|]><rsub|G,\<ast\>>|\|>=<around*|[|G
      :G<rsub|x>|]>.
    </equation*>
  </lemma>

  <\proof>
    Betrachten wir die Abbildung

    <\equation*>
      G/G<rsub|x>\<rightarrow\><around*|[|x|]><rsub|G,\<ast\>>,<space|1em>g
      G<rsub|x>\<mapsto\>g\<ast\>x.
    </equation*>

    Diese ist wohldefiniert; denn gilt <math|g<rsub|1> G<rsub|x>=g<rsub|2>
    G<rsub|x>> für <math|g<rsub|1>,g<rsub|2>\<in\>G>, so folgt:

    <math|<align*|<tformat|<table|<row|<cell|g<rsub|1>
    g<rsub|2><rsup|-1>\<in\>G<rsub|x>\<Leftrightarrow\>>|<cell|<around*|(|g<rsup|-1><rsub|1>
    g<rsub|2>|)>\<ast\>x=x\<Leftrightarrow\>g<rsup|-1><rsub|1>\<ast\><around*|(|g<rsub|2>\<ast\>x|)>=x>>|<row|<cell|\<Leftrightarrow\>>|<cell|g<rsub|1>\<ast\><around*|(|g<rsub|1><rsup|-1>\<ast\><around*|(|g<rsub|2>\<ast\>x|)>|)>=g<rsub|1>\<ast\>x>>|<row|<cell|\<Leftrightarrow\>>|<cell|g<rsub|2>\<ast\>x=g<rsub|1>\<ast\>x.>>>>>>

    Da auch die Bijektivität sofort aus dieser Implikationskette ersichtlich
    ist, folgern wir

    <\equation*>
      <around*|\||<around*|[|x|]><rsub|G,\<ast\>>|\|>=<around*|\||G/G<rsub|x>|\|>=<around*|[|G
      :G<rsub|x>|]>,
    </equation*>

    wie gewünscht.
  </proof>

  Im Englischen ist die Bahnformel als <em|Orbit-stabilizer theorem> bekannt.

  <\lemma>
    <label|satz-von-cauchy-lemma>Es sei <math|G> eine endliche Gruppe mit
    <math|<around*|\||G|\|>=p<rsup|n>> für <math|p\<in\><with|font|Bbb|P>>,
    <math|n\<in\><with|font|Bbb|N><rsub|0>>. Ferner operiere <math|G> auf
    einer endlichen Menge <math|S> mit der Aktion \R<math|\<ast\>>\P. Sei
    <math|S<rsub|0>\<assign\><around*|{|x\<in\>S <around*|\|||\<nobracket\>>
    \<forall\>g\<in\>G :g\<ast\>x=x|}>>. Dann ist

    <\equation*>
      <around*|\||S|\|>\<equiv\><around*|\||S<rsub|0>|\|> <pmod|p>.
    </equation*>
  </lemma>

  <\proof>
    Per Definition von <math|S<rsub|0>> gilt
    <math|<around*|\||<around*|[|x|]><rsub|G,\<ast\>>|\|>=1> genau dann, wenn
    <math|x\<in\>S<rsub|0>>. Nach Lemma <reference|orbits-relation> gibt es
    eine Partition

    <\equation*>
      S=S<rsub|0>\<cup\><around*|[|x<rsub|1>|]><rsub|G,\<ast\>>\<cup\>\<cdots\>\<cup\><around*|[|x<rsub|m>|]><rsub|G,\<ast\>>
    </equation*>

    für <math|x<rsub|1>,\<ldots\>,x<rsub|m>\<in\>S> und
    <math|m\<in\><with|font|Bbb|N>> wobei
    <math|<around*|\||<around*|[|x<rsub|i>|]><rsub|G,\<ast\>>|\|>\<gtr\>1>
    und folglich <math|<around*|\||G<rsub|x<rsub|i>>|\|>\<less\><around*|\||G|\|>=p<rsup|n>>
    für jene <math|1\<leq\>i\<leq\>m>. Aus Lemma
    <reference|orbits-kardinalitaet> sowie dem Satz von Lagrange folgt nun

    <math|<align*|<tformat|<table|<row|<cell|<around*|\||S|\|>=>|<cell|<around*|\||S<rsub|0>|\|>+<around*|\||<around*|[|x<rsub|1>|]><rsub|G,\<ast\>>|\|>+\<cdots\>+<around*|\||<around*|[|x<rsub|m>|]><rsub|G,\<ast\>>|\|>=<around*|\||S<rsub|0>|\|>+<around*|[|G
    :G<rsub|x<rsub|1>>|]>+\<cdots\>+<around*|[|G
    :G<rsub|x<rsub|m>>|]>>>|<row|<cell|=>|<cell|<around*|\||S<rsub|0>|\|>+<frac|<around*|\||G|\|>|<around*|\||G<rsub|x<rsub|1>>|\|>>+\<cdots\>+<frac|<around*|\||G|\|>|<around*|\||G<rsub|x<rsub|m>>|\|>>>>|<row|<cell|=>|<cell|<around*|\||S<rsub|0>|\|>+<frac|p<rsup|n>|<around*|\||G<rsub|x<rsub|1>>|\|>>+\<cdots\>+<frac|p<rsup|n>|<around*|\||G<rsub|x<rsub|m>>|\|>>,>>>>>>

    d.h. <math|<around*|\||S|\|>\<equiv\><around*|\||S<rsub|0>|\|> <pmod|p>>.
  </proof>

  Mit diesem Lemma können wir nun den <em|Satz von Cauchy> beweisen:

  <\proposition>
    <dueto|Cauchy>Sei <math|G> eine endliche Gruppe mit
    <math|<around*|\||G|\|>=m> und <math|p \<mid\>m> ein Primteiler von
    <math|m>. Dann existiert ein <math|g\<in\>G> mit
    <math|<with|font-family|rm|ord><around*|(|g|)>=p>. Insbesondere existiert
    eine Untergruppe <math|H\<leq\>G> mit <math|<around*|\||H|\|>=p>.
  </proposition>

  <\proof>
    Sei <math|S\<assign\><around*|{|<around*|(|g<rsub|1>,\<ldots\>,g<rsub|p>|)>
    <around*|\|||\<nobracket\>> <big|prod><rsub|i=1><rsup|p> g<rsub|i>=e|}>>.
    Da für eine beliebige Wahl von <math|g<rsub|1>,\<ldots\>,g<rsub|p-1>> das
    Element <math|g<rsub|p>=<big|prod><rsub|i=1><rsup|p-1>
    g<rsub|p-i><rsup|-1>> fixiert ist, folgt
    <math|<around*|\||S|\|>=m<rsup|p-1>>, also
    <math|<around*|\||S|\|>\<equiv\>0 <pmod|p>>. Wir definieren die Aktion

    <math|<align*|<tformat|<table|<row|<cell|<with|font|Bbb|Z>/p
    <with|font|Bbb|Z>\<times\>S\<rightarrow\>S,<space|1em>>|<cell|<around*|(|k,<around*|(|g<rsub|1>,\<ldots\>,g<rsub|p>|)>|)>\<mapsto\>k\<ast\><around*|(|g<rsub|1>,\<ldots\>,g<rsub|p>|)>>>|<row|<cell|\<assign\>>|<cell|<around*|(|g<rsub|k+1>,g<rsub|k+2>,\<ldots\>,g<rsub|p>,g<rsub|1>,g<rsub|2>,\<ldots\>,g<rsub|k>|)>.>>>>>>

    Diese Abbildung ist wohldefiniert, da <math|g\<circ\>h=e> automatisch
    <math|h\<circ\>g=e> impliziert und eine Aktion, da

    <math|<align*|<tformat|<table|<row|<cell|0\<ast\><around*|(|g<rsub|1>,\<ldots\>,g<rsub|p>|)>=>|<cell|<around*|(|g<rsub|1>,\<ldots\>,g<rsub|p>|)>,>>|<row|<cell|<around*|(|k+k<rprime|'>|)>\<ast\><around*|(|g<rsub|1>,\<ldots\>,g<rsub|p>|)>=>|<cell|<around*|(|g<rsub|k+k<rprime|'>+1>,\<ldots\>,g<rsub|p>,g<rsub|1>,\<ldots\>,g<rsub|k+k<rprime|'>>|)>=k\<ast\><around*|(|g<rsub|k<rprime|'>+1>,\<ldots\>,g<rsub|p>,g<rsub|1>,\<ldots\>,g<rsub|k<rprime|'>>|)>>>|<row|<cell|=>|<cell|k\<ast\><around*|(|k<rprime|'>\<ast\><around*|(|g<rsub|1>,\<ldots\>,g<rsub|p>|)>|)>.>>>>>>

    Betrachten wir nun <math|S<rsub|0>=<around*|{|x\<in\>S
    <around*|\|||\<nobracket\>> \<forall\>k\<in\><with|font|Bbb|Z>/p
    <with|font|Bbb|Z> :k\<ast\>x=x|}>> aus Lemma
    <reference|satz-von-cauchy-lemma>. Dann gilt offenbar
    <math|<around*|(|g<rsub|1>,\<ldots\>,g<rsub|p>|)>\<in\>S> genau dann,
    wenn <math|g<rsub|1>=\<cdots\>=g<rsub|p>>. Da das <math|p>-Tupel
    <math|<around*|(|e,\<ldots\>,e|)>> in <math|S<rsub|0>> liegt, folgt
    <math|<around*|\||S<rsub|0>|\|>\<gtr\>0>; ferner folgt aus
    <math|0=<around*|\||S|\|>\<equiv\><around*|\||S<rsub|0>|\|> <pmod|p>>
    (eben Lemma <reference|satz-von-cauchy-lemma>) somit
    <math|<around*|\||S<rsub|0>|\|>\<geq\>2>. Das heiÿt, es existiert
    <math|e\<neq\>g\<in\>G> mit <math|<around*|(|g,\<ldots\>,g|)>\<in\>S<rsub|0>>,
    i.e. <math|g<rsup|p>=<big|prod><rsub|i=1><rsup|p> g<rsub|i>=e> und damit
    <math|<with|font-family|rm|ord><around*|(|g|)>=p> (nach Lemma
    <reference|ordnung-teiler>).
  </proof>

  <\example>
    (1) Sei <math|G> eine endliche Gruppe mit gerader Gruppenordnung. Dann
    hat <math|G> eine Involution nach dem Satz von Cauchy, d.h., ein Element
    <math|g\<neq\>e> mit <math|g<rsup|2>=e>.

    (2) Aus dem Satz von Lagrange und dem Satz von Cauchy folgt: Eine
    endliche Gruppe <math|G> hat genau dann ungerade Ordnung, wenn <math|e>
    die eindeutige Lösung von <math|g<rsup|2>=e> ist.

    (3) Einen noch schnelleren Beweis von Folgerung
    <reference|primordnung-zyklisch> erhalten wir auch durch den Satz von
    Cauchy. Sei <math|G> eine endliche Gruppe mit
    <math|<around*|\||G|\|>=p,p\<in\><with|font|Bbb|P>>. Dann existiert
    <math|g\<in\>G> mit <math|<with|font-family|rm|ord><around*|(|g|)>=p=<around*|\||G|\|>>,
    also <math|G=\<langle\>p\<rangle\>>.
  </example>

  Der Satz von Cauchy ist ein Spezialfall des <em|Ersten
  Sylowsatzes><\footnote>
    Peter Ludwig Mejdell Sylow (1832 \U 1918), norwegischer Mathematiker
  </footnote>:

  <\theorem>
    <dueto|Erster Sylowsatz><label|erster-sylowsatz>Sei <math|G> eine
    endliche Gruppe mit <math|<around*|\||G|\|>=p<rsup|n>\<cdot\>k> mit
    <math|p\<in\><with|font|Bbb|P>,n\<geq\>1> und
    <math|<with|font-family|rm|ggT><around*|(|p,k|)>=1>. Dann existieren
    Untergruppen

    <\equation*>
      H<rsub|i>\<leq\>G<space|1em><text|mit><space|1em><around*|\||H<rsub|i>|\|>=p<rsup|i>
    </equation*>

    für <math|i=0,\<ldots\>,n>.
  </theorem>

  <\proof>
    Wir führen vollständige Induktion nach <math|n>. Der Fall <math|n=0> ist
    offensichtlich.

    <space|1em>Sei die Aussage nun für alle Gruppen <math|G> mit
    <math|<around*|\||G|\|>=p<rsup|n-1>\<cdot\>k> und
    <math|<with|font-family|rm|ggT><around*|(|p,k|)>=1> gezeigt. Nehmen wir
    zunächst an, dass <math|k=1>. Sei <math|S\<assign\>G> und <math|\<ast\>>
    die Konjugation von <math|G> auf sich selbst, d.h.

    <\equation*>
      G\<times\>G\<rightarrow\>G,<space|1em><around*|(|g,h|)>\<mapsto\>h g
      h<rsup|-1>.
    </equation*>

    Da <math|k=1>, sind alle Voraussetzungen von Lemma
    <reference|satz-von-cauchy-lemma> erfüllt und es gilt ferner
    <math|S<rsub|0>=<around*|{|g\<in\>G <around*|\|||\<nobracket\>>
    \<forall\>h\<in\>G :h\<ast\>g=g|}>=Z<around*|(|G|)>>, also
    <math|<around*|\||G|\|>\<equiv\><around*|\||Z<around*|(|G|)>|\|>
    <pmod|p>>. Da <math|Z<around*|(|G|)>\<leq\>G> folgt aus dem Satz von
    Lagrange, dass <math|<around*|\||Z<around*|(|G|)>|\|>
    \<mid\><around*|\||G|\|>>, insgesamt erhalten wir somit <math|p
    \<mid\><around*|\||Z<around*|(|G|)>|\|>> und
    <math|<around*|\||Z<around*|(|G|)>|\|>
    \<mid\><around*|\||G|\|>=p<rsup|n>>, i.e.
    <math|<around*|\||Z<around*|(|G|)>|\|>=p<rsup|\<ell\>>> für
    <math|1\<leq\>\<ell\>\<leq\>n>. Nach dem Satz von Cauchy existiert also
    <math|z\<in\>Z<around*|(|G|)>> mit <math|<with|font-family|rm|ord><around*|(|z|)>=p>
    und <math|\<langle\>z\<rangle\>\<trianglelefteqslant\>G>; insbesondere
    ist <math|G/\<langle\>z\<rangle\>> eine Gruppe. Aus dem Satz von Lagrange
    folgt nun, dass

    <\equation*>
      <around*|\||G/\<langle\>z\<rangle\>|\|>=<frac|<around*|\||G|\|>|<around*|\||\<langle\>z\<rangle\>|\|>>=<frac|p<rsup|n>|p>=p<rsup|n-1>,
    </equation*>

    also können wir die Induktionsvoraussetzung auf
    <math|G/\<langle\>z\<rangle\>> anwenden, d.h. es existieren
    <math|H<rsub|i><rprime|'>\<leq\>G/\<langle\>z\<rangle\>> mit
    <math|H<rsub|i><rprime|'>=p<rsup|i>> für <math|i=0,\<ldots\>,n-1>.
    Betrachten wir die natürliche Projektion <math|\<pi\>
    :G\<twoheadrightarrow\>G/\<langle\>z\<rangle\>>. Dann ist
    <math|H<rsub|i+1>\<assign\>\<pi\><rsup|-1><around*|(|H<rsub|i><rprime|'>|)>>
    eine Untergruppe von <math|G> mit <math|<around*|\||H<rsub|i+1>|\|>=p<rsup|i+1>>
    für <math|i=0,\<ldots\>,n-1>, wie gewünscht.

    <space|1em>Nehmen wir nun an, dass <math|k\<neq\>1>. Nach dem gerade
    Gezeigten reicht es, zu beweisen, dass <math|H\<leq\>G> mit
    <math|<around*|\||H|\|>=p<rsup|n>> existiert. Sei <math|p
    \<mid\><around*|\||Z<around*|(|G|)>|\|>> ein Primteiler; dann existiert
    wieder <math|z\<in\>Z<around*|(|G|)>> mit
    <math|<with|font-family|rm|ord><around*|(|z|)>=p> und wir können die
    Induktionsvoraussetzung erneut auf <math|G/\<langle\>z\<rangle\>>
    anwenden, um <math|H<rsub|i>=\<pi\><rsup|-1><around*|(|H<rsub|i><rprime|'>|)>>
    für Untergruppen <math|H<rsub|i><rprime|'>\<leq\>G/\<langle\>z\<rangle\>>
    mit <math|<around*|\||H<rsub|i><rprime|'>|\|>=p<rsup|i>> für
    <math|i=0,\<ldots\>,n-1> zu erhalten.

    <space|1em>Es sei also <math|p\<nmid\><around*|\||Z<around*|(|G|)>|\|>>.
    Nach Lemma <reference|orbits-relation> existiert ein
    <math|r\<in\><with|font|Bbb|N><rsub|0>> bzw. eine Partition

    <\equation*>
      G=Z<around*|(|G|)>\<cup\><wide*|<around*|[|g<rsub|1>|]><rsub|G,\<ast\>>\<cup\>\<cdots\>\<cup\><around*|[|g<rsub|r>|]><rsub|G,\<ast\>>|\<wide-underbrace\>><rsub|<text|Orbits
      mit ><around*|\||<around*|[|g|]><rsub|G,\<ast\>>|\|>\<gtr\>1>
    </equation*>

    für <math|g<rsub|1>,\<ldots\>,g<rsub|r>\<in\>G> (mit <math|\<ast\>> der
    Konjugation auf <math|G>). Es folgt

    <\equation*>
      p<rsup|n> k=<around*|\||G|\|>=<around*|\||Z<around*|(|G|)>|\|>+<big|sum><rsub|j=1><rsup|r><around*|\||<around*|[|g<rsub|j>|]><rsub|G,\<ast\>>|\|>,
    </equation*>

    wobei <math|r\<geq\>1>, da <math|p\<nmid\><around*|\||Z<around*|(|G|)>|\|>>
    per Annahme. Also existiert ein <math|j\<in\><around*|{|1,\<ldots\>,r|}>>
    mit <math|<around*|\||<around*|[|g<rsub|j>|]><rsub|G,\<ast\>>|\|>\<gtr\>1>
    und <math|p\<nmid\><around*|[|g<rsub|j>|]><rsub|G,\<ast\>>>. Ferner gilt

    <\equation*>
      <around*|\||<around*|[|g<rsub|j>|]><rsub|G,\<ast\>>|\|>=<around*|[|G:G<rsub|g<rsub|j>>|]>=<frac|<around*|\||G|\|>|<around*|\||G<rsub|g<rsub|j>>|\|>>=<frac|p<rsup|n>
      k|<around*|\||G<rsub|g<rsub|j>>|\|>>,
    </equation*>

    aber <math|p\<nmid\><around*|[|g<rsub|j>|]><rsub|G,\<ast\>>> impliziert
    <math|<around*|\||G<rsub|g<rsub|j>>|\|>=p<rsup|n> k<rprime|'>> mit
    <math|k<rprime|'>\<mid\>k>. Insbesondere folgt aus
    <math|<around*|\||<around*|[|g<rsub|j>|]><rsub|G,\<ast\>>|\|>>, dass
    <math|1\<leq\>k<rprime|'>\<less\>k>. Falls <math|k<rprime|'>=1>, so ist
    <math|H=G<rsub|g<rsub|j>>\<leq\>G> die gewünschte Untergruppe von
    <math|G> und falls <math|k<rprime|'>\<gtr\>1>, so können wir das obige
    Argument mit <math|k<rprime|'>> statt <math|k> wiederholen und nach
    endlich vielen Schritten eine Untergruppe <math|H\<leq\>G> von <math|G>
    mit <math|<around*|\||H|\|>=p<rsup|n>> erhalten.
  </proof>

  Fassen wir zusammen: Ist <math|G> eine beliebige endliche Gruppe mit
  <math|<around*|\||G|\|>=<big|prod><rsub|p\<in\><with|font|Bbb|P>>p<rsup|\<nu\><rsub|p>>>
  für Exponenten <math|\<nu\><rsub|p>\<in\><with|font|Bbb|N><rsub|0>>, so
  existiert zu jeder Primzahlpotenz <math|p<rsup|j>> mit
  <math|0\<leq\>j\<leq\>\<nu\><rsub|p>> eine Untergruppe <math|H\<leq\>G> mit
  <math|<around*|\||H|\|>=p<rsup|j>>. Die Untergruppe von Kardinalität
  <math|p<rsup|\<nu\><rsub|p>>> nennen wir die <em|<math|p>-Sylowgruppe> von
  <math|G>. In Anbetracht von Beispiel <reference|alternierende-gruppe>, wo
  wir die alternierende Gruppe <math|A<rsub|4>> betrachtet haben, ist der
  Erste Sylowsatz diesbezüglich das \Rbestmögliche\P Resultat.

  <space|1em>Man kann den Ersten Sylowsatz auch galoistheoretisch
  interpretieren. Sei <math|L :K> eine endliche Galoiserweiterung. Zusammen
  mit dem Hauptsatz der Galoistheorie, sagt der Erste Sylowsatz dann, dass es
  zu jeder Primfaktorpotenz <math|p<rsup|i>>, die <math|<around*|[|L
  :K|]>=<around*|\||<with|font-family|rm|Gal><around*|(|L/K|)>|\|>> teilt,
  einen Zwischenkörper <math|M<rsub|i>>, <math|K\<subseteq\>M<rsub|i>\<subseteq\>L>,
  gibt mit <math|<around*|[|L:M<rsub|i>|]>=p<rsup|i>>. Dieser Ansatz leitet
  auch zum Versuch eines alternativen Beweises von Satz
  <reference|erster-sylowsatz>: Wir konstruieren eine endliche
  Galoiserweiterung <math|L :K>, finden einen Zwischenkörper <math|M<rsub|i>>
  mit <math|<around*|[|L :M<rsub|i>|]>=p<rsup|i>> und verwenden dann Satz
  <reference|endliche-gruppe-galois-gruppe>.

  <space|1em>Nun ein kurzer Exkurs in die Theorie der abelschen Gruppen. Wir
  wissen, dass eine Gruppe <math|G> genau dann abelsch ist, wenn
  <math|G=Z<around*|(|G|)>=<around*|{|g\<in\>G <around*|\|||\<nobracket\>>
  \<forall\>h\<in\>G : g h=h g|}>>.

  <\definition>
    Sei <math|G> eine Gruppe. Sei <math|X\<assign\><around*|{|g h g<rsup|-1>
    h<rsup|-1> <around*|\|||\<nobracket\>> g,h\<in\>G|}>> die Menge der
    <em|Kommutatoren>. Wir nennen die Gruppe

    <\equation*>
      <around*|[|G;G|]>\<assign\>\<langle\>X\<rangle\>
    </equation*>

    die <em|Kommutatorgruppe>, wobei wir mit <math|\<langle\>X\<rangle\>> die
    von <math|X> erzeugte Untergruppe <math|\<langle\>X\<rangle\>\<subseteq\>G>
    bezeichnen, d.h. der Durchschnitt aller Untergruppen von <math|G>, die
    <math|X> enthalten.
  </definition>

  <\lemma>
    <label|aufloesbare-gruppe>Sei <math|G> eine Gruppe. Dann gilt:

    <\indent>
      (1) <math|G> ist genau dann abelsch, wenn
      <math|<around*|[|G;G|]>=<around*|{|e|}>>.

      (2) Die Kommutatorgruppe <math|<around*|[|G;G|]>> ist normal in
      <math|G>.

      (3) <math|G/<around*|[|G;G|]>>, die sogenannte <em|Abelisierung> von
      <math|G>, ist abelsch.

      (4) Sei <math|G<rsup|<around*|(|1|)>>\<assign\><around*|[|G;G|]>> und
      <math|G<rsup|<around*|(|i+1|)>>\<assign\><around*|[|G<rsup|<around*|(|i|)>>
      ;G<rsup|<around*|(|i|)>>|]>> für <math|i\<geq\>1>. Dann erhalten wir
      eine absteigende Kette

      <\equation*>
        \<cdots\>\<trianglelefteqslant\>G<rsup|<around*|(|3|)>>\<trianglelefteqslant\>G<rsup|<around*|(|2|)>>\<trianglelefteqslant\>G<rsup|<around*|(|1|)>>\<trianglelefteqslant\>G.
      </equation*>
    </indent>
  </lemma>

  <\proof>
    (1) Ist <math|G> abelsch, so gilt für alle Kommutatoren <math|g h
    g<rsup|-1> h<rsup|-1>=e>, <math|g,h\<in\>G>, also insbesondere
    <math|<around*|[|G;G|]>=<around*|{|e|}>>. Umgekehrt, falls
    <math|<around*|[|G;G|]>=<around*|{|e|}>>, so folgt für beliebige
    <math|g,h\<in\>G>, dass <math|g h g<rsup|-1> h<rsup|-1>=e>, also <math|g
    h=h g>.

    (2) Ist <math|g\<in\>G> und <math|c\<in\><around*|[|G;G|]>>, so folgt
    <math|g c g<rsup|-1> c<rsup|-1>\<in\><around*|[|G;G|]>>, also
    insbesondere <math|g c g<rsup|-1>=<around*|(|g c g<rsup|-1> c<rsup|-1>|)>
    c\<in\><around*|[|G;G|]>> wegen der Abgeschlossenheit.

    (3) Seien <math|g,h\<in\>G>. Dann folgt <math|<around*|(|g h|)><rsup|-1>
    h g=h<rsup|-1> g<rsup|-1> h g\<in\><around*|[|G;G|]>>, also gilt für die
    Restklassen <math|g h <around*|[|G;G|]>=h g <around*|[|G;G|]>> nach
    Proposition <reference|linksnebenklassenzerlegung>.

    (4) Aus (2) folgt direkt <math|G<rsup|<around*|(|i+1|)>>\<trianglelefteqslant\>G<rsup|<around*|(|i|)>>>
    für alle <math|i\<geq\>1>.
  </proof>

  Ergibt die Kette aus Lemma <reference|aufloesbare-gruppe> (4) nach endlich
  vielen Schritten schlieÿlich <math|<around*|{|e|}>>, d.h. es existiert ein
  <math|n\<in\><with|font|Bbb|N>> mit <math|<around*|{|e|}>=G<rsup|<around*|(|n|)>>>,
  so nennt man <math|G> <em|auflösbar>. Abelsche Gruppen sind also die \Ram
  schnellsten\P auflösbaren Gruppen (<math|<around*|{|e|}>=G<rsup|<around*|(|1|)>>>).

  <\lemma>
    <label|aufloesbar-lemma>Seien <math|G> und <math|H> Gruppen und
    <math|\<phi\> :G\<rightarrow\>H> ein Homomorphismus. Dann gilt:

    <\indent>
      (1) <math|\<phi\><around*|(|<around*|[|G;G|]>|)>=<around*|[|\<phi\><around*|(|G|)>
      ;\<phi\><around*|(|G|)>|]>\<leq\><around*|[|H;H|]>>.

      (2) Ist <math|G> auflösbar, so ist auch jede Untergruppe
      <math|G<rprime|'>\<leq\>G> von <math|G> auflösbar.

      (3) Sind <math|G> und <math|H> auflösbar, so ist auch das direkte
      Produkt <math|G\<times\>H> auflösbar.

      (4) Ist <math|N\<trianglelefteqslant\>G> und <math|G> auflösbar, so ist
      auch <math|G/N> auflösbar.
    </indent>
  </lemma>

  <\proof>
    (1) Seien <math|g<rsub|1>,g<rsub|2>\<in\>G> beliebig. Dann folgt aus der
    Gleichung

    <\equation*>
      \<phi\><around*|(|g<rsub|1> g<rsub|2> g<rsub|1><rsup|-1>
      g<rsub|2><rsup|-1>|)>=\<phi\><around*|(|g<rsub|1>|)>
      \<phi\><around*|(|g<rsub|2>|)> \<phi\><around*|(|g<rsub|1>|)><rsup|-1>
      \<phi\><around*|(|g<rsub|2>|)><rsup|-1>\<in\><around*|[|\<phi\><around*|(|G|)>;\<phi\><around*|(|G|)>|]>
    </equation*>

    unmittelbar, dass <math|\<phi\><around*|(|<around*|[|G;G|]>|)>=<around*|[|\<phi\><around*|(|G|)>
    ;\<phi\><around*|(|G|)>|]>\<leq\><around*|[|H;H|]>>.

    (2) Sei <math|G<rprime|'>\<leq\>G> eine beliebige Untergruppe von
    <math|G>. Da <math|G> auflösbar ist, existiert <math|n\<geq\>1> mit
    <math|G<rsup|<around*|(|n|)>>=<around*|{|e|}>>. Betrachten wir den
    Einbettungshomomorphismus <math|\<phi\>
    :G<rprime|'>\<rightarrow\>G,\<phi\><around*|(|g|)>=g>, so gilt

    <\equation*>
      G<rprime|'><rsup|<around*|(|n|)>>\<cong\>\<phi\><around*|(|G|)><rsup|<around*|(|n|)>>=\<phi\><around*|(|G<rsup|<around*|(|n|)>>|)>=\<phi\><around*|(|<around*|{|e|}>|)>=<around*|{|e|}>,
    </equation*>

    wobei mit vollständiger Induktion nach <math|n> und (1) leicht zu zeigen
    ist, dass <math|\<phi\><around*|(|G|)><rsup|<around*|(|n|)>>=\<phi\><around*|(|G<rsup|<around*|(|n|)>>|)>>.

    (3) Seien <math|g<rsub|1>,g<rsub|2>\<in\>G> und
    <math|h<rsub|1>,h<rsub|2>\<in\>H>. Dann gilt

    <\equation*>
      <around*|(|g<rsub|1>,h<rsub|1>|)> <around*|(|g<rsub|2>,h<rsub|2>|)>
      <around*|(|g<rsub|1>,h<rsub|1>|)><rsup|-1>
      <around*|(|g<rsub|2>,h<rsub|2>|)><rsup|-1>=<around*|(|g<rsub|1>
      g<rsub|2> g<rsub|1><rsup|-1> g<rsub|2><rsup|-1>,h<rsub|1> h<rsub|2>
      h<rsub|1><rsup|-1> h<rsub|2><rsup|-1>|)>,
    </equation*>

    d.h. <math|<around*|[|G\<times\>H ;G\<times\>H|]>=<around*|[|G;G|]>\<times\><around*|[|H;H|]>>.
    Zusammen mit vollständiger Induktion folgt daraus, dass
    <math|<around*|(|G\<times\>H|)><rsup|<around*|(|n|)>>=G<rsup|<around*|(|n|)>>\<times\>H<rsup|<around*|(|n|)>>>
    für <math|n\<geq\>1>. Da <math|G> auflösbar ist, existiert
    <math|m<rsub|1>\<geq\>1>, sodass <math|G<rsup|<around*|(|m<rsub|1>|)>>=<around*|{|e<rsub|G>|}>>
    und ähnlich existiert <math|m<rsub|2>\<geq\>1>, sodass
    <math|H<rsup|<around*|(|m<rsub|2>|)>>=<around*|{|e<rsub|H>|}>>. Für
    <math|m\<geq\>max<around*|{|m<rsub|1>,m<rsub|2>|}>> folgt also, dass

    <\equation*>
      <around*|(|G\<times\>H|)><rsup|<around*|(|m|)>>=G<rsup|<around*|(|m|)>>\<times\>H<rsup|<around*|(|m|)>>=<around*|{|<around*|(|e<rsub|G>,e<rsub|H>|)>|}>,
    </equation*>

    wie gewünscht.

    (4) Für die kanonische Projektion <math|\<pi\> :G\<rightarrow\>G/N> gilt
    <math|\<pi\><around*|(|G<rsup|<around*|(|n|)>>|)>=<around*|(|G/N|)><rsup|<around*|(|n|)>>>.
    Ist also <math|G<rsup|<around*|(|m|)>>=<around*|{|e|}>> für ein
    <math|m\<geq\>1>, so folgt <math|<around*|(|G/N|)><rsup|<around*|(|m|)>>=\<pi\><around*|(|G<rsup|<around*|(|m|)>>|)>=<around*|{|N|}>>.
    Also ist <math|G/N> auflösbar.
  </proof>

  <\example>
    (1) <math|S<rsub|2>> ist abelsch, daher
    <math|S<rsub|2><rsup|<around*|(|1|)>>=<around*|{|e|}>> und ergo ist
    <math|S<rsub|2>> auflösbar. Wir erhalten die Kette
    <math|<around*|{|e|}>\<trianglelefteqslant\>S<rsub|2>>. <math|S<rsub|3>>
    ist nicht abelsch, aber <math|S<rsub|3><rsup|<around*|(|1|)>>=A<rsub|3>>
    ist abelsch und wir bekommen die Kette
    <math|<around*|{|e|}>\<trianglelefteqslant\>A<rsub|3>\<trianglelefteqslant\>S<rsub|3>>.
    Ebenso kann man zeigen, dass <math|S<rsub|4>> auflösbar ist.

    (2) Andererseits ist <math|S<rsub|5>> nicht auflösbar, denn
    <math|S<rsub|5><rsup|<around*|(|1|)>>=A<rsub|5>> und
    <math|S<rsub|5><rsup|<around*|(|2|)>>=A<rsub|5><rsup|<around*|(|1|)>>=<around*|[|A<rsub|5>;A<rsub|5>|]>=A<rsub|5>>,
    d.h. <math|S<rsub|5><rsup|<around*|(|i|)>>=A<rsub|5>\<neq\><around*|{|e|}>>
    für alle <math|i\<geq\>1>. Tatsächlich gilt allgemein: Für
    <math|n\<geq\>5> ist <math|S<rsub|n>> nicht auflösbar. In der Tat, ist
    <math|\<sigma\>\<in\>S<rsub|5>>, so setzen wir diese Permutation zu
    <math|\<sigma\><rprime|'>\<in\>S<rsub|n>> wie folgt fort:

    <\equation*>
      \<sigma\><rprime|'><around*|(|j|)>=<choice|<tformat|<table|<row|<cell|\<sigma\><around*|(|j|)><text|
      für <math|1\<leq\>j\<leq\>5>,>>>|<row|<cell|j<text| für
      <math|6\<leq\>j\<leq\>n.>>>>>>>
    </equation*>

    Die resultiere Abbildung <math|S<rsub|5>\<rightarrow\>S<rsub|n>> ist eine
    isomorphe Einbettung von Gruppen. Insbesondere enthält <math|S<rsub|n>>
    für <math|n\<geq\>5> eine Untergruppe, die zu <math|S<rsub|5>> isomorph
    ist und damit nach dem Eben erkannten nicht auflösbar sein kann. Damit
    ist <math|S<rsub|n>> für <math|n\<geq\>5> aber selbst nicht auflösbar.
  </example>

  Wir wollen mehr Beispiele für auflösbare Gruppen finden.

  <\definition>
    Sei <math|G> eine Gruppe. Gilt für jedes Element <math|g\<in\>G>, dass
    <math|<with|font-family|rm|ord><around*|(|g|)>=p<rsup|j>> für ein
    <math|p\<in\><with|font|Bbb|P>> und <math|j\<in\><with|font|Bbb|N><rsub|0>>,
    so nennen wir <math|G> eine <em|<math|p>-Gruppe>.
  </definition>

  <\lemma>
    Es sei <math|G> eine endliche Gruppe. Dann ist <math|G> genau dann eine
    <math|p>-Gruppe, wenn <math|<around*|\||G|\|>=p<rsup|n>> für
    <math|p\<in\><with|font|Bbb|P>> und <math|n\<geq\>0>.
  </lemma>

  <\proof>
    Eine Richtung folgt aus dem Satz von Lagrange, die andere aus dem Satz
    von Cauchy.\ 
  </proof>

  <\example>
    Nicht alle <math|p>-Gruppen müssen endlich sein. Die Gruppe

    <\equation*>
      <big|oplus><rsub|n\<in\><with|font|Bbb|N>><with|font|Bbb|Z>/p
      <with|font|Bbb|Z>=<around*|{|<around*|(|a<rsub|1>,a<rsub|2>,\<ldots\>|)>
      <around*|\|||\<nobracket\>> a<rsub|i>\<in\><with|font|Bbb|Z>/p
      <with|font|Bbb|Z>,a<rsub|i>=0<text| für alle bis auf endlich viele
      >i|}>
    </equation*>

    ist beispielsweise eine unendliche <math|p>-Gruppe.
  </example>

  <\lemma>
    <label|p-gruppe-zentrum>Sei <math|G> eine nicht-triviale endliche
    <math|p>-Gruppe. Dann gilt <math|Z<around*|(|G|)>\<neq\><around*|{|e|}>>.
  </lemma>

  <\proof>
    Es gilt <math|S<rsub|0>=<around*|{|g\<in\>G
    <around*|\|||\<nobracket\>>\<forall\>h\<in\>G :h g
    h<rsup|-1>=g|}>=Z<around*|(|G|)>>. Da <math|G> eine endliche
    <math|p>-Gruppe ist folgt aus Lemma <reference|satz-von-cauchy-lemma>,
    dass <math|<around*|\||G|\|>\<equiv\><around*|\||Z<around*|(|G|)>|\|>
    <pmod|p>>. Da <math|<around*|\||G|\|>=p<rsup|n>> mit <math|n\<geq\>1>
    folgt also <math|<around*|\||Z<around*|(|G|)>|\|>\<equiv\>0 <pmod|p>>.
    Weil <math|e\<in\>Z<around*|(|G|)>>, folgt
    <math|<around*|\||Z<around*|(|G|)>|\|>\<geq\>1> und daher
    <math|<around*|\||Z<around*|(|G|)>|\|>\<geq\>p>, was zu zeigen war.
  </proof>

  <\lemma>
    <label|aufloesbar-kriterium>Sei <math|G> eine Gruppe und
    <math|N\<trianglelefteqslant\>G> ein Normalteiler, sodass <math|N> und
    die Quotientengruppe <math|G/N> auflösbar sind. Dann ist auch <math|G>
    auflösbar.
  </lemma>

  <\proof>
    Sei <math|\<pi\> :G\<rightarrow\>G/N> die natürliche Projektion. Dann
    gilt nach Lemma <reference|aufloesbar-lemma>
    <math|\<pi\><around*|(|G<rsup|<around*|(|i|)>>|)>=<around*|(|G/N|)><rsup|<around*|(|i|)>>>
    für alle <math|i\<geq\>0>. Da <math|G/N> auflösbar ist, existiert
    <math|r\<in\><with|font|Bbb|N><rsub|0>> mit
    <math|<around*|(|G/N|)><rsup|<around*|(|r|)>>=<around*|{|N|}>>. Also
    <math|\<pi\><around*|(|G<rsup|<around*|(|r|)>>|)>=<around*|{|N|}>> und
    damit <math|G<rsup|<around*|(|r|)>>\<leq\>N>. Da auch <math|N> auflösbar
    ist, existiert <math|s\<in\><with|font|Bbb|N><rsub|0>> mit
    <math|N<rsup|<around*|(|s|)>>=<around*|{|e|}>>. Aus
    <math|G<rsup|<around*|(|r|)>>\<leq\>N> folgt nun induktiv
    <math|G<rsup|<around*|(|r+s|)>>=<around*|(|G<rsup|<around*|(|r|)>>|)><rsup|<around*|(|s|)>>\<leq\>N<rsup|<around*|(|s|)>>=<around*|{|e|}>>.
  </proof>

  <\proposition>
    <label|aufloesbar-sylow>Sei <math|G> eine endliche <math|p>-Gruppe mit
    <math|<around*|\||G|\|>=p<rsup|n>>, <math|p\<in\><with|font|Bbb|P>> prim,
    <math|n\<geq\>1>. Dann existiert zu jeder Primzahlpotenz
    <math|p<rsup|i>,0\<leq\>i\<leq\>n>, eine normale Untergruppe
    <math|H<rsub|i>\<trianglelefteqslant\>G> der Ordnung
    <math|<around*|\||H<rsub|i>|\|>=p<rsup|i>>.
  </proposition>

  <\proof>
    Wir führen den Beweis mittels vollständiger Induktion nach <math|n>. Für
    <math|n=1> wählen wir <math|H<rsub|0>=<around*|{|e|}>> und
    <math|H<rsub|1>=G>. Sei nun <math|n\<gtr\>1> und die Aussage für alle
    <math|p>-Gruppen der Ordnung <math|p<rsup|n-1>> gezeigt. Weil <math|G>
    eine nicht-triviale <math|p>-Gruppe ist folgt aus Lemma
    <reference|p-gruppe-zentrum> <math|Z<around*|(|G|)>\<neq\><around*|{|e|}>>.
    Nach dem Satz von Cauchy existiert daher ein
    <math|z\<in\>Z<around*|(|G|)>> mit <math|<with|font-family|rm|ord><around*|(|z|)>=p>.
    Sei <math|Z\<assign\>\<langle\>z\<rangle\>>; dann gilt
    <math|Z\<leq\>Z<around*|(|G|)>>, also insbesondere
    <math|Z\<trianglelefteqslant\>G> und <math|<around*|\||Z|\|>=p>. Es folgt
    <math|<around*|\||G/Z|\|>=<frac|<around*|\||G|\|>|<around*|\||Z|\|>>=<frac|p<rsup|n>|p>=p<rsup|n-1>>.
    Nach Induktionsvoraussetzung besitzt <math|G/Z> für jedes
    <math|0\<leq\>i\<leq\>n-1> einen Normalteiler
    <math|<wide|H<rsub|i>|\<bar\>>\<trianglelefteqslant\>G/Z> der Ordnung
    <math|<around*|\||<wide|H<rsub|i>|\<bar\>>|\|>=p<rsup|i>>. Sei nun
    <math|\<pi\> :G\<rightarrow\>G/Z> die natürliche Projektion und setze
    <math|H<rsub|i+1>\<assign\>\<pi\><rsup|-1><around*|(|<wide|H<rsub|i>|\<bar\>>|)>>.
    Dann gilt <math|H<rsub|i+1>\<trianglelefteqslant\>G> und ferner

    <\equation*>
      <around*|\||H<rsub|i+1>|\|>=<around*|\||Z|\|>
      <around*|\||<wide|H<rsub|i>|\<bar\>>|\|>=p\<cdot\>p<rsup|i>=p<rsup|i+1>.
    </equation*>

    Zusammen mit <math|H<rsub|0>\<assign\><around*|{|e|}>> erhalten wir somit
    für jedes <math|0\<leq\>i\<leq\>n> einen Normalteiler
    <math|H<rsub|i>\<trianglelefteqslant\>G> mit
    <math|<around*|\||H<rsub|i>|\|>=p<rsup|i>>.
  </proof>

  <\corollary>
    Jede endliche <math|p>-Gruppe ist auflösbar.
  </corollary>

  <\proof>
    Sei <math|G> eine endliche <math|p>-Gruppe mit
    <math|<around*|\||G|\|>=p<rsup|n>> für
    <math|p\<in\><with|font|Bbb|P>,n\<geq\>0>. Wir führen den Beweis mittels
    vollständiger Induktion nach <math|n>. Für <math|n=0> ist
    <math|G=<around*|{|e|}>> und somit auflösbar. Sei nun <math|n\<geq\>1>
    und die Aussage für alle <math|p>-Gruppen der Ordnung <math|p<rsup|n-1>>
    gezeigt. Nach Proposition <reference|aufloesbar-sylow> existiert ein
    Normalteiler <math|N\<trianglelefteqslant\>G> mit
    <math|<around*|\||N|\|>=p<rsup|n-1>>. Nach Induktionsvoraussetzung ist
    <math|N> auflösbar und es gilt <math|<around*|\||G/N|\|>=<frac|<around*|\||G|\|>|<around*|\||N|\|>>=p>,
    also ist <math|G/N> eine Gruppe von Primordnung, damit zyklisch,
    insbesondere abelsch und somit auflösbar. Nach Lemma
    <reference|aufloesbar-kriterium> ist folglich auch <math|G> auflösbar.\ 
  </proof>

  Der Name \RErster Sylowsatz\P deutet auf die Existenz eines zweiten
  Sylowsatzes hin. In der Tat, es gibt sogar einen dritten. Der
  Vollständigkeit halber erwähnen wir diese, werden aber nicht weiter
  Gebrauch davon machen. Für den Beweis des dritten Sylowsatzes verweisen wir
  auf<nbsp><cite|Lang2002>, Seite 35.

  <\theorem>
    <dueto|Zweiter Sylowsatz>Sei <math|G> eine endliche Gruppe,
    <math|H\<leq\>G> eine Untergruppe mit
    <math|<around*|\||H|\|>=p<rsup|j>,j\<geq\>0>,
    <math|p\<in\><with|font|Bbb|P>> eine Primzahl und <math|P> eine
    <math|p>-Sylow-Untergruppe von <math|G>. Dann ist <math|H> zu einer
    Untergruppe von <math|P> konjugiert, i.e. es gibt ein <math|g\<in\>G> mit
    <math|g H g<rsup|-1>\<leq\>P>.
  </theorem>

  <\proof>
    Sei <math|S\<assign\>G/P=<around*|{|g P <around*|\|||\<nobracket\>>
    g\<in\>G|}>> die (nicht-leere) Menge der Linksnebenklassen von <math|P>
    in <math|G>, auf der <math|H> vermöge der Linkstranslation
    \R<math|\<ast\>>\P operiert, i.e. <math|h\<ast\><around*|(|g
    P|)>=<around*|(|h g|)> P>. Wir betrachten die Menge
    <math|S<rsub|0>=<around*|{|g P\<in\>S <around*|\|||\<nobracket\>>
    \<forall\>h\<in\>H :h\<ast\><around*|(|g P|)>=g P|}>> aus Lemma
    <reference|satz-von-cauchy-lemma> und erhalten, dass
    <math|<around*|\||S<rsub|0>|\|>\<equiv\><around*|\||S|\|> <pmod|p>>. Aber
    es ist <math|<around*|\||S|\|>=<around*|\||G/P|\|>=<around*|[|G :P|]>>
    und <math|p\<nmid\><around*|[|G:P|]>>. Daher
    <math|<around*|\||S<rsub|0>|\|>\<neq\>0> und es gibt <math|g
    P\<in\>S<rsub|0>>. Für dieses Element gilt nun

    <math|<align*|<tformat|<table|<row|<cell|g
    P\<in\>S<rsub|0>\<Leftrightarrow\>>|<cell|\<forall\>h\<in\>H
    :<around*|(|h g|)> P=g P>>|<row|<cell|\<Leftrightarrow\>>|<cell|\<forall\>h\<in\>H
    :<around*|(|g<rsup|-1> h g|)> P=P>>|<row|<cell|\<Leftrightarrow\>>|<cell|\<forall\>h\<in\>H
    : g<rsup|-1> h g\<in\>P>>|<row|<cell|\<Leftrightarrow\>>|<cell|g<rsup|-1>
    H g\<subseteq\>P,>>>>>>

    i.e. <math|g<rsup|-1> H g\<leq\>P>.
  </proof>

  Insbesondere sind je zwei <math|p>-Sylow-Untergruppen einer gegeben Gruppe
  <math|G> zueinander konjugiert. Folglich ist eine
  <math|p>-Sylow-Untergruppe genau dann normal in <math|G>, wenn sie die
  eindeutige <math|p>-Sylowgruppe von <math|G> ist.

  <\theorem>
    <dueto|Dritter Sylowsatz>Sei <math|G> eine endliche Gruppe und
    <math|p\<in\><with|font|Bbb|P>> eine Primzahl. Dann ist die Anzahl der
    <math|p>-Sylow-Untergruppen ein Teiler von <math|<around*|\||G|\|>> und
    von der Form <math|1+k p> mit <math|k\<in\><with|font|Bbb|N><rsub|0>>.
  </theorem>

  <chapter|Moduln>

  Kommen wir nochmal zurück zum Ersten Sylowsatz: Gibt es eine Verbesserung
  seiner Aussage für abelsche Gruppen? Um diese Frage zu beantworten, nehmen
  wir einen Umweg über Vektorräume, nun im Gewand der Gruppenaktionen.

  <section|Struktursatz>

  <space|1em>Sei <math|K> ein Körper, <math|V> ein <math|K>-Vektorraum,
  betrachtet als die abelsche Gruppe <math|<around*|(|V,*+|)>> zusammen mit
  der Gruppenaktion \R<math|\<cdot\>>\P aus Beispiel
  <reference|aktion-beispiel>.

  <\definition>
    (1) Sei <math|R=<around*|(|R,+<rsub|R>,\<cdot\><rsub|R>|)>> ein
    kommutativer Ring mit Eins <math|1<rsub|R>\<neq\>0<rsub|R>> und
    <math|<around*|(|M,+<rsub|M>|)>> eine abelsche Gruppe zusammen mit einer
    Abbildung

    <\equation*>
      R\<times\>M\<rightarrow\>M,<space|1em><around*|(|r,m|)>\<mapsto\>r\<cdot\>m,
    </equation*>

    die erfüllt:

    <\indent>
      (1) <math|1<rsub|R>\<cdot\>m=m> für alle <math|m\<in\>M>.

      (2) <math|<around*|(|a\<cdot\><rsub|R>b|)>\<cdot\>m=a\<cdot\><around*|(|b\<cdot\>m|)>>
      für alle <math|a,b\<in\>R> und <math|m\<in\>M>.

      (3) <math|<around*|(|a+<rsub|R>b|)>\<cdot\>m=a\<cdot\>m+<rsub|M>b\<cdot\>m>
      und <math|a\<cdot\><around*|(|m+<rsub|M>n|)>=a\<cdot\>m+<rsub|M>a\<cdot\>n>
      für alle <math|a,b\<in\>R> und <math|m,n\<in\>M>.
    </indent>

    Dann heiÿt <math|<around*|(|M,\<cdot\>|)>> ein <math|R>-Modul oder ein
    Modul über <math|R>.

    (2) Sei <math|<around*|(|M,\<cdot\>|)>> ein <math|R>-Modul. Eine
    Untergruppe <math|N\<leq\>M> heiÿt <math|R>-Untermodul, sofern
    <math|r\<cdot\>n\<in\>N> für alle <math|r\<in\>R> und <math|n\<in\>N>.
  </definition>

  <\example>
    (1) Ist <math|R> ein Körper, so sind die <math|R>-Moduln genau die
    <math|R>-Vektorräume.

    (2) Der Produktring <math|M=R\<times\>\<cdots\>\<times\>R=R<rsup|n>> mit
    <math|n\<geq\>1> ist ein <math|R>-Modul mit \R<math|\<cdot\>>\P gegeben
    durch komponentenweise Multiplikation in <math|R>. Konkret,
    <math|r\<cdot\><around*|(|a<rsub|1>,\<ldots\>,a<rsub|n>|)>=<around*|(|r\<cdot\>a<rsub|1>,\<ldots\>,r\<cdot\>a<rsub|n>|)>>.
    Wir nennen dann <math|R> einen <em|freien <math|R>-Modul vom Rang
    <math|n>>. Freie Module sind also jene, die, analog zu Vektorräumen, über
    eine Art Basis verfügen.

    (3) Die Ideale <math|I\<trianglelefteqslant\>R> eines kommutativen Rings
    <math|R> mit <math|1<rsub|R>\<neq\>0<rsub|R>> sind genau die
    <math|R>-Untermoduln von <math|R>.

    (4) Sei <math|<around*|(|M,\<cdot\>|)>> ein <math|R>-Modul und <math|N>
    ein <math|R>-Untermodul. Da <math|N\<leq\>M> und <math|M> abelsch ist,
    ist <math|N\<trianglelefteqslant\>M> und die Quotientengruppe <math|M/N>
    ist wohldefiniert. Insbesondere ist <math|M/N> ein <math|R>-Modul vermöge

    <\equation*>
      \<cdot\>:R\<times\>M/N\<rightarrow\>M/N,<around*|(|r,m+N|)>\<mapsto\>r\<cdot\><around*|(|m+N|)>\<assign\>r\<cdot\>m+N.
    </equation*>

    Wir nennen <math|M/N> dementsprechend einen <em|Quotientenmodul>.

    (5) Jede abelsche Gruppe kann als <math|<with|font|Bbb|Z>>-Modul
    betrachtet werden mit der Skalarmultiplikation

    <\equation*>
      <with|font|Bbb|Z>\<times\>G\<rightarrow\>G,<around*|(|m,g|)>\<mapsto\>m\<cdot\>g\<assign\>g<rsup|m>.
    </equation*>

    Diese Sichtweise wird uns später zum Klassifikationssatz der endlich
    erzeugten abelschen Gruppen führen.
  </example>

  <\definition>
    Es seien <math|M=<around*|(|M,\<cdot\><rsub|M>|)>> und
    <math|N=<around*|(|N,\<cdot\><rsub|N>|)>> <math|R>-Moduln. Ein
    Gruppenhomomorphismus <math|f :<around*|(|M,+<rsub|M>|)>\<rightarrow\><around*|(|N,+<rsub|N>|)>>
    heiÿt <math|R>-Modul-Homomorphismus (oder Homomorphismus der
    <math|R>-Moduln <math|M> und <math|N>), wenn
    <math|f<around*|(|r\<cdot\><rsub|M>m|)>=r\<cdot\><rsub|N>f<around*|(|m
    |)>> für alle <math|r\<in\>R> und <math|m\<in\>M>.
  </definition>

  Wie im Fall von Gruppen und Ringen sind dann <math|ker
  f\<assign\><around*|{|m\<in\>M <around*|\|||\<nobracket\>>
  f<around*|(|m|)>=0|}>> und <math|<with|font-family|rm|im>
  f\<assign\><around*|{|m\<in\>N<around*|\|||\<nobracket\>>
  \<exists\>m\<in\>M :f<around*|(|m|)>=n|}>>, der Kern bzw. das Bild von
  <math|f>, <math|R>-Untermoduln von <math|M> bzw. <math|N>. Ebenso nennen
  wir einen injektiven Homomorphismus einen Monomorphismus bzw. Einbettung
  und einen surjektiven Homomorphismus einen Epimorphismus. Im bijektiven
  Fall sprechen wir wie gewohnt von einem Isomorphismus und schreiben
  <math|M\<cong\>N>.

  Es gilt (mit demselben Beweis wie in der linearen Algebra) der Erste
  Isomorphiesatz für <math|R>-Moduln.

  <\theorem>
    <dueto|Erster Isomorphiesatz für <math|R>-Moduln>Seien <math|M> und
    <math|N> Moduln über dem Ring <math|R> und <math|f :M\<rightarrow\>N> ein
    <math|R>-Modul-Homomorphismus. Dann ist

    <\equation*>
      <wide|f|~> :M/ker f\<rightarrow\><with|font-family|rm|im>
      f,<space|1em><wide|f|~><around*|(|m+ker f|)>\<assign\>f<around*|(|m|)>
    </equation*>

    ein wohldefinierter <math|R>-Modul-Isomorphismus.
  </theorem>

  Ist <math|M> ein <math|R>-Modul, <math|X\<subseteq\>M> eine nichtleere
  Teilmenge von <math|M>, so ist der Durchschnitt aller <math|R>-Moduln, die
  <math|X> enthalten, ein <math|R>-Untermodul von <math|M>, der <math|X>
  enthält. Wir schreiben dann <math|\<langle\>X\<rangle\>> und nennen ihn den
  <em|von <math|X> erzeugten <math|R>-Untermodul von <math|M>>. Gibt es eine
  endliche Teilmenge <math|X\<subseteq\>M> mit
  <math|\<langle\>X\<rangle\>=M>, so nennen wir <math|M> <em|endlich
  erzeugt>.

  Der wichtigste Satz über Moduln:

  <\theorem>
    <dueto|Struktursatz für endlich erzeugte Moduln über Hauptidealringen>Sei
    <math|R> ein Hauptidealring und <math|M> ein endlich erzeugter
    <math|R>-Modul. Dann:

    <\indent>
      (1) Es existieren <math|d<rsub|1>,\<ldots\>,d<rsub|s>\<in\>R\<setminus\><around*|{|0|}>>,
      nicht Einheiten, mit <math|d<rsub|1> \<mid\>d<rsub|2>
      \<mid\>\<cdots\>\<mid\>d<rsub|s>> und
      <math|p\<in\><with|font|Bbb|N><rsub|0>> mit

      <\equation*>
        M\<cong\><big|oplus><rsub|i=1><rsup|s>R/<around*|(|d<rsub|i>|)>\<oplus\>R<rsup|p>.
      </equation*>

      (2) Sind <math|c<rsub|1>,\<ldots\>,c<rsub|t>\<in\>R\<setminus\><around*|{|0|}>>
      ebenfalls nicht Einheiten mit <math|c<rsub|1> \<mid\>c<rsub|2>
      \<mid\>\<cdots\> \<mid\>c<rsub|t>> und
      <math|q\<in\><with|font|Bbb|N><rsub|0>> sodass

      <\equation*>
        M\<cong\><big|oplus><rsub|i=1><rsup|t>R/<around*|(|d<rsub|i>|)>\<oplus\>R<rsup|q>,
      </equation*>

      dann gilt <math|s=t,p=q> und <math|c<rsub|j>\<sim\>d<rsub|j>> für
      <math|1\<leq\>j\<leq\>s=t>.
    </indent>
  </theorem>

  <\proof>
    Siehe<nbsp><cite|Lu2026>.
  </proof>

  <section|Anwendungen des Struktursatzes>

  Mit folgendem Satz können wir eine alternative Darstellung gewinnen. Er
  findet seinen Ursprung in der Zahlentheorie. Formuliert wurde er bereits
  ca. 300 \U 500 n. Chr. in den sogenannten
  \<#5B6B\>\<#5B50\>\<#7B97\>\<#7D93\> (<with|font-shape|italic|S\<#16B\>nz\<#1D0\>
  Suànj\<#12B\>ng>).

  <\theorem>
    <dueto|Chinesischer Restsatz>Sei <math|R> ein Hauptidealring und seien
    <math|q<rsub|1>,\<ldots\>,q<rsub|k>\<in\>R> paarweise teilerfremd, d.h.
    <math|<with|font-family|rm|ggT><around*|(|q<rsub|i>,q<rsub|j>|)>=1> für
    alle <math|i\<neq\>j>. Dann ist die Abbildung

    <\equation*>
      R/<around*|(|q<rsub|1> q<rsub|2> \<cdots\>
      q<rsub|k>|)>\<rightarrow\><around*|(|R/<around*|(|q<rsub|1>|)>|)>\<times\><around*|(|R/<around*|(|q<rsub|2>|)>|)>\<times\>\<cdots\>\<times\><around*|(|R/<around*|(|q<rsub|k>|)>|)>,
    </equation*>

    definiert durch <math|r+<around*|(|q<rsub|1> q<rsub|2> \<cdots\>
    q<rsub|k>|)>\<mapsto\><around*|(|r+<around*|(|q<rsub|1>|)>,r+<around*|(|q<rsub|2>|)>,\<ldots\>,r+<around*|(|q<rsub|k>|)>|)>>
    ein Ringisomorphismus.
  </theorem>

  <\proof>
    Man überprüft sofort, dass die gegebene Abbildung tatsächlich ein
    Ringisomorphismus ist.
  </proof>

  Zusammen mit dem Struktursatz führt uns das zur Klassifikation der endlich
  erzeugten abelschen Gruppen:

  <\theorem>
    <dueto|Hauptsatz für endlich erzeugte abelsche Gruppen>Es sei <math|G>
    eine endlich erzeugte abelsche Gruppe. Dann gibt es eindeutig bestimmte
    <math|k\<geq\>0,t\<geq\>0> und eindeutig bestimmte (bis auf Umordnung)
    Primzahlpotenzen <math|n<rsub|1>,\<ldots\>,n<rsub|t>\<geq\>1> (nicht
    notwendigerweise verschieden), sodass

    <\equation*>
      G\<cong\><with|font|Bbb|Z><rsup|k>\<times\><with|font|Bbb|Z>/p<rsub|1><rsup|n<rsub|1>>
      <with|font|Bbb|Z>\<times\>\<cdots\>\<times\><with|font|Bbb|Z>/p<rsub|t><rsup|n<rsub|t>>
      <with|font|Bbb|Z>.
    </equation*>
  </theorem>

  <\corollary>
    Es sei <math|G> eine endliche abelsche Gruppe, <math|<around*|\||G|\|>=m>
    und <math|k \<mid\>m> mit <math|k\<geq\>1>. Dann existiert eine
    Untergruppe <math|H\<leq\>G> mit <math|<around*|\||H|\|>=k>.
  </corollary>

  <\proof>
    Schreibe <math|G\<cong\><with|font|Bbb|Z>/p<rsub|1><rsup|n<rsub|1>>
    <with|font|Bbb|Z>\<times\>\<cdots\>\<times\><with|font|Bbb|Z>/p<rsub|t><rsup|n<rsub|t>>
    <with|font|Bbb|Z>> wie im Hauptsatz für endlich erzeugte abelsche
    Gruppen. Dann gilt offenbar <math|m=<big|prod><rsub|i=1><rsup|t>p<rsub|i><rsup|n<rsub|i>>>
    und daher existieren <math|k<rsub|i>\<in\><with|font|Bbb|N><rsub|0>,k<rsub|i>\<leq\>n<rsub|i>>,
    mit <math|k=<big|prod><rsub|i=1><rsup|t >p<rsub|i><rsup|k<rsub|i>>>. Nach
    Korollar <reference|untergruppen-zyklisch-existenz> können wir
    Untergruppen <math|H<rsub|i>\<leq\><with|font|Bbb|Z>/p<rsub|i><rsup|n<rsub|i>>
    <with|font|Bbb|Z>> mit <math|<around*|\||H<rsub|i>|\|>=p<rsub|i><rsup|k<rsub|i>>>
    finden. Setze nun <math|H\<assign\>H<rsub|1>\<times\>\<cdots\>\<times\>H<rsub|t>>.
    Dann ist <math|<around*|\||H|\|>=<around*|\||H<rsub|1>|\|> \<cdots\>
    <around*|\||H<rsub|t>|\|>=p<rsub|1><rsup|k<rsub|1>> \<cdots\>
    p<rsub|t><rsup|k<rsub|t>>=k>. Also existiert eine Untergruppe von
    <math|G> mit <math|k> Elementen.
  </proof>

  <\theorem>
    Es sei <math|G> eine endliche Gruppe. Dann ist <math|G> genau dann
    zyklisch, wenn zu jedem positiven Teiler <math|d\<geq\>1> von
    <math|<around*|\||G|\|>> genau eine Untergruppe <math|H\<leq\>G> mit
    <math|<around*|\||H|\|>=d> existiert.
  </theorem>

  Bevor wir diesen Satz beweisen, zeigen wir noch folgendes Lemma.

  <\lemma>
    Sei <math|\<varphi\>> die Euler'sche <math|\<varphi\>>-Funktion und
    <math|n\<in\><with|font|Bbb|N>>. Dann gilt
    <math|<big|sum><rsub|d\<mid\>n>\<varphi\><around*|(|d|)>=n>.
  </lemma>

  <\proof>
    Betrachten wir die zyklische Gruppe <math|<with|font|Bbb|Z>/n
    <with|font|Bbb|Z>>. Sei <math|d \<mid\>n> ein Teiler von <math|n>. Dann
    existiert eine zyklische Untergruppe von <math|<with|font|Bbb|Z>/n
    <with|font|Bbb|Z>>, die isomorph zu <math|<with|font|Bbb|Z>/d
    <with|font|Bbb|Z>> ist. Weil für <math|a\<in\><with|font|Bbb|Z>/d
    <with|font|Bbb|Z>> gilt <math|<with|font-family|rm|ord><around*|(|a|)>=<frac|d|<with|font-family|rm|ggT><around*|(|a,d|)>>>
    folgt insbesondere, dass <math|<with|font|Bbb|Z>/d <with|font|Bbb|Z>>
    genau <math|\<varphi\><around*|(|d|)>> Erzeuger hat. Es folgt

    <\equation*>
      n=<around*|\||<with|font|Bbb|Z>/n <with|font|Bbb|Z>|\|>=<big|sum><rsub|d
      \<mid\>n><around*|\||<around*|{|a\<in\><with|font|Bbb|Z>/n
      <with|font|Bbb|Z> <around*|\|||\<nobracket\>>
      <with|font-family|rm|ord><around*|(|a|)>=d|}>|\|>=<big|sum><rsub|d
      \<mid\>n>\<varphi\><around*|(|d|)>,
    </equation*>

    wie gewünscht.
  </proof>

  Nun zum Beweis des Satzes:

  <\proof>
    Eine Richtung ist genau Folgerung <reference|untergruppen-zyklisch-existenz>.
    Um die andere Richtung zu zeigen, sei <math|n=<around*|\||G|\|>> und
    setze <math|a<rsub|d>\<assign\><around*|\||<around*|{|g\<in\>G
    <around*|\|||\<nobracket\>> <with|font-family|rm|ord><around*|(|g|)>=d|}>|\|>>
    für alle Teiler <math|d \<mid\>n>. Dann folgt <math|<big|sum><rsub|d
    \<mid\>n>a<rsub|d>=n>. Sei <math|g\<in\>G> beliebig mit Ordnung
    <math|d=<with|font-family|rm|ord><around*|(|g|)>>. Nach Annahme existiert
    eine eindeutige Untergruppe <math|H<rsub|d>> mit
    <math|\<langle\>g\<rangle\>=H<rsub|d>>. Es gibt nun zwei Fälle. Falls
    <math|H<rsub|d>> zyklisch ist, folgt <math|a<rsub|d>=\<varphi\><around*|(|d|)>>.
    Falls <math|H<rsub|d>> nicht zyklisch ist, folgt sofort
    <math|a<rsub|d>=0>. Insgesamt ergibt sich
    <math|a<rsub|d>\<leq\>\<varphi\><around*|(|d|)>> für alle <math|d
    \<mid\>n>, also

    <\equation*>
      n=<big|sum><rsub|d \<mid\>n>a<rsub|d>\<leq\><big|sum><rsub|d
      \<mid\>n>\<varphi\><around*|(|d|)>=n.
    </equation*>

    Es muss also Gleichheit für alle Teiler <math|d \<mid\>n> gelten.
    Insbesondere liefert das für <math|d=n>, dass
    <math|a<rsub|n>=\<varphi\><around*|(|n|)>\<gtr\>0>. Das liefert die
    Existenz eines <math|g\<in\>G> mit <math|<with|font-family|rm|ord><around*|(|g|)>=n>,
    i.e. <math|<with|font-family|rm|ord><around*|(|g|)>=n=<around*|\||G|\|>>.
    Folglich gilt <math|G=\<langle\>g\<rangle\>>, i.e., <math|G> ist
    zyklisch.
  </proof>

  <\corollary>
    Es seien <math|G,H> endliche zyklische Gruppen. Dann ist
    <math|G\<times\>H> genau dann zyklisch, wenn
    <math|<with|font-family|rm|ggT><around*|(|<around*|\||G|\|>,<around*|\||H|\|>|)>=1>.
  </corollary>

  <\proof>
    Angenommen <math|<around*|\||G|\|>=m> und <math|<around*|\||H|\|>=n>
    seien teilerfremd. Da <math|G> und <math|H> zyklisch sind, folgt
    <math|G\<cong\><with|font|Bbb|Z>/m <with|font|Bbb|Z>> und
    <math|H\<cong\><with|font|Bbb|Z>/n <with|font|Bbb|Z>>. Folglich ist
    <math|G\<times\>H\<cong\><with|font|Bbb|Z>/m
    <with|font|Bbb|Z>\<times\><with|font|Bbb|Z>/n
    <with|font|Bbb|Z>\<cong\><with|font|Bbb|Z>/m n <with|font|Bbb|Z>> nach
    dem Chinesischen Restsatz (da <math|<with|font-family|rm|ggT><around*|(|m,n|)>=1>)
    zyklisch.

    <space|1em>Umgekehrt, sei <math|G\<times\>H\<cong\><with|font|Bbb|Z>/m
    <with|font|Bbb|Z>\<times\><with|font|Bbb|Z>/n <with|font|Bbb|Z>>
    zyklisch. Dann existiert zu jedem Teiler von <math|m\<cdot\>n> genau eine
    Untergruppe der entsprechenden Ordnung. Aber angenommen <math|\<ell\>
    \<mid\>m> und <math|\<ell\> \<mid\>n> für <math|\<ell\>\<gtr\>1>, sodass
    <math|m/\<ell\>\<in\><with|font|Bbb|N>> und
    <math|n/\<ell\>\<in\><with|font|Bbb|N>>. Dann wären
    <math|<around*|(|<frac|m|\<ell\>>|)> <with|font|Bbb|Z>/m
    <with|font|Bbb|Z>\<times\><around*|{|0|}>> und
    <math|<around*|{|0|}>\<times\><around*|(|<frac|n|\<ell\>>|)>
    <with|font|Bbb|Z>/n <with|font|Bbb|Z>> verschiedene Untergruppen von
    <math|G> derselben Ordnung; ein Widerspruch. Es folgt
    <math|<with|font-family|rm|ggT><around*|(|m,n|)>=1>.
  </proof>

  <new-page>

  \;

  <\bibliography|bib|tm-alpha|alg_skript>
    <\bib-list|10>
      <bibitem*|Con18><label|bib-Conrad2018>Keith Conrad. <newblock>Zorn's
      lemma and some applications. <newblock><slink|https://www.acsu.buffalo.edu/~achirvas/Math461_Fall2018/conrad_zorn.pdf>,
      2018.<newblock>

      <bibitem*|Cox89><label|bib-Cox1989>David<nbsp>A.<nbsp>Cox.
      <newblock><with|font-shape|italic|Primes of the Form
      <math|x<rsup|2>+n*y<rsup|2>>>. <newblock>John Wiley & Sons, Hoboken,
      NJ, 1.<localize| edition>, 1989.<newblock>

      <bibitem*|Gro23><label|bib-Grobner2023>Harald Grobner.
      <newblock><with|font-shape|italic|Smooth-automorphic Forms and
      Smooth-automorphic Representations>. <newblock>World Scientific,
      Singapur, 1.<localize| edition>, 2023.<newblock>

      <bibitem*|HW60><label|bib-Hardy1960>Godfrey<nbsp>H.<nbsp>Hardy<localize|
      and >Edward<nbsp>M.<nbsp>Wright. <newblock><with|font-shape|italic|An
      Introduction to the Theory of Numbers>. <newblock>Clarendon Press,
      Oxford, 4.<localize| edition>, 1960.<newblock>

      <bibitem*|Kal15><label|bib-Kaltenbaeck2015>Michael Kaltenbäck.
      <newblock><with|font-shape|italic|Fundament Analysis>.
      <newblock>Heldermann, Lemgo, 1.<localize| edition>, 2015.<newblock>

      <bibitem*|Lan02><label|bib-Lang2002>Serge Lang.
      <newblock><with|font-shape|italic|Algebra>. <newblock>Springer, New
      York City, NY, 3.<localize| edition>, 2002.<newblock>

      <bibitem*|Lem04><label|bib-Lemmermeyer2004>Franz Lemmermeyer.
      <newblock>The euclidean algorithm in algebraic number fields.
      <newblock><slink|http://www.fen.bilkent.edu.tr/~franz/publ/survey.pdf>,
      2004.<newblock>

      <bibitem*|Lu26><label|bib-Lu2026>Jianghua Lu.
      <newblock><with|font-shape|italic|Algebra II>. <newblock>3.<localize|
      edition>, 2026.<newblock>

      <bibitem*|Mar18><label|bib-Marcus2018>Daniel<nbsp>A.<nbsp>Marcus.
      <newblock><with|font-shape|italic|Number Fields>. <newblock>Springer
      Nature, Cham, 2.<localize| edition>, 2018.<newblock>

      <bibitem*|Mil22><label|bib-Milne2022>James<nbsp>S.<nbsp>Milne.
      <newblock><with|font-shape|italic|Fields and Galois Theory>.
      <newblock>5.<localize| edition>, 2022.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|font|roman>
    <associate|font-base-size|10>
    <associate|font-family|rm>
    <associate|math-font|roman>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-screen-margin|true>
    <associate|page-type|a4>
    <associate|page-width|auto>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|aktion-beispiel|<tuple|2.1|82>>
    <associate|algebraisch-abgeschlossen|<tuple|5.2|38>>
    <associate|algebraisch-abgeschlossen-lemma|<tuple|5.4|37>>
    <associate|algebraisch-koerpererweiterung-folgerung|<tuple|1.2|67>>
    <associate|algebraisch-koerpererweiterung-satz|<tuple|1.1|65>>
    <associate|algebraischer-abschluss-lemma|<tuple|1.3|68>>
    <associate|alternierende-gruppe|<tuple|1.4|81>>
    <associate|aufloesbar-kriterium|<tuple|2.8|88>>
    <associate|aufloesbar-lemma|<tuple|2.5|87>>
    <associate|aufloesbar-sylow|<tuple|2.2|89>>
    <associate|aufloesbare-gruppe|<tuple|2.4|86>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|1|63>>
    <associate|auto-11|<tuple|2|70>>
    <associate|auto-12|<tuple|3|74>>
    <associate|auto-13|<tuple|1|75>>
    <associate|auto-14|<tuple|2|82>>
    <associate|auto-15|<tuple|4|90>>
    <associate|auto-16|<tuple|1|90>>
    <associate|auto-17|<tuple|2|91>>
    <associate|auto-18|<tuple|2.2|94>>
    <associate|auto-2|<tuple|1|3>>
    <associate|auto-3|<tuple|2|9>>
    <associate|auto-4|<tuple|3|15>>
    <associate|auto-5|<tuple|4|26>>
    <associate|auto-6|<tuple|5|33>>
    <associate|auto-7|<tuple|6|39>>
    <associate|auto-8|<tuple|7|55>>
    <associate|auto-9|<tuple|2|63>>
    <associate|basis-von-q23|<tuple|1.3|66>>
    <associate|bib-Conrad2018|<tuple|Con18|94>>
    <associate|bib-Cox1989|<tuple|Cox89|94>>
    <associate|bib-Grobner2023|<tuple|Gro23|94>>
    <associate|bib-Hardy1960|<tuple|HW60|94>>
    <associate|bib-Kaltenbaeck2015|<tuple|Kal15|94>>
    <associate|bib-Lang2002|<tuple|Lan02|94>>
    <associate|bib-Lemmermeyer2004|<tuple|Lem04|94>>
    <associate|bib-Lu2026|<tuple|Lu26|94>>
    <associate|bib-Marcus2018|<tuple|Mar18|94>>
    <associate|bib-Milne2022|<tuple|Mil22|94>>
    <associate|division-mit-rest|<tuple|1.4|6>>
    <associate|einbettung-ring-der-ganze-zahlen|<tuple|6.1|40>>
    <associate|eindeutigkeit-primfaktorzerlegung|<tuple|1.6|8>>
    <associate|einheiten-in-od|<tuple|6.3|46>>
    <associate|einheiten-in-zm|<tuple|2.3|13>>
    <associate|einheiten-lokalisierung|<tuple|7.4|59>>
    <associate|einheitengruppe|<tuple|2.1|13>>
    <associate|eisenstein-beispiele|<tuple|7.6|61>>
    <associate|endliche-gruppe-galois-gruppe|<tuple|2.2|73>>
    <associate|endliche-koe-erweiterung-algebraisch|<tuple|1.2|67>>
    <associate|endlicher-integritaetsbereich-koerper|<tuple|2.2|14>>
    <associate|erster-isomorphiesatz-fuer-ringe|<tuple|4.2|33>>
    <associate|erster-sylowsatz|<tuple|2.1|85>>
    <associate|euklidisch-dann-hauptidealring|<tuple|3.5|25>>
    <associate|euklidischer-algorithmus|<tuple|1.5|6>>
    <associate|euklidischer-algorithmus-lemma|<tuple|1.3|6>>
    <associate|euler-produkt-ungleichung|<tuple|1.2|4>>
    <associate|evaluationsabbildung-homomorphismus|<tuple|5.1|34>>
    <associate|existenz-primfaktorzerlegung|<tuple|1.1|3>>
    <associate|faktoriell-irreduzibel-equiv-prim|<tuple|3.3|23>>
    <associate|footnote-0.1|<tuple|0.1|63>>
    <associate|footnote-1.1|<tuple|1.1|77>>
    <associate|footnote-1.2|<tuple|1.2|77>>
    <associate|footnote-1.3|<tuple|1.3|77>>
    <associate|footnote-1.4|<tuple|1.4|78>>
    <associate|footnote-1.5|<tuple|1.5|5>>
    <associate|footnote-1.6|<tuple|1.6|7>>
    <associate|footnote-2.1|<tuple|2.1|85>>
    <associate|footnote-2.2|<tuple|2.2|73>>
    <associate|footnote-2.3|<tuple|2.3|73>>
    <associate|footnote-2.4|<tuple|2.4|14>>
    <associate|footnote-2.5|<tuple|2.5|15>>
    <associate|footnote-3.1|<tuple|3.1|15>>
    <associate|footnote-3.2|<tuple|3.2|15>>
    <associate|footnote-3.3|<tuple|3.3|18>>
    <associate|footnote-3.4|<tuple|3.4|18>>
    <associate|footnote-3.5|<tuple|3.5|20>>
    <associate|footnote-3.6|<tuple|3.6|23>>
    <associate|footnote-4.1|<tuple|4.1|28>>
    <associate|footnote-4.2|<tuple|4.2|29>>
    <associate|footnote-5.1|<tuple|5.1|36>>
    <associate|footnote-5.2|<tuple|5.2|37>>
    <associate|footnote-5.3|<tuple|5.3|37>>
    <associate|footnote-6.1|<tuple|6.1|39>>
    <associate|footnote-6.2|<tuple|6.2|41>>
    <associate|footnote-6.3|<tuple|6.3|41>>
    <associate|footnote-6.4|<tuple|6.4|43>>
    <associate|footnote-7.1|<tuple|7.1|59>>
    <associate|footnote-7.2|<tuple|7.2|60>>
    <associate|footnote-7.3|<tuple|7.3|60>>
    <associate|footnote-7.4|<tuple|7.4|62>>
    <associate|footnr-0.1|<tuple|0.1|63>>
    <associate|footnr-1.1|<tuple|1.1|77>>
    <associate|footnr-1.2|<tuple|1.2|77>>
    <associate|footnr-1.3|<tuple|1.3|77>>
    <associate|footnr-1.4|<tuple|1.4|78>>
    <associate|footnr-1.5|<tuple|1.5|5>>
    <associate|footnr-1.6|<tuple|1.6|7>>
    <associate|footnr-2.1|<tuple|2.1|85>>
    <associate|footnr-2.2|<tuple|2.2|73>>
    <associate|footnr-2.3|<tuple|2.3|73>>
    <associate|footnr-2.4|<tuple|2.4|14>>
    <associate|footnr-2.5|<tuple|2.5|15>>
    <associate|footnr-3.1|<tuple|3.1|15>>
    <associate|footnr-3.2|<tuple|3.2|15>>
    <associate|footnr-3.3|<tuple|3.3|18>>
    <associate|footnr-3.4|<tuple|3.4|18>>
    <associate|footnr-3.5|<tuple|3.5|20>>
    <associate|footnr-3.6|<tuple|3.6|23>>
    <associate|footnr-4.1|<tuple|4.1|28>>
    <associate|footnr-4.2|<tuple|4.2|29>>
    <associate|footnr-5.1|<tuple|5.1|36>>
    <associate|footnr-5.2|<tuple|5.2|37>>
    <associate|footnr-5.3|<tuple|5.3|37>>
    <associate|footnr-6.1|<tuple|6.1|39>>
    <associate|footnr-6.2|<tuple|6.2|41>>
    <associate|footnr-6.3|<tuple|6.3|41>>
    <associate|footnr-6.4|<tuple|6.4|43>>
    <associate|footnr-7.1|<tuple|7.1|59>>
    <associate|footnr-7.2|<tuple|7.2|60>>
    <associate|footnr-7.3|<tuple|7.3|60>>
    <associate|footnr-7.4|<tuple|7.4|62>>
    <associate|freshmans-dream|<tuple|5.1|35>>
    <associate|fundamentallemma|<tuple|1.4|8>>
    <associate|galois-erweiterung-lemma|<tuple|2.3|71>>
    <associate|galoiserweiterung-bedingung|<tuple|2.1|70>>
    <associate|galoiserweiterung-beispiele|<tuple|2.2|71>>
    <associate|galoisgruppe-beispiel|<tuple|2.1|70>>
    <associate|galoisgruppe-ist-gruppe|<tuple|2.2|71>>
    <associate|ganzheitsbasis|<tuple|6.3|43>>
    <associate|gauss-lemma-umformulierung|<tuple|6.3|42>>
    <associate|gemeinsame-nullstellen-teiler-zx|<tuple|6.4|42>>
    <associate|gruppe-potenz-schreibweise|<tuple|2.2|11>>
    <associate|gruppenhomomorphismus-definition|<tuple|1.7|78>>
    <associate|gruppenhomomorphismus-lemma|<tuple|1.5|79>>
    <associate|hauptidealring-dann-faktoriell|<tuple|3.4|24>>
    <associate|hauptsatz-galoistheorie|<tuple|2.1|72>>
    <associate|hilbert-basissatz|<tuple|3.1|18>>
    <associate|homomorphismus-null-lemma|<tuple|4.5|32>>
    <associate|ideal-korrespondenz-satz|<tuple|4.3|30>>
    <associate|ideale-od-ganzheitsbasis|<tuple|6.4|47>>
    <associate|ideale-quotientenring|<tuple|4.3|28>>
    <associate|inopportune-elemente-lemma|<tuple|6.12|52>>
    <associate|inopportunes-element-kanonische-form|<tuple|6.14|54>>
    <associate|integritaetsbereich-ideale-lemma|<tuple|3.5|21>>
    <associate|irreduzibel-polynom-quotientenring|<tuple|5.2|35>>
    <associate|kaestchen|<tuple|2.2|12>>
    <associate|kaestchen-2|<tuple|3.5|25>>
    <associate|kaestchen-3|<tuple|4|26>>
    <associate|kein-inopportunes-element-dann-faktoriell|<tuple|6.13|53>>
    <associate|kern-ist-ideal|<tuple|4.6|32>>
    <associate|klassifikation-zyklische-gruppen|<tuple|1.3|80>>
    <associate|kleiner-fermat|<tuple|5.2|36>>
    <associate|kleiner-fermat-allgemein|<tuple|1.3|81>>
    <associate|koerper-euklidisch|<tuple|3.9|24>>
    <associate|koerper-integritaetsbereich|<tuple|2.2|14>>
    <associate|koerper-noethersch|<tuple|3.2|16>>
    <associate|komplexe-zahlen-ideal|<tuple|5.1|36>>
    <associate|konjugiert-komplexer-wurzelsatz|<tuple|5.3|36>>
    <associate|konjugierte-d-eigenschaften|<tuple|6.5|44>>
    <associate|kreisteilungskoerper|<tuple|1.5|67>>
    <associate|lemma-von-bezout|<tuple|1.1|7>>
    <associate|lemma-von-bezout-2|<tuple|1.2|7>>
    <associate|lemma-von-gauss|<tuple|6.3|41>>
    <associate|linearkombination-teilbarkeit|<tuple|1.2|3>>
    <associate|linksnebenklassenzerlegung|<tuple|1.1|76>>
    <associate|lokaler-ring-bedingungen|<tuple|7.1|56>>
    <associate|lokaler-ring-definition|<tuple|7.1|57>>
    <associate|lokalisierung-ist-lokal|<tuple|7.1|59>>
    <associate|matrizenring|<tuple|2.2|13>>
    <associate|multiplikative-teilmenge-primideal|<tuple|7.2|57>>
    <associate|nd-einheit|<tuple|6.7|46>>
    <associate|noethersch-aber-kein-hir|<tuple|3.5|19>>
    <associate|noethersch-dann-faktorzerlegung|<tuple|3.2|21>>
    <associate|noethersche-ringe-proposition|<tuple|3.2|21>>
    <associate|norm-d-eigenschaften|<tuple|6.6|45>>
    <associate|norm-d-teiler|<tuple|6.5|46>>
    <associate|od-2-3-irreduzibel|<tuple|6.8|49>>
    <associate|od-euklidisch-lemma|<tuple|6.9|50>>
    <associate|od-ganzer-abschluss-von-z|<tuple|6.3|47>>
    <associate|od-hir-gdw-ufd|<tuple|6.1|48>>
    <associate|od-ideale-endlich|<tuple|6.7|48>>
    <associate|od-positiv-beispiele|<tuple|7.7|62>>
    <associate|od-primideal-maximalideal|<tuple|6.8|48>>
    <associate|od-ufd-kriterium|<tuple|6.3|54>>
    <associate|orbits-kardinalitaet|<tuple|2.2|84>>
    <associate|orbits-relation|<tuple|2.1|82>>
    <associate|ordnung-teiler|<tuple|1.2|75>>
    <associate|p-gruppe-zentrum|<tuple|2.7|88>>
    <associate|polynome-koerper-proposition|<tuple|5.1|34>>
    <associate|polynomring-euklidisch|<tuple|4.1|26>>
    <associate|polynomring-lemma|<tuple|4.1|26>>
    <associate|polynomring-proposition|<tuple|3.1|17>>
    <associate|polynomringe|<tuple|3.3|17>>
    <associate|prim-irreduzibel|<tuple|3.4|20>>
    <associate|primelement-norm|<tuple|6.11|51>>
    <associate|primelement-wenn-primideal|<tuple|4.2|27>>
    <associate|primitiv-irreduzibel-polynom|<tuple|6.4|42>>
    <associate|primitiv-irreduzibel-polynom-allgemein|<tuple|7.5|60>>
    <associate|primitiv-irreduzibel-polynom-umformulierung|<tuple|6.2|42>>
    <associate|primordnung-zyklisch|<tuple|1.4|81>>
    <associate|primzahlen-harmonische-reihe|<tuple|1.3|4>>
    <associate|primzahlen-teilen-faktor|<tuple|1.3|8>>
    <associate|quadratischer-zahlkoerper|<tuple|6.1|39>>
    <associate|quadratischer-zahlkoerper-isomorphismus|<tuple|6.1|39>>
    <associate|quaternionen|<tuple|2.4|14>>
    <associate|quaternionengruppe|<tuple|1.2|77>>
    <associate|quotientenring-konstante-polynome|<tuple|4.2|28>>
    <associate|r-q-koeerw-unendlich|<tuple|1.4|67>>
    <associate|restklassen-modulo-m|<tuple|2.1|10>>
    <associate|ring-der-ganzen-zahlen-isomorphismus|<tuple|6.2|43>>
    <associate|ring-mit-faktorzerlegung-aber-nicht-noethersch|<tuple|3.8|22>>
    <associate|ringhomomorphismus-beispiele|<tuple|4.5|32>>
    <associate|satz-von-cauchy-lemma|<tuple|2.3|84>>
    <associate|satz-von-euklid|<tuple|1.2|4>>
    <associate|satz-von-lagrange|<tuple|1.2|76>>
    <associate|satz-von-wilson|<tuple|2.3|15>>
    <associate|spec-mspec-formel|<tuple|4.2|27>>
    <associate|teilbarkeit-lemma|<tuple|1.1|3>>
    <associate|teilbarkeit-lemma-ring|<tuple|3.3|19>>
    <associate|tower-law-korollar|<tuple|1.1|64>>
    <associate|transitivität-algebraisch|<tuple|1.2|68>>
    <associate|turm-regel|<tuple|1.1|64>>
    <associate|ufd-definition|<tuple|3.5|20>>
    <associate|ufd-maximalteiler|<tuple|3.6|25>>
    <associate|untergruppen-von-z|<tuple|2.2|12>>
    <associate|untergruppen-zyklisch|<tuple|2.1|11>>
    <associate|untergruppen-zyklisch-existenz|<tuple|1.2|80>>
    <associate|variablen-permutation-automorphismus|<tuple|2.5|74>>
    <associate|vervollständigung-von-körpern|<tuple|4.4|29>>
    <associate|x2+1-irreduzibel|<tuple|6.10|51>>
    <associate|zx-faktoriell|<tuple|7.1|55>>
    <associate|zx-nicht-hauptidealring|<tuple|3.4|18>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      Conrad2018

      Kaltenbaeck2015

      Kaltenbaeck2015

      Cox1989

      Hardy1960

      Lemmermeyer2004

      Grobner2023

      Marcus2018

      Milne2022

      Lang2002

      Lang2002

      Lu2026
    </associate>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Ringe
      und Arithmetik> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Die
      Arithmetik der ganzen Zahlen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Grundbegriffe>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Noethersche,
      faktorielle und euklidische Ringe> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Quotientenringe
      und Homomorphismen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Polynomringe>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Quadratische
      Zahlkörper und Ganzheitsringe> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Lokalisierungen
      und Quotientenkörper> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>Körper>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Algebraische
      Körpererweiterungen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Galoistheorie>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|3<space|2spc>Gruppen>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Untergruppen
      und Quotientengruppen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Endliche
      Gruppen> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|4<space|2spc>Moduln>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Struktursatz>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Anwendungen
      des Struktursatzes> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Literaturverzeichnis>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>