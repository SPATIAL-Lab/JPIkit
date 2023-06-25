
swd18O = tsvbl()

swd18O = vbl(c(1, 0.7))
swtemp = vbl(c(2, 18), "u")
b1 = vbl(c(3.32, 0.1), fixed = TRUE)

frac = link("fd18O", "swd18O + 0.001 * swtemp ^ 2 + -0.237 * swtemp
            + b1")

tser = ts(1)

d18Of = dat("fd18O", 1.2, 0.5, 1)

tstmod = build(list(swd18O, swtemp, b1), frac, tser, d18Of)