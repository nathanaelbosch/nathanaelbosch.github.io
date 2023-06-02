+++
title = "Publications"
+++

~~~
<main class="post">
~~~

~~~
<h1><a href="{{ get_url }}">{{ fill title }}</a></h1>
~~~

<!-- co-authors: -->


\newcommand{\pubyear}[1]{
@@pubyear
\styletext{float:right; text-align:right}{#1}
@@
}

\newcommand{\me}{~~~<ins>Nathanael Bosch</ins>~~~}

\newcommand{\author}[2]{@@author
[#1](#2)
@@}

\newcommand{\ph}{\author{Philipp Hennig}{https://uni-tuebingen.de/en/fakultaeten/mathematisch-naturwissenschaftliche-fakultaet/fachbereiche/informatik/lehrstuehle/methoden-des-maschinellen-lernens/personen/philipp-hennig/}}
\newcommand{\ft}{\author{Filip Tronarp}{https://filtron.github.io/}}
\newcommand{\js}{\author{Jonathan Schmidt}{https://schmidtjonathan.github.io/}}
\newcommand{\mp}{\author{Marvin Pförtner}{https://marvinpfoertner.github.io/}}
\newcommand{\pn}{\author{Nicholas Krämer}{https://pnkraemer.github.io/}}
\newcommand{\jw}{\author{Jonathan Wenger}{https://jonathanwenger.netlify.app/}}
\newcommand{\tonikarvonen}{\author{Toni Karvonen}{https://tskarvone.github.io/}}
\newcommand{\ninaeffenberger}{\author{Nina Effenberger}{https://www.mlsustainableenergy.com/people/nina-effenberger/}}
\newcommand{\jzenn}{\author{Johannes Zenn}{https://jzenn.github.io/}}
\newcommand{\fxbriol}{\author{Francois-Xavier Briol}{https://fxbriol.github.io/}}
\newcommand{\mmahsereci}{\author{Maren Mahsereci}{https://mmahsereci.github.io/}}
\newcommand{\jstueckler}{\author{Jörg Stückler}{https://is.mpg.de/person/jstueckler}}
\newcommand{\llt}{\author{Laura Leal-Taixé}{https://dvl.in.tum.de/team/lealtaixe/}}
\newcommand{\jachterhold}{\author{Jan Achterhold}{https://is.mpg.de/~jachterhold}}

\pubyear{2023}

@@pubrow
@@pubfig
    \fig{/assets/publications/probexpint.svg}
@@
@@pubtext
    **Probabilistic Exponential Integrators** \\
    \me, \ft, \ph.\\
    _arXiv (preprint)_ \\
    \pubbutton{arxiv}{https://arxiv.org/abs/2305.14978}
    \pubbutton{code}{https://github.com/nathanaelbosch/probabilistic-exponential-integrators}
@@
@@

\pubyear{2022}

@@pubrow
@@pubfig
    \fig{/assets/publications/fenrir.svg}
@@
@@pubtext
    **Fenrir: Physics-Enhanced Regression for Initial Value Problems** \\
    \ft\*, \me\*, \ph.\\
    _ICML 2022_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v162/tronarp22a.html}
    \pubbutton{code}{https://github.com/nathanaelbosch/fenrir-experiments}
@@
@@


@@pubrow
@@pubfig
    \fig{/assets/publications/highdim.svg}
@@
@@pubtext
    **Probabilistic ODE Solutions in Millions of Dimensions** \\
    \pn\*, \me\*, \js\*, \ph.\\
    _ICML 2022_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v162/kramer22b.html}
    \pubbutton{code}{https://github.com/pnkraemer/million-dimension-prob-ode-solver-experiments}
@@
@@


@@pubrow
@@pubfig
    \fig{/assets/publications/pickandmix.svg}
@@
@@pubtext
    **Pick-and-Mix Information Operators for Probabilistic ODE Solvers** \\
    \me, \ft, \ph.\\
    _AISTATS 2022_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v151/bosch22a.html}
    \pubbutton{code}{https://github.com/nathanaelbosch/pick-and-mix}
    \pubbutton{video}{https://www.youtube.com/watch?v=-99BB_6gFVE}
@@
@@

\pubyear{2021}

@@pubrow
@@pubfig
    \fig{/assets/publications/capos.svg}
@@
@@pubtext
    **Calibrated Adaptive Probabilistic ODE Solvers** \\
    \me, \ph, \ft. \\
    _AISTATS 2021_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v130/bosch21a.html}
    \pubbutton{code}{https://github.com/nathanaelbosch/capos}
    \pubbutton{video}{https://www.youtube.com/watch?v=88xRVxZ6VWc&list=PL05umP7R6ij0pTCyaKny5V4iBs3739f4z&index=22}
@@
@@

@@pubrow
@@pubfig
    \fig{/assets/publications/probnum.svg}
@@
@@pubtext
    **ProbNum: Probabilistic Numerics in Python** \\
    \jw, \pn, \mp, \js, \me, \ninaeffenberger, \jzenn, Alexandra Gessner, \tonikarvonen, \fxbriol, \mmahsereci, \ph.\\
    _arXiv (preprint)_ \\
    \pubbutton{arXiv}{https://arxiv.org/abs/2112.02100}
    \pubbutton{code}{https://github.com/probabilistic-numerics/probnum}
    \pubbutton{website}{https://probnum.readthedocs.io/}
@@
@@

\pubyear{2020}

@@pubrow
@@pubfig
    \fig{/assets/publications/dlgpd.png}
@@
@@pubtext
    **Planning from Images with Deep Latent Gaussian Process Dynamics** \\
    \me\*, \jachterhold\*, \llt, \jstueckler.\\
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
