+++
title = "Publications"
+++

~~~
<main class="post">
~~~

~~~
<h1><a href="{{ get_url }}">{{ fill title }}</a></h1>
~~~

\newcommand{\spacedright}[1]{
  ~~~
  <span style="float:right">
  &nbsp; &nbsp; &nbsp; #1
  </span>
  ~~~
}

\newcommand{\pubbutton}[2]{
~~~<a href=#2 class=pubbuttons>#1</a>~~~
}

\newcommand{\styletext}[2]{
~~~
<span style="#1">
#2
</span>
~~~
}

\newcommand{\pubyear}[1]{
@@pubyear
\styletext{float:right; text-align:right}{#1}
@@
}


\pubyear{2022}

@@pubrow
@@pubfig
    \fig{/assets/fenrir.svg}
@@
@@pubtext
    **Fenrir: Physics-Enhanced Regression for Initial Value Problems** \\
    Filip Tronarp\*,
    ~~~<ins>Nathanael Bosch</ins>*~~~,
    Philipp Hennig.\\
    _ICML 2022_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v162/tronarp22a.html}
    \pubbutton{code}{https://github.com/nathanaelbosch/fenrir-experiments}
@@
@@


@@pubrow
@@pubfig
    \fig{/assets/highdim.svg}
@@
@@pubtext
    **Probabilistic ODE Solutions in Millions of Dimensions** \\
    Nicholas Krämer\*,
    ~~~<ins>Nathanael Bosch</ins>*~~~,
    Jonathan Schmidt\*, Philipp Hennig.\\
    _ICML 2022_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v162/kramer22b.html}
@@
@@


@@pubrow
@@pubfig
    \fig{/assets/pickandmix.svg}
@@
@@pubtext
    **Pick-and-Mix Information Operators for Probabilistic ODE Solvers** \\
    ~~~<ins>Nathanael Bosch</ins>~~~,
    Filip Tronarp, Philipp Hennig.\\
    _AISTATS 2022_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v151/bosch22a.html}
    \pubbutton{code}{https://github.com/nathanaelbosch/pick-and-mix}
    \pubbutton{video}{https://www.youtube.com/watch?v=-99BB_6gFVE}
@@
@@

\pubyear{2021}

@@pubrow
@@pubfig
    \fig{/assets/capos.svg}
@@
@@pubtext
    **Calibrated Adaptive Probabilistic ODE Solvers** \\
    ~~~<ins>Nathanael Bosch</ins>~~~,
    Philipp Hennig, Filip Tronarp. \\
    _AISTATS 2021_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v130/bosch21a.html}
    \pubbutton{code}{https://github.com/nathanaelbosch/capos}
    \pubbutton{video}{https://www.youtube.com/watch?v=88xRVxZ6VWc&list=PL05umP7R6ij0pTCyaKny5V4iBs3739f4z&index=22}
@@
@@

@@pubrow
@@pubfig
    \fig{/assets/probnum.svg}
@@
@@pubtext
    **ProbNum: Probabilistic Numerics in Python** \\
    Jonathan Wenger, Nicholas Krämer, Marvin Pförtner, Jonathan Schmidt,
    ~~~<ins>Nathanael Bosch</ins>~~~,
    Nina Effenberger, Johannes Zenn, Alexandra Gessner, Toni Karvonen, Francois-Xavier Briol, Maren Mahsereci, Philipp Hennig.\\
    _arXiv (preprint)_ \\
    \pubbutton{arXiv}{https://arxiv.org/abs/2112.02100}
    \pubbutton{code}{https://github.com/probabilistic-numerics/probnum}
    \pubbutton{website}{https://probnum.readthedocs.io/}
@@
@@

\pubyear{2020}

@@pubrow
@@pubfig
    \fig{/assets/dlgpd.png}
@@
@@pubtext
    **Planning from Images with Deep Latent Gaussian Process Dynamics** \\
    ~~~<ins>Nathanael Bosch</ins>*~~~,
    Jan Achterhold\*, Laura Leal-Taixé, Jörg Stückler.\\
    _L4DC 2020_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v120/bosch20a}
    \pubbutton{code}{https://github.com/EmbodiedVision/dlgpd}
    \pubbutton{website}{https://dlgpd.is.tue.mpg.de/}
@@
@@

\\

# Theses
\pubyear{2019}
@@pubrow
@@pubfig
@@
@@pubtext
    **Learning Gaussian Process Dynamics Models from Visual Observations for Control** \\
    Master thesis in *Data Engineering and Analytics*
@@
@@

\pubyear{2018}
@@pubrow
@@pubfig
@@
@@pubtext
    **Evolutionary Games for Global Function Minimization** \\
    Master thesis in *Mathematics* \\
    \pubbutton{pdf}{https://www-m15.ma.tum.de/foswiki/pub/M15/Allgemeines/PublicationsEN/master_thesis_NBosch.pdf}
    \pubbutton{code}{https://github.com/nathanaelbosch/egt}
@@
@@

\pubyear{2016}
@@pubrow
@@pubfig
@@
@@pubtext
    **Different Noise Models in Variable Density Compressed Sensing** \\
    Bachelor thesis in *Mathematics*
@@
@@

~~~
</main>
~~~
