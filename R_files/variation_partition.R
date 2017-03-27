# Example of using vegan to do variation partitioning
library(vegan)

data(mite)
data(mite.env)
data(mite.pcnm)

# Two explanatory matrices -- Hellinger-transform Y
# Formula shortcut "~ ." means: use all variables in 'data'.

mod <- varpart(mite, ~ ., mite.pcnm, 
               data=mite.env, 
               transfo="hel" )
            
mod

plot(mod)
showvarparts(2, bg = c("hotpink","skyblue"), Xnames=c('E', 'S'))

plot(mod, bg = c("hotpink","skyblue"),Xnames=c('E', 'S'))

# Alternative way of to conduct this partitioning
# Change the data frame with factors into numeric model matrix
mm <- model.matrix(~ SubsDens + WatrCont + Substrate + Shrub + Topo, mite.env)[,-1]
# `[, -1]` removes intercept 

mod <- varpart(decostand(mite, "hel"), mm, mite.pcnm)
# Test fraction [a] using RDA:
rda.result <- rda(decostand(mite, "hell"), mm, mite.pcnm)
anova(rda.result, step=200, perm.max=200)

rda.result <- rda(decostand(mite, "hell"), data=mite.env, mite.pcnm)
anova(rda.result, step=200, perm.max=200)

## 3 variables
mod <- varpart(mite, ~ SubsDens + WatrCont, ~ Substrate + Shrub + Topo,
               mite.pcnm, data=mite.env, transfo="hel")
mod
showvarparts(3, bg=2:4)
plot(mod, bg=2:4)

  