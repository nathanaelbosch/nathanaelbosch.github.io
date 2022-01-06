+++
title = "Open Source Projects"
+++

~~~
<main class="post">
~~~

~~~
<h1><a href="{{ get_url }}">{{ fill title }}</a></h1>
~~~


- [**ProbNumDiffEq.jl**](https://github.com/nathanaelbosch/ProbNumDiffEq.jl):
  ProbNumDiffEq.jl provides *probabilistic numerical* ODE solvers to the [DifferentialEquations.jl](https://diffeq.sciml.ai) ecosystem. The implemented ODE filters solve differential equations via Bayesian filtering and smoothing. The filters compute not just a single point estimate of the true solution, but a posterior distribution that contains an estimate of its numerical approximation error.\\
  ([github](https://github.com/nathanaelbosch/ProbNumDiffEq))
- [**ProbNum**](https://github.com/probabilistic-numerics/probnum):
  ProbNum is a Python toolkit for solving numerical problems in linear algebra, optimization, quadrature and differential equations. ProbNum solvers not only estimate the solution of the numerical problem, but also its uncertainty (numerical error) which arises from finite computational resources, discretization and stochastic input. This numerical uncertainty can be used in downstream decisions.
  To use: `pip install probnum`\\
  ([github](https://github.com/probabilistic-numerics/probnum),
  [website](https://probnum.readthedocs.io/en/latest/),
  [paper](https://arxiv.org/abs/2112.02100))

~~~
</main>
~~~
