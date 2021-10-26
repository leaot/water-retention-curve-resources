#### Fits the van Genuchten (1980) equation to water retention data

 
### Dataset
h = c(10, 20, 40, 60, 80, 100, 300, 500, 800, 1000, 3000, 5000, 10000, 15000)
theta = c(0.500, 0.490, 0.489,0.480, 0.450, 0.400, 0.350, 0.299, 0.280, 0.250, 0.249, 0.245, 0.240, 0.239)

### Transforms h to log
lh = log(h)

### Plots observed data
plot(theta ~ lh)

### Nonlinear least squares fit 
ajuste = nls(theta ~ qr + (qs-qr)/(1+(alpha*h)^n)^(1-1/n), start=list(qs=0.5, qr=0.2, alpha =.01, n=2))
ajuste

### Displays regression statistics
summary(ajuste)

### Plots predicted line
lines(predict(ajuste)~lh, col = "red")
