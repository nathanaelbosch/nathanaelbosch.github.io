+++
title = "Open Source Projects"
+++

~~~
<main class="post">
~~~

~~~
<h1><a href="{{ get_url }}">{{ fill title }}</a></h1>
~~~

\newcommand{\codeproject}[3]{
\clickablecard{https://github.com/!#1/!#2}{
~~~
<div>
    <h3 style="display: flex; justify-content: space-between;">
        <span>!#2</span>
        <img src="https://img.shields.io/github/stars/!#1/!#2?style=flat-square" alt="GitHub stars">
    </h3>
    <!-- Add other content here as needed -->
    <div class="project-description">
~~~
!#3
~~~
    </div>
</div>
~~~
}}

\newcommand{\compactcodeproject}[2]{\codeproject{!#1}{!#2}{
  \getgithubdescription{!#1/!#2}}
}


## Featured Projects

\codeproject{nathanaelbosch}{ProbNumDiffEq.jl}{
\fig{/assets/probnumdiffeq-banner.svg}
ProbNumDiffEq.jl provides *probabilistic numerical* ODE solvers to the DifferentialEquations.jl ecosystem. The implemented ODE filters solve differential equations via Bayesian filtering and smoothing. The filters compute not just a single point estimate of the true solution, but a posterior distribution that contains an estimate of its numerical approximation error.

Try it out: `] add ProbNumDiffEq.jl`
}


\codeproject{probabilistic-numerics}{probnum}{
\fig{/assets/probnum_logo_dark_txtright.svg}
ProbNum is a Python toolkit for solving numerical problems in linear algebra, optimization, quadrature and differential equations. ProbNum solvers not only estimate the solution of the numerical problem, but also its uncertainty (numerical error) which arises from finite computational resources, discretization and stochastic input. This numerical uncertainty can be used in downstream decisions.

To use: `pip install probnum`
}

~~~
<br>
~~~

## Other projects

\compactcodeproject{nathanaelbosch}{parallel-in-time-ode-filters}

\compactcodeproject{nathanaelbosch}{Fenrir.jl}

\compactcodeproject{pnkraemer}{tornadox}

\compactcodeproject{nathanaelbosch}{TuePlots.jl}

\compactcodeproject{nathanaelbosch}{KalmanFilterToolbox.jl}

\compactcodeproject{nathanaelbosch}{PSDMatrices.jl}

\compactcodeproject{nathanaelbosch}{generative-latent-optimization}


~~~
</main>
~~~
