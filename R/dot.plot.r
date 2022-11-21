#' A function used in the class Statistics for Laboratory Scientists (140.615/616).
#'
#' This function generates the two group comparison dot plot used in class.

#' @param x Measurements for the first group.
#' @param y Measurements for the second group.

#' @returns The two-group comparison dotplot.

#' @keywords Dotplots, means, confidence intervals.

#' @examples
#' x <- c(102.5,106.6,99.8,106.5,103.7,105.5,98.2,104.1,85.6,105.5,114.0,112.2)
#' y <- c(93.7,90.9,100.4,92.0,100.2,104.6,95.4,96.6,99.2)
#' dot.plot(x,y)

#' @export

dot.plot <- function(x,y,includeCI=TRUE,labels=c("A","B"),xlim)
{
  # re-arrange data
  X <- c(x,y)
  Y <- rep(1:0,c(length(x),length(y)))

  # jitter Y positions
  Y <- Y + runif(length(Y),-0.1,0.1)
 
  # make sure x-limits allow plot of CI's, if requested
  # if CI's will be plotted, 
  if(includeCI) {
    xci <- t.test(x)$conf.int
    yci <- t.test(y)$conf.int
    xlimits <- range(c(x,y,xci,yci))
  }
  else xlimits <- range(c(x,y))

  if(!missing(xlim)) xlimits <- xlim

  # make plot
  plot(X,Y,ylim=c(-0.5,1.5),yaxt="n",lwd=2,xlab="",ylab="",
       xlim=xlimits)
  abline(h=0:1,lty=2,col="gray")
  points(X,Y,lwd=2)

  # add Y-axis labels
  u <- par("usr")
  segments(u[1],0:1,u[1]-diff(u[1:2])*0.03,0:1,xpd=TRUE)
  text(u[1]-diff(u[1:2])*0.08,1:0,labels,xpd=TRUE,cex=1.3)

  # add confidence intervals, if requested
  if(includeCI) {
    segments(xci[1],1.2,xci[2],1.2,lwd=2,col="blue")
    segments(xci,1.18,xci,1.22,lwd=2,col="blue")
    segments(mean(x),1.15,mean(x),1.25,lwd=2,col="blue")

    segments(yci[1],0.2,yci[2],0.2,lwd=2,col="red")
    segments(yci,0.18,yci,0.22,lwd=2,col="red")
    segments(mean(y),0.15,mean(y),0.25,lwd=2,col="red")
  }
}

