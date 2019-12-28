import Pkg;Pkg.add("DifferentialEquations")
import Pkg;Pkg.add("Plots")
using DifferentialEquations
using Plots;gr()

# definition ode
f(y, t) = 3.0 * y + 2.0

# setting initial condiction
y0 = 1.0

# setting time step
tspan = (0.0, 1.0)

# solve of ODEProblem
prob = ODEProblem(f , y0 , tspan)
sol = solve(prob)

# plot
plot(
    sol,
    linewidth=5,
    title="Solution to the linear ODE with a thick line",
    xaxis="Time (t)",
    yaxis="y(t) (in micro.m)",
    label="My Thick Line!"
)

# exact solution
g(t) = 5//3 * exp.(3 * t) - 2//3

# comparison plot
plot!(g, lw=3, ls=:dash, label="True Solution!")