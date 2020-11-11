# Install package
install.packages("covid19.analytics")
library(covid19.analytics)

# load data
data <- covid19.data(case='aggregated')
names(data)

# Time series data
ts.confirmed <- covid19.data(case = "ts-confirmed")

# Summary report
report.summary(Nentries = 4, graphical.output = T)

#Growth Rate
growth.rate(ts.confirmed, geo.loc = 'India')

# Time series data(all)
ts.all <- covid19.data(case = "ts-all")

# Summary report
report.summary(Nentries = 4, graphical.output = T)

#Total plot
totals.plt(ts.all)
totals.plt(ts.all, c('India'))

#worldmap for confirmed case
live.map(ts.confirmed)

#SIR Model
generate.SIR.model(ts.confirmed, 'India', tot.population = 1352600000)

generate.SIR.model(ts.confirmed, 'US', tot.population = 308401808)




