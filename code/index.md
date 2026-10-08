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
    <div style="text-align:justify">
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

~~~
<br>
~~~

## Other projects

\compactcodeproject{probabilistic-numerics}{probnum}

\compactcodeproject{nathanaelbosch}{parallel-in-time-ode-filters}

<!-- \compactcodeproject{nathanaelbosch}{Fenrir.jl} -->

\compactcodeproject{nathanaelbosch}{TuePlots.jl}

\compactcodeproject{nathanaelbosch}{KalmanFilterToolbox.jl}

\compactcodeproject{nathanaelbosch}{PSDMatrices.jl}

\compactcodeproject{nathanaelbosch}{ChaoticDynamicalSystemLibrary.jl}

\compactcodeproject{pnkraemer}{tornadox}

\compactcodeproject{nathanaelbosch}{generative-latent-optimization}

~~~
</main>
~~~
