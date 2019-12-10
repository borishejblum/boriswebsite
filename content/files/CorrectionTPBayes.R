---
title: "CorrectionTPbayes"
output: 
  html_document:
    code_folding: show
    toc: yes
    toc_float: yes
    number_sections: false
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Exercice 1

## Question 1)

```{r}
ech_50 <- rnorm(n = 50, mean = 2, sd = 3)
mean(ech_50)

ech_20000 <- rnorm(n = 20000, mean = 2, sd = 3)
mean(ech_20000)

# Estimateurs de Monte Carlo
nMC <- 100
sdMC <- numeric(nMC)
mMC <- numeric(nMC)
for (i in 1:nMC){
  ech <- rnorm(n = 50, mean = 2, sd = 3)
  sdMC[i] <- sd(ech)
  mMC[i] <- mean(ech)
}
mean(sdMC)
mean(mMC)
```

La précision de l'estimation par Monte-Carlo s'améliore au fur et à mesure que la taille d'échantillon augment : on illustre ici la Loi des Grands Nombres.

## Question 2)
### question 2a)
```{r}
roulette_coord <- function(ncases = 35){
  x <- sample(x = 0:ncases, size = 1)
  y <- sample(x = 0:ncases, size = 1)
  return(c(x,y))
}
roulette_coord()
```

### question 2b)

```{r}
inside_disk <- function(p, ncases = 35){
  d <- sqrt((p[1] - ncases/2)^2 + (p[2] - ncases/2)^2)
  return(d <= ncases/2)
}
monpoint <- roulette_coord()
monpoint
inside_disk(monpoint)
```

### question 2c)

```{r}
piMC <- function(in_circle){
  return(mean(4*in_circle))
}
```
### question 2d)
```{r}
# Taille de la grille (résolution)
ncases <- 35

# Taille de l'échantillon de Monte Carlo
npoints <- 200

# Génération des points
pp <- matrix(NA, ncol = 2, nrow = npoints)
for (i in 1:nrow(pp)) {
    pp[i, ] <- roulette_coord(ncases)
}

# Estimateur de Monte-Carlo de Pi
in_disk <- apply(X = pp, MARGIN = 1, FUN = inside_disk, ncases = ncases)
piMC(in_disk)

# Dessin on commence par initialiser un plot vide, de la bonne taille avec
# l'argument `type = 'n'`
plot(x = pp[, 1], y = pp[, 2], xlim = c(0, ncases), ylim = c(0, ncases), axes = 0, 
    xlab = "x", ylab = "y", type = "n")
## on gradue les axes x puis y de 0 à ncases
axis(1, at = c(0:ncases))
axis(2, at = c(0:ncases))
## on ajoute un carré encadrant le dessin
box()
## on trace (en pointillés grâce à l'argument `lty = 3`) la grille sur laquelle
## sont échantillonnés nos points
for (i in 0:ncases) {
    abline(h = i, lty = 3)
    abline(v = i, lty = 3)
}
## on ajoute les points échantillonés
lines(x = pp[, 1], y = pp[, 2], xlim = c(0, ncases), ylim = c(0, ncases), xlab = "x", 
    ylab = "y", type = "p", pch = 16)
## on ajoute la représentation du cercle
x.cercle <- seq(0, ncases, by = 0.1)
y.cercle <- sqrt((ncases/2)^2 - (x.cercle - ncases/2)^2)
lines(x.cercle, y = y.cercle + ncases/2, col = "red")
lines(x.cercle, y = -y.cercle + ncases/2, col = "red")
## enfin on colorie en rouge les points échantillonnés à l'intérieur du cercle
lines(x = pp[in_disk, 1], y = pp[in_disk, 2], xlim = c(0, ncases), ylim = c(0, ncases), 
    xlab = "x", ylab = "y", type = "p", pch = 16, col = "red", cex = 0.7)
```


# Exercice 2

```{r}
generer_exp <- function(n, lambda){
  u <- runif(n=n)
  e <- -1/lambda*log(1-u)
  return(e)
}
nech <- 1000
monech <- generer_exp(n = nech, lambda = 10)
rech <- rexp(n = nech, rate = 10)
plot(density(monech), main="", ylab="Densité de probabilité")
lines(density(rech), col="red", lty=2)
legend("topright", c("Fonction inverse", "R rexp"), title="Méthode", lty =c(1,2), col=c("black", "red"))
```

# Exercice 3

## question 1
```{r}
post_num_hist <- function(theta, log = FALSE){
   n <- 493472
   S <- 241945
   
   res <- S*log(theta) + (n-S)*log(1-theta)
   if(!log){
     res <- exp(res)
   }
   
   return(res)
}
```

## question 2

