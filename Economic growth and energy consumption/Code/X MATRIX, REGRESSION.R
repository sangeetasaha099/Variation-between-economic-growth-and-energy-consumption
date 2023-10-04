# function for X matrix
Xmatrix = function(X,rank, mean_gdp,n)
{
  #mean_gdp = mean(X$growth_gdp)
  
  column_low = c()
  for (i in 1:(rank+2))
  {
    column_low[i] = paste0('col',as.character(i))
  }
  
  
  X_low = data.frame(matrix(0,nrow = n-rank,ncol = length(column_low)))
  colnames(X_low) = column_low
  #X_low
  
  #high growth matrix
  column_high = c()
  for (i in 1: (rank +2))
  {
    column_high[i] = paste0('col',as.character(i+rank+2))
  }
  #column_high
  X_high = data.frame(matrix(0,nrow = n-rank,ncol = length(column_high)))
  colnames(X_high) = column_high
  #X_high
  
  #seperate with mean gdp
  for (i in 1:length(X$growth_gdp))
  {
    if(X$growth_gdp[i]<=mean_gdp)
    {
      X_low[i,] = X[i,]
    }
    else{
      X_high[i,] = X[i,]
    }
  }
  
  Final_x = data.frame(X_low, X_high)
  #Final_x
  return(Final_x)
}

# residual diagnostic function
residual_diagnostic = function(error)
{
  
  #testing for residuals
  k = c(1:20)
  Q_statictics_ehat = c()
  p_value_ehat = c()
  for (i in 1:length(k))
  {
    b = Box.test(error, lag = i, type = "Ljung")
    Q_statictics_ehat[i] = b$statistic
    p_value_ehat[i] = b$p.value
  }
  #Q_statictics_ehat
  #p_value_ehat
  
  #creating the dataframe
  dataframe_ehat = data.frame(k, Q_statistics = Q_statictics_ehat, p_value = p_value_ehat)
  return(dataframe_ehat)
}

################################################################################################

################################ X MATRIX #########################################

#Thailand

data_thailand = read.csv('thailand_final.csv')
#data_thailand

n = length(data_thailand$growth)

#creating original X matrix without high low
X_thailand = data.frame(intercept = rep(1,(n-2)),energy_t_1 = data_thailand$energy_growth[2:(n-1)], energy_t_2 = data_thailand$energy_growth[1:(n-2)],growth_gdp = data_thailand$growth[3:n])

#Final matrix
X_final_thailand = Xmatrix(X_thailand,2, mean(data_thailand$growth),n)
colnames(X_final_thailand) = c('intercept_low','y(t-1) low','y(t-2) low','gdp low','intercept_high','y(t-1) high','y(t-2) high','gdp high')
X_final_thailand

###################################################################################################


#India

data_india = read.csv("India_final.csv")
#data_india

n = length(data_india$growth)

#creating original X matrix without high low
X_india = data.frame(intercept = rep(1,n),growth_gdp = data_india$growth[1:n])
#X_india

X_final_india = Xmatrix(X_india,0, mean(data_india$growth),n)
colnames(X_final_india) = c('intercept_low','gdp low','intercept_high','gdp high')

X_final_india

#########################################################################################

#Indonesia

data_indonesia = read.csv("Indonesia_final.csv")
#data_indonesia

n = length(data_indonesia$growth)

#creating original X matrix without high low
X_indonesia = data.frame(intercept = rep(1,n),growth_gdp = data_indonesia$growth[1:n])
#X_indonesia

X_final_indonesia = Xmatrix(X_indonesia,0, mean(data_indonesia$growth),n)
colnames(X_final_indonesia) = c('intercept_low','gdp low','intercept_high','gdp high')

X_final_indonesia

##########################################################################################


#Philippines

data_philippines = read.csv('philippines_final.csv')
#data_philippines

n = length(data_philippines$growth)

#white noise

X_philippines = data.frame(intercept = rep(1,n),growth_gdp = data_philippines$growth[1:n])
#X_philippines

