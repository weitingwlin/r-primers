# examples of linear model

## linear regression
production <- read.table("http://www.stat.tamu.edu/~sheather/book/docs/datasets/production.txt", 
                         header=T,
                         sep="")
attach(production)
plot(RunTime ~ RunSize)  # plot( y ~ x) equal to plot( x, y )

production.lm <- lm(RunTime ~ RunSize , 
                    data=production)

summary(production.lm)

## prediction, residual
data.frame(production, 
           fitted.value= fitted(production.lm), 
           residual=resid(production.lm))
## anova
anova(production.lm)

## prediction and CI
pred_production <- predict(production.lm , interval="confidence")