```{r}
mon_premier_MH <- function(niter, post_num){
  x_save <- numeric(length = niter)
  alpha <- numeric(length = niter)
  
  #initialisation
  x <- runif(n=1, min = 0, max = 1)
  
  #échantillonnage
  for (t in 1:niter){
    #proposer une valeur à partir de la loi instrumentale (a priori uniforme)
    y <- runif(n = 1, min = 0, max = 1)
    
    #calculer la probabilité d'acceptation-rejet
    alpha[t] <- min(1, exp(post_num(y, log=TRUE) - post_num(x, log=TRUE)))
    
    #étape d'acceptation-rejet
    u <- runif(1)
    if(u <= alpha[t]){
      x_save[t] <- y
    }else{
      x_save[t] <- x
    }
    
    #mise-à-jour de la valeur courante
    x <- x_save[t]
  }
  return(list("theta" = x_save, "alpha" = alpha))
}
```

## question 3

```{r}
sampleMH <- mon_premier_MH(niter = 2000, 
                           post_num = post_num_hist)
plot(sampleMH$theta, type = "l")
plot(density(sampleMH$theta[-c(1:500)]), col="red", xlim=c(0.48,0.52))
curve(dbeta(x, 241945+1, 251527+1), 
      from = 0, to =1, n=10000, 
      add=TRUE)
plot(sampleMH$alpha, type = "h", col="green")
```

## question 4

```{r}
post_num_beta <- function(theta, a=3, b=3, log=TRUE){
  n <- 100 #493472
  S <- 49 #241945
  
  res <- (a+S-1)*log(theta) + (b+n-S-1)*log(1-theta)
  if(!log){
    res <- exp(res)
  }
  
  return(res)
}

monMH_betaprior <- function(niter, post_num){
  x_save <- numeric(length = niter)
  alpha <- numeric(length = niter)
  
  #initialisation
  x <- runif(n=1, min = 0, max = 1)
  
  #échantillonnage
  for (t in 1:niter){
    #proposer une valeur à partir de la loi instrumentale (a priori beta(3,3))
    y <- rbeta(n = 1, shape1 = 3, shape2 = 3)
    
    #calculer la probabilité d'acceptation-rejet
    alpha[t] <- min(1, exp(post_num(y, log=TRUE) - 
                             post_num(x, log=TRUE) + 
                             dbeta(x, shape1=3, shape2=3, log=TRUE) - 
                             dbeta(y, shape1=3, shape2=3, log=TRUE)))
    
    #étape d'acceptation-rejet
    u <- runif(1)
    if(u <= alpha[t]){
      x_save[t] <- y
    }else{
      x_save[t] <- x
    }
    
    #mise-à-jour de la valeur courante
    x <- x_save[t]
  }
  return(list("theta" = x_save, "alpha" = alpha))
}

sampleMH_beta100 <- monMH_betaprior(niter=10000,
                                    post_num = post_num_beta)
plot(sampleMH_beta100$theta, type="l")
plot(sampleMH_beta100$alpha, type="h", col="green")
plot(density(sampleMH_beta100$theta), col="red")
curve(dbeta(x, 49+3-1, 51+3-1), 
      from = 0, to =1, n=10000, 
      add=TRUE)
```

## question 5

‹
```{r}
post_num_beta_hist <- function(theta, a=3, b=3, log=TRUE){
  n <- 493472
  S <- 241945
  
  res <- (a+S-1)*log(theta) + (b+n-S-1)*log(1-theta)
  if(!log){
    res <- exp(res)
  }
  
  return(res)
}

monMH_beta_prior_marchealea <- function(niter, post_num){
  x_save <- numeric(length = niter)
  alpha <- numeric(length = niter)
  
  #initialisation
  x <- runif(n=1, min = 0, max = 1)
  
  #échantillonnage
  for (t in 1:niter){
    #proposer une valeur à partir de la loi instrumentale (a priori beta(3,3))
    y <- x + rnorm(n=1, m=0, sd=0.02)#runif(1, min=-0.01, max=0.01)
    
    #calculer la probabilité d'acceptation-rejet
    alpha[t] <- min(1, exp(post_num(y, log=TRUE) - 
                             post_num(x, log=TRUE)))
    
    #étape d'acceptation-rejet
    u <- runif(1)
    if(u <= alpha[t]){
      x_save[t] <- y
    }else{
      x_save[t] <- x
    }
    
    #mise-à-jour de la valeur courante
    x <- x_save[t]
  }
  return(list("theta" = x_save, "alpha" = alpha))
}

sampleMH_marchealea <- monMH_beta_prior_marchealea(niter=100000, post_num = post_num_beta_hist)
plot(sampleMH_marchealea$theta[-c(1:500)], type="l")
plot(sampleMH_marchealea$alpha, type="h", col="green")
plot(density(sampleMH_marchealea$theta[-c(1:500)]), col="red")
curve(dbeta(x, 241945+1, 251527+1), 
      from = 0, to =1, n=10000, 
      add=TRUE)
```
