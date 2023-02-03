data = read.csv('girls_indigenous_mass_age 0-17.csv')

#	create dataframe for F with numeric
cols = c(1:ncol(data))
data[,cols] = apply(data[,cols], 2, function(x) as.numeric(as.character(x)))

attach(data)
par(mgp = c(3, 1, 0))
plot(lowess(Agemos, P5, f=.01), type="l", ylim=c(0, 75), xlim=c(0, 204), lty=1, lwd=0, col = "red", axes=F, xlab = "", ylab = "")
title(main="Indigenous girls mass age 0-17", ylab="BMI (kg/m2)", xlab="Age (years)")

# y axis left
axis(side=2, at=seq(0, 75, 1), labels=FALSE, col.ticks="black")
axis(side=2, at=seq(0, 75, 1), labels=seq(0, 75, 1), lwd.ticks=2)

# y axis right
axis(side=4, at=seq(0, 75, 1), labels=FALSE, col.ticks="black")
axis(side=4, at=seq(0, 75, 1), labels=seq(0, 75, 1), lwd.ticks=2)

# x axis down
axis(side=1, at=seq(0, 204, 6), labels=FALSE, col.ticks="black")
axis(side=1, at=seq(0, 204, 12), labels=seq(0, 17, 1), lwd.ticks=2)

lines(lowess(Agemos, P3, f=.01), lty=1, lwd=1, col = "red")
lines(lowess(Agemos, P5, f=.01), lty=1, lwd=1, col = "red")
lines(lowess(Agemos, P10, f=.01), lty=1, lwd=1, col = "red")
lines(lowess(Agemos, P25, f=.01), lty=1, lwd=1, col = "red")
lines(lowess(Agemos, P50, f=.01), lty=1, lwd=1, col = "red")
lines(lowess(Agemos, P75, f=.01), lty=1, lwd=1, col = "red")
lines(lowess(Agemos, P90, f=.01), lty=1, lwd=1, col = "red")
lines(lowess(Agemos, P95, f=.01), lty=1, lwd=1, col = "red")
lines(lowess(Agemos, P97, f=.01), lty=1, lwd=1, col = "red")

text(max(Agemos)+3, max(P3),  "3rd",  adj=0.3, cex=.55)
text(max(Agemos)+3, max(P5), "5th", adj=0.3, cex=.55)
text(max(Agemos)+3, max(P10), "10th", adj=0.3, cex=.55)
text(max(Agemos)+3, max(P25), "25th", adj=0.3, cex=.55)
text(max(Agemos)+3, max(P50), "50th", adj=0.3, cex=.55)
text(max(Agemos)+3, max(P75), "75th", adj=0.3, cex=.55)
text(max(Agemos)+3, max(P90), "90th", adj=0.3, cex=.55)
text(max(Agemos)+3, max(P95), "95th", adj=0.3, cex=.55)
text(max(Agemos)+3, max(P97), "97th", adj=0.3, cex=.55)