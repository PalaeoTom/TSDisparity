## First, run Momocs tutorial up until first mention of harmonic power analysis in EFA section
## Then run the below.

## Conduct harmonic power analysis, trying up to 100 harmonics. Name output object "out"
out <- calibrate_harmonicpower_efourier(outPro, nb.h=100)
## Isolate cumulative harmonic power for each outline for each number of harmonics (i.e., 1-100 harmonics)
hp.values <- out$gg$data[,2:3]
## Check there are the same number of values for each number of harmonics as number of samples (should be 112 each)
table(hp.values[,1])
## Isolate harmonic power values for a specific number of harmonics. Let's try 5 harmonics (h5)
h5.epower <- hp.values[which(hp.values[,1] %in% "h5"),2]
h5.epower
## Now let's isolate cumulative harmonic power values for 10 harmonics
h10.epower <- hp.values[which(hp.values[,1] %in% "h10"),2]
h10.epower
## Compare summaries
summary(h5.epower)
summary(h10.epower)
