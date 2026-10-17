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
~~~
<a class="card" href="https://github.com/!#1/!#2">
    <h3 class="card-title">
        <span>!#2</span>
        <span class="card-meta">{{ghlanguage !#1/!#2}}{{ghstars !#1/!#2}}</span>
    </h3>
    <div class="card-body">
~~~
!#3
~~~
    </div>
</a>
~~~
}

\newcommand{\compactcodeproject}[3]{
~~~
<a class="card" href="https://github.com/!#1/!#2">
    <h3 class="card-title">
        <span>!#2</span>
        <span class="card-meta">{{ghlanguage !#1/!#2 !#3}}{{ghstars !#1/!#2}}</span>
    </h3>
    <div class="card-body"><p>{{ghdescription !#1/!#2}}</p></div>
</a>
~~~
}

## Featured Projects

\codeproject{nathanaelbosch}{ProbNumDiffEq.jl}{
\fig{/assets/probnumdiffeq-banner.svg}
ProbNumDiffEq.jl provides *probabilistic numerical* ODE solvers to the DifferentialEquations.jl ecosystem. The implemented ODE filters solve differential equations via Bayesian filtering and smoothing. The filters compute not just a single point estimate of the true solution, but a posterior distribution that contains an estimate of its numerical approximation error.

~~~
<div class="install-hint"><span class="install-prompt">pkg&gt;</span> add ProbNumDiffEq</div>
~~~
}

## Other projects

\compactcodeproject{probabilistic-numerics}{probnum}{}

\compactcodeproject{nathanaelbosch}{parallel-in-time-ode-filters}{JAX}

<!-- \compactcodeproject{nathanaelbosch}{Fenrir.jl}{} -->

\compactcodeproject{nathanaelbosch}{TuePlots.jl}{}

\compactcodeproject{nathanaelbosch}{KalmanFilterToolbox.jl}{}

\compactcodeproject{nathanaelbosch}{PSDMatrices.jl}{}

\compactcodeproject{nathanaelbosch}{ChaoticDynamicalSystemLibrary.jl}{}

\compactcodeproject{pnkraemer}{tornadox}{JAX}

\compactcodeproject{nathanaelbosch}{generative-latent-optimization}{PyTorch}

~~~
</main>
~~~
