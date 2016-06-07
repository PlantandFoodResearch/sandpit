
## Source http://www.cyclismo.org/tutorial/R/intermediatePlotting.html

drawGraph <- function() {
  stdDev <- 0.75
  x      <- seq(-5,5,by=0.01)
  y      <- dnorm(x,sd=stdDev)
  right  <- qnorm(0.95,sd=stdDev)

  plot(x,y,type="l",xaxt="n",ylab="p",
       xlab=expression(paste('Assumed Distribution of ',bar(x))),
       axes=FALSE,ylim=c(0,max(y)*1.05),xlim=c(min(x),max(x)),
       frame.plot=FALSE)
  axis(1,at=c(-5, right,0,5),
       pos = c(0,0),
       labels=c(expression(' '), expression(bar(x)[cr]),expression(mu[0]), expression(' ')))
  axis(2)
  xReject <- seq(right,5,by=0.01)
  yReject <- dnorm(xReject,sd=stdDev)
  polygon(c(xReject,xReject[length(xReject)],xReject[1]),
          c(yReject,0, 0), col='red')
  return(invisible())
}

png("test.png")
drawGraph()
dev.off()

svg("test.svg")
drawGraph()
dev.off()

pdf("test.pdf")
drawGraph()
dev.off()
