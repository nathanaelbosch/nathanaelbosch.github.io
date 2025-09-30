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

\newcommand{\me}{~~~<b>NB</b>~~~}

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
\newcommand{\adriencorenflos}{\author{Adrien Corenflos}{https://adriencorenflos.github.io/}}
\newcommand{\fatemehyaghoobi}{\author{Fatemeh Yaghoobi}{https://scholar.google.com/citations?user=vV_mN7QAAAAJ}}
\newcommand{\ss}{\author{Simo Särkkä}{https://users.aalto.fi/~ssarkka/}}
\newcommand{\melaniezeilinger}{\author{Melanie Zeilinger}{https://idsc.ethz.ch/the-institute/people/person-detail.html?persid=142737}}
\newcommand{\amonlahr}{\author{Amon Lahr}{https://idsc.ethz.ch/research-zeilinger/people/person-detail.MjkzNjUw.TGlzdC8xOTI5LDg4NTM5MTE3.html}}
\newcommand{\jonasbeck}{\author{Jonas Beck}{https://hertie.ai/data-science/team/members/jonas-beck}}
\newcommand{\michaeldeistler}{\author{Michael Deistler}{https://michaeldeistler.github.io/}}
\newcommand{\jakobmacke}{\author{Jakob Macke}{https://www.mackelab.org/people/}}
\newcommand{\philippberens}{\author{Philipp Berens}{https://hertie.ai/data-science/team/members/philipp-berens}}
\newcommand{\kyrakadhim}{\author{Kyra L. Kadhim}{https://hertie.ai/data-science/team/members/kyra-kadhim}}
\newcommand{\joannasliwa}{\author{Joanna Sliwa}{https://joannasliwa.github.io/}}
\newcommand{\frankschneider}{\author{Frank Schneider}{https://fsschneider.netlify.app/}}
\newcommand{\agustinus}{\author{Agustinus Kristiadi}{https://agustinus.kristia.de/}}
\newcommand{\oripress}{\author{Ori Press}{https://oripress.github.io/}}
\newcommand{\brandonamos}{\author{Brandon Amos}{https://bamos.github.io/}}
\newcommand{\haoyuzhao}{Haoyu Zhao}
\newcommand{\yikaiwu}{Yikai Wu}
\newcommand{\samuelainsworth}{Samuel K Ainsworth}
\newcommand{\dominikkrupke}{Dominik Krupke}
\newcommand{\patrickkidger}{\author{Patrick Kidger}{https://kidger.site/}}
\newcommand{\touqirsajed}{Touqir Sajed}
\newcommand{\bartolomeostellato}{\author{Bartolomeo Stellato}{https://stellato.io/}}
\newcommand{\jisunpark}{Jisun Park}
\newcommand{\elimeriil}{Eli Meril}
\newcommand{\albertsteppi}{Albert Steppi}
\newcommand{\armanzharmagambetov}{Arman Zharmagambetov}
\newcommand{\fangzhaozhang}{Fangzhao Zhang}
\newcommand{\davidperezpineiro}{David Perez-Pineiro}
\newcommand{\albertomercurio}{Alberto Mercurio}
\newcommand{\nizhan}{Ni Zhan}
\newcommand{\talorabramovich}{Talor Abramovich}
\newcommand{\kilianlieret}{Kilian Lieret}
\newcommand{\hanlinzhang}{Hanlin Zhang}
\newcommand{\shirleyhuang}{Shirley Huang}
\newcommand{\matthiasbethge}{\author{Matthias Bethge}{https://bethgelab.org/}}
\newcommand{\ofirpress}{\author{Ofir Press}{https://ofir.io/}}
\newcommand{\dinglingyao}{\author{Dingling Yao}{https://ddcoan.github.io/}}
\newcommand{\oleksandrshchur}{\author{Oleksandr Shchur}{https://shchur.github.io/}}
\newcommand{\nickerickson}{\author{Nick Erickson}{https://www.linkedin.com/in/nickericksoncs/}}
\newcommand{\michaelbohlkeschneider}{\author{Michael Bohlke-Schneider}{https://www.amazon.science/author/michael-bohlke-schneider}}
\newcommand{\alicanerturkmen}{\author{Ali Caner Turkmen}{https://caner.io/}}


\pubyear{2025}

@@pubrow
@@pubfig
    \fig{/assets/publications/algotune.png}
@@
@@pubtext
    **AlgoTune: Can Language Models Speed Up General-Purpose Numerical Programs?** \\
    \oripress, \brandonamos, \haoyuzhao, \yikaiwu, \samuelainsworth, \dominikkrupke, \patrickkidger, \touqirsajed, \bartolomeostellato, \jisunpark, \me, \elimeriil, \albertsteppi, \armanzharmagambetov, \fangzhaozhang, \davidperezpineiro, \albertomercurio, \nizhan, \talorabramovich, \kilianlieret, \hanlinzhang, \shirleyhuang, \matthiasbethge, \ofirpress\\
    _arXiv (preprint)_ \\
    \pubbutton{arXiv}{https://arxiv.org/abs/2507.15887}
    \pubbutton{code}{https://github.com/oripress/AlgoTune}
    \pubbutton{website}{https://algotune.io/}
@@
@@

@@pubrow
@@pubfig
    \fig{/assets/publications/uncertainty_propagation.svg}
@@
@@pubtext
    **Propagating Model Uncertainty through Filtering-based Probabilistic Numerical ODE Solvers** \\
    \dinglingyao, \ft, \me\\
    _ProbNum25_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v271/yao25a.html}
    \pubbutton{code}{https://github.com/DDCoan/pn-ode-up}
@@
@@

@@pubrow
@@pubfig
    \fig{/assets/publications/multilayerstacking.jpg}
@@
@@pubtext
    **Multi-layer Stack Ensembles for Time Series Forecasting** \\
    \me, \oleksandrshchur, \nickerickson, \michaelbohlkeschneider, \alicanerturkmen\\
    _AutoML25_ \\
    \pubbutton{paper}{https://openreview.net/forum?id=ve5Q1q1W5n}
@@
@@

\pubyear{2024}

@@pubrow
@@pubfig
    \fig{/assets/publications/joss.svg}
@@
@@pubtext
    **ProbNumDiffEq. jl: Probabilistic Numerical Solvers for Ordinary Differential Equations in Julia** \\
    \me\\
    _JOSS_ \\
    \pubbutton{paper}{https://joss.theoj.org/papers/10.21105/joss.07048}
    \pubbutton{code}{https://github.com/nathanaelbosch/ProbNumDiffEq.jl}
@@
@@

@@pubrow
@@pubfig
    \fig{/assets/publications/joannapaper.png}
@@
@@pubtext
    **Efficient Weight-Space Laplace-Gaussian Filtering and Smoothing for Sequential Deep Learning** \\
    \joannasliwa, \frankschneider, \me, \agustinus, \ph\\
    _arXiv (preprint)_ \\
    \pubbutton{arxiv}{https://arxiv.org/abs/2410.06800}
@@
@@

@@pubrow
@@pubfig
    \fig{/assets/publications/fenrir4neuro.png}
@@
@@pubtext
    **Diffusion Tempering Improves Parameter Estimation with Probabilistic Integrators for Ordinary Differential Equations** \\
    \jonasbeck, \me, \michaeldeistler, \kyrakadhim, \jakobmacke, \ph, \philippberens\\
    _ICML 2024_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v235/beck24a.html}
    \pubbutton{code}{https://github.com/berenslab/DiffusionTempering}
@@
@@

@@pubrow
@@pubfig
    \fig{/assets/publications/parallel-ode-filters.svg}
@@
@@pubtext
    **Parallel-in-Time Probabilistic Numerical ODE Solvers** \\
    \me, \adriencorenflos, \fatemehyaghoobi, \ft, \ph, \ss\\
    _JMLR_ \\
    \pubbutton{paper}{https://www.jmlr.org/papers/v25/23-1261.html}
    \pubbutton{code}{https://github.com/nathanaelbosch/parallel-in-time-ode-filters}
@@
@@

@@pubrow
@@pubfig
    \fig{/assets/publications/mpc.svg}
@@
@@pubtext
    **Probabilistic ODE Solvers for Integration Error-Aware Model Predictive Control** \\
    \amonlahr, \ft, \me, \js, \ph, \melaniezeilinger\\
    _L4DC 2024_ \\
    \pubbutton{paper}{https://proceedings.mlr.press/v242/lahr24a.html}
@@
@@

\pubyear{2023}

@@pubrow
@@pubfig
    \fig{/assets/publications/probexpint.svg}
@@
@@pubtext
    **Probabilistic Exponential Integrators** \\
    \me, \ph, \ft.\\
    _NeurIPS 2023_ \\
    \pubbutton{paper}{https://openreview.net/forum?id=2dx5MNs2Ip}
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
\pubyear{2025}
@@pubrow
@@pubfig
@@
@@pubtext
    **A Flexible and Efficient Framework for Probabilistic Numerical Simulation and Inference** \\
    PhD thesis in *Computer Science*, University of Tübingen\\
    \pubbutton{pdf}{https://publikationen.uni-tuebingen.de/xmlui/bitstream/handle/10900/165521/dissertation.pdf?sequence=1&isAllowed=y}
    \pubbutton{slides}{/assets/talks/2025_defense.pdf}
@@
@@

\pubyear{2019}
@@pubrow
@@pubfig
@@
@@pubtext
    **Learning Gaussian Process Dynamics Models from Visual Observations for Control** \\
    Master thesis in *Data Engineering and Analytics*\\
    \pubbutton{pdf}{/assets/publications/thesis_dea.pdf}
@@
@@

\pubyear{2018}
@@pubrow
@@pubfig
@@
@@pubtext
    **Evolutionary Games for Global Function Minimization** \\
    Master thesis in *Mathematics* \\
    \pubbutton{pdf}{/assets/publications/thesis_math.pdf}
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
