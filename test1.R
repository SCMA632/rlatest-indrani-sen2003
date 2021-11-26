
df=read.csv("d:/csv-ml/boston_dataset.csv")

head(df)

str(df)

summary(df)

library(psych)
describe(df)


library(dplyr)


df %>%
group_by(zn)%>%
  summarise(sum(medv))

model1=lm(medv~.,data=df)

summary(model1)

s=sample(nrow(df),.7*nrow(df))

df_tr=df[s,]
df_test=df[-s,]

model2=lm(medv~.,data=df_tr)

p=predict(model2,df_test)

model2$coefficients

summary(model2)$r.squared
