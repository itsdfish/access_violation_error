kernel_dist(::Type{Epanechnikov}, w::Float64) = Epanechnikov(0.0, w)
kernel(data) = kde(data; kernel=Epanechnikov)

function f()
    x = rand(LogNormal(-1, .5,), 10_000)
    kd = kernel(x) # error is probably happening here
    y = rand(LogNormal(-1, .5,))
    return pdf(kd, y)
end