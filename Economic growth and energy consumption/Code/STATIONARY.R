#library
library(urca)

###Thailand

df  = read.csv("thailand_final.csv")
plot(df$year,df$energy_growth, type = 'o', xlab = 'Year',ylab = 'Energy Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$energy_growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance


##gdp growth
plot(df$year,df$growth, type = 'o',xlab = 'Year',ylab = 'GDP Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 10% level of significance


###India

##energy_growth
df  = read.csv("india_final.csv")
plot(df$year,df$energy_growth, type = 'o', xlab = 'Year',ylab = 'Energy Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$energy_growth, type = c('drift'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance

##gdp growth
plot(df$year,df$growth, type = 'o',xlab = 'Year',ylab = 'GDP Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance


###Indonesia

##energy_growth
df  = read.csv("indonesia_final.csv")
plot(df$year,df$energy_growth, type = 'o', xlab = 'Year',ylab = 'Energy Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$energy_growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance

##gdp growth
plot(df$year,df$growth, type = 'o',xlab = 'Year',ylab = 'GDP Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance

###Philippines

df  = read.csv("philippines_final.csv")
plot(df$year,df$energy_growth, type = 'o', xlab = 'Year',ylab = 'Energy Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$energy_growth, type = c('drift'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance

##gdp growth
plot(df$year,df$growth, type = 'o',xlab = 'Year',ylab = 'GDP Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$growth, type = c('drift'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance


####Pakistan

df  = read.csv("pakistan_final.csv")
plot(df$year,df$energy_growth, type = 'o', xlab = 'Year',ylab = 'Energy Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$energy_growth, type = c('drift'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance

##gdp growth
plot(df$year,df$growth, type = 'o',xlab = 'Year',ylab = 'GDP Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance

###japan

##energy_growth
df  = read.csv("japan_final.csv")
plot(df$year,df$energy_growth, type = 'o', xlab = 'Year',ylab = 'Energy Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$energy_growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance

##gdp growth
plot(df$year,df$growth, type = 'o',xlab = 'Year',ylab = 'GDP Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance


###Singapore

df  = read.csv("singapore_final.csv")
plot(df$year,df$energy_growth, type = 'o', xlab = 'Year',ylab = 'Energy Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$energy_growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance

##gdp growth
plot(df$year,df$growth, type = 'o',xlab = 'Year',ylab = 'GDP Grwoth', col = 'darkturquoise', pch = 16)
s = ur.df(df$growth, type = c('trend'),lags = 15,
          selectlags = c( "AIC"))
summary(s)
#Stationary at 5% level of significance