X_final_philippines = Xmatrix(X_philippines,0, mean(data_philippines$growth),n)
colnames(X_final_philippines) = c('intercept_low','gdp low','intercept_high','gdp high')

X_final_philippines


############################################################################################

#Pakistan

data_pakistan = read.csv('pakistan_final.csv')
#data_pakistan

n = length(data_pakistan$growth)

X_pakistan = data.frame(intercept = rep(1,n),growth_gdp = data_pakistan$growth[1:n])
#X_pakistan

X_final_pakistan = Xmatrix(X_pakistan,0, mean(data_pakistan$growth),n)
colnames(X_final_pakistan) = c('intercept_low','gdp low','intercept_high','gdp high')

X_final_pakistan
 

###########################################################################################

#Japan
data_japan = read.csv('Japan_final.csv')
#data_japan

n = length(data_japan$growth)

#creating original X matrix without high low
X_japan = data.frame(intercept = rep(1,(n-1)),energy_t_1 = data_japan$energy_growth[1:(n-1)],growth_gdp = data_japan$growth[2:n])

#Final matrix
X_final_japan = Xmatrix(X_japan,1, mean(data_japan$growth),n)
colnames(X_final_japan) = c('intercept_low','y(t-1) low','gdp low','intercept_high','y(t-1) high','gdp high')

X_final_japan

#########################################################################################

#Singapore

data_singapore = read.csv('singapore_final.csv')
#data_singapore

n = length(data_singapore$growth)

X_singapore = data.frame(intercept = rep(1,n),growth_gdp = data_singapore$growth[1:n])
#X_singapore

X_final_singapore = Xmatrix(X_singapore,0, mean(data_singapore$growth),n)
colnames(X_final_singapore) = c('intercept_low','gdp low','intercept_high','gdp high')

X_final_singapore

############################################################################################


######################    REGRESSION  ########################

#Thailand

Y = data_thailand$energy_growth[3:length(data_thailand$energy_growth)]

fit = lm(formula = Y ~(. -1), data = X_final_thailand)

#Residual diagnostic
#error
error = residuals(fit)
error

#residual check
error_df = residual_diagnostic(error)
error_df
#white noise

summary(fit)

##################################################################

#India

Y = data_india$energy_growth

fit = lm(formula = Y ~(. -1), data = X_final_india)

#Residual diagnostic

#error
error = residuals(fit)
error

#residual check
error_df = residual_diagnostic(error)
error_df
#white noise

summary(fit)


################################################################


#Indonesia

Y = data_indonesia$energy_growth

fit = lm(formula = Y ~(. -1), data = X_final_indonesia)

#Residual diagnostic

#error
error = residuals(fit)
error

#residual check
error_df = residual_diagnostic(error)
error_df
#white noise 


summary(fit)

################################################################


#Philippines

Y = data_philippines$energy_growth

fit = lm(formula = Y ~(. -1), data = X_final_philippines)

#Residual diagnostic
#error
error = residuals(fit)
error

#residual check
error_df = residual_diagnostic(error)
error_df
#white noise 


summary(fit)


#################################################################

#Pakistan

Y = data_pakistan$energy_growth

fit = lm(formula = Y ~(. -1), data = X_final_pakistan)

#Residual diagnostic
#error
error = residuals(fit)
error

#residual check
error_df = residual_diagnostic(error)
error_df
#white noise

summary(fit)


################################################################


#japan

Y = data_japan$growth[2:length(data_japan$growth)]

fit = lm(formula = Y ~(. -1), data = X_final_japan)

#Residual diagnostic
#error
error = residuals(fit)
error

#residual check
error_df = residual_diagnostic(error)
error_df
#white noise

summary(fit)


################################################################


#Singapore

Y = data_singapore$energy_growth

fit = lm(formula = Y ~(. -1), data = X_final_singapore)

#Residual diagnostic
#error
error = residuals(fit)
error

#residual check
error_df = residual_diagnostic(error)
error_df
#white noise

summary(fit)


#################################################################

