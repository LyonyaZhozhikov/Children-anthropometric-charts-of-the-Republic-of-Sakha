dataSFsa  = read.csv('Возрастная динамика длины (см) тела (роста) девочек саха.csv')

#	create dataframe for F with numeric
mydataF = dataSFsa

cols = c(1:ncol(mydataF))
mydataF[,cols] = apply(mydataF[,cols], 2, function(x) as.numeric(as.character(x)))

attach(mydataF)
par(mgp = c(3, 1, 0))
plot(lowess(Agemos, P5, f=.01), type="l", ylim=c(46, 103), xlim=c(0, 36), lty=1, lwd=1, col = "red", axes=F, xlab = "", ylab = "")
title(main="", ylab="Length (cm)", xlab="Age (years)")


# y axis left
axis(side=2, at=seq(46, 103, 1), labels=FALSE, col.ticks="black")
axis(side=2, at=seq(46, 103, 5), labels=seq(46, 103, 5), lwd.ticks=2)

# y axis right
axis(side=4, at=seq(46, 103, 1), labels=FALSE, col.ticks="black")
axis(side=4, at=seq(46, 103, 5), labels=seq(46, 103, 5), lwd.ticks=2)

# x axis down
axis(side=1, at=seq(0, 36, 1), labels=FALSE, col.ticks="black")
axis(side=1, at=seq(0, 36, 12), labels=seq(0, 3, 1), lwd.ticks=2)

lines(lowess(Agemos, P5, f=.01), lty=1, lwd=1, col = "red")


lines(lowess(Agemos, P50, f=.01), lty=1, lwd=1, col = "red")

lines(lowess(Agemos, P95, f=.01), lty=1, lwd=1, col = "red")

text(max(Agemos)+0.5, max(P5),  "5th",  adj=0.3, cex=.55)
text(max(Agemos)+0.5, max(P50), "50th", adj=0.3, cex=.55)
text(max(Agemos)+0.5, max(P95), "95th", adj=0.3, cex=.55)
