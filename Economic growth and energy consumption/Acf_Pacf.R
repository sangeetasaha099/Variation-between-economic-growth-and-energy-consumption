#Thailand

data = read.csv('thailand_final.csv')

#checking the acf

Acf = acf(data$energy_growth, 19)
Acf$acf

#box jeinkin procedure
k = c(1:20)
Q_statistics = c()
p_value = c()
for (i in 1:length(k))
{
  b = Box.test(data$energy_growth, lag = i, type = "Ljung")
  #x_squared = b$
  Q_statistics[i] = b$statistic
  p_value[i] = b$p.value
}

#Q_statistics
#p_value

#Creating a dataframe

dataframe_acf = data.frame(k,acf = Acf$acf, Q_statistics, p_value)
#acf is diminishing

#checking the pacf
k = c(1:20)
Pacf = pacf(data$energy_growth, 20)

Pacf$acf
n = length(data$energy_growth)
#creating dataframe for pacf
dataframe_pacf = data.frame(k, pacf = Pacf$acf, Q_statisctics = sqrt(n)*Pacf$acf, normal = 1.96)
dataframe_pacf

#### AR(2)

#################################################################################################

###India

data = read.csv('india_final.csv')

#checking the acf

Acf = acf(data$energy_growth, 19)
Acf$acf

#box jeinkin procedure
k = c(1:20)
Q_statistics = c()
p_value = c()
for (i in 1:length(k))
{
  b = Box.test(data$energy_growth, lag = i, type = "Ljung")
  #x_squared = b$
  Q_statistics[i] = b$statistic
  p_value[i] = b$p.value
}

#Q_statistics
#p_value

#Creating a dataframe

dataframe_acf = data.frame(k,acf = Acf$acf, Q_statistics, p_value)
dataframe_acf
#White noise


#######################################################################################

#Indonesia

data = read.csv('indonesia_final.csv')

#checking the acf

Acf = acf(data$energy_growth, 19)
Acf$acf

#box jeinkin procedure
k = c(1:20)
Q_statistics = c()
p_value = c()
for (i in 1:length(k))
{
  b = Box.test(data$energy_growth, lag = i, type = "Ljung")
  #x_squared = b$
  Q_statistics[i] = b$statistic
  p_value[i] = b$p.value
}

#Q_statistics
#p_value

#Creating a dataframe

dataframe_acf = data.frame(k,acf = Acf$acf, Q_statistics, p_value)
dataframe_acf
# White noise


###########################################################################

###Phillipines

data = read.csv('philippines_final.csv')

#checking the acf

Acf = acf(data$energy_growth, 19)
Acf$acf

#box jeinkin procedure
k = c(1:20)
Q_statistics = c()
p_value = c()
for (i in 1:length(k))
{
  b = Box.test(data$energy_growth, lag = i, type = "Ljung")
  #x_squared = b$
  Q_statistics[i] = b$statistic
  p_value[i] = b$p.value
}

#Q_statistics
#p_value

#Creating a dataframe

dataframe_acf = data.frame(k,acf = Acf$acf, Q_statistics, p_value)
dataframe_acf
# White noise


###############################################################################

#Pakistan

data = read.csv('pakistan_final.csv')

#checking the acf

Acf = acf(data$energy_growth, 19)
Acf$acf

#box jeinkin procedure
k = c(1:20)
Q_statistics = c()
p_value = c()
for (i in 1:length(k))
{
  b = Box.test(data$energy_growth, lag = i, type = "Ljung")
  #x_squared = b$
  Q_statistics[i] = b$statistic
  p_value[i] = b$p.value
}

Q_statistics
p_value

#Creating a dataframe

dataframe_acf = data.frame(k,acf = Acf$acf, Q_statistics, p_value)
dataframe_acf
# White noise


#########################################################################


#Japan

data = read.csv('japan_final.csv')

#checking the acf

Acf = acf(data$energy_growth, 19)
Acf$acf

#box jeinkin procedure
k = c(1:20)
Q_statistics = c()
p_value = c()
for (i in 1:length(k))
{
  b = Box.test(data$energy_growth, lag = i, type = "Ljung")
  #x_squared = b$
  Q_statistics[i] = b$statistic
  p_value[i] = b$p.value
}

#Q_statistics
#p_value

#Creating a dataframe

dataframe_acf = data.frame(k,acf = Acf$acf, Q_statistics, p_value)
#acf is diminishing


#checking the pacf
k = c(1:20)
Pacf = pacf(data$energy_growth, 20)

Pacf$acf
n = length(data$energy_growth)
#creating dataframe for pacf
dataframe_pacf = data.frame(k, pacf = Pacf$acf, Q_statisctics = sqrt(n)*Pacf$acf, normal = 1.96)
dataframe_pacf

#### AR(1)

###################################################################



#singapore

data = read.csv('singapore_final.csv')

#checking the acf

Acf = acf(data$energy_growth, 19)
Acf$acf

#box jeinkin procedure
k = c(1:20)
Q_statistics = c()
p_value = c()
for (i in 1:length(k))
{
  b = Box.test(data$energy_growth, lag = i, type = "Ljung")
  #x_squared = b$
  Q_statistics[i] = b$statistic
  p_value[i] = b$p.value
}

Q_statistics
p_value

#Creating a dataframe

dataframe_acf = data.frame(k,acf = Acf$acf, Q_statistics, p_value)
dataframe_acf
# White noise

