#' A function used in the class Statistics for Laboratory Scientists (140.615/616).
#'
#' This function plots the results from the Newman Keuls procedure for a one-way ANOVA.

#' @param response A numeric outcome.
#' @param group A factor specifying the treatment assignment.
#' @param alpha The significance level.

#' @keywords Multiple comparisons.

#' @examples
#' summary(sugar)
#' newman.keuls(sugar$rsp, sugar$trt)

#' @export
newman.keuls = function(response, group, alpha=0.05)
{
  na <- as.character(unique(group))
  if(length(grep("\\|", na)))
    stop("the treatment names cannot use the | symbol.")

  # calculate anova table
  anova.out <- anova(aov(response~group))

  # within-group mean square
  ms <- anova.out[2,3]

  # number of individuals per group 
  n <- tapply(response, group, length)

  # group means
  me <- tapply(response,group,mean)

  # sort me and reorder n in the same way
  o <- order(me)
  me <- me[o]
  n <- n[o]

  # se's: different for each pair if the sample sizes are different
  se <- sqrt(ms * outer(n,n, function(a,b) 1/a + 1/b))

  # multipiers from Tukey ("studentized range") distribution
  k <- length(n)
  df <- anova.out[2,1]  # degrees of freedom 
  qmult <- qtukey(1-alpha, 2:k, df)
  # turn into a matrix
  temp <- matrix(ncol=k, nrow=k)
  for(i in 1:length(qmult))
    temp[row(temp) == col(temp)+i | row(temp)+i == col(temp)] <- qmult[i]
  qmult <- temp

  # critical values
  R <- qmult * se / sqrt(2)

  # calculate the pairwise differences between the sample means
  diffs <- outer(me,me,"-")

  # determine which differences are above the corresponding critical values
  compare <- abs(diffs) > R

  # now we figure out which line segments to include
  results <- NULL
  for(i in (k-1):1) {
    wh <- compare[row(compare) == col(compare)+i]
    if(any(!wh)) {
      wh <- (1:length(wh))[!wh]
      cur <- rep("",length(wh))
      for(j in seq(along=wh)) 
        cur[j] <- paste(rownames(compare)[wh[j] + 0:i],collapse="|")
      flag <- rep(0,length(cur))
      if(length(results)>0) {
        for(j in seq(along=wh)) {
          nc <- nchar(cur[j])
          temp1 <- paste(cur[j],"|",sep="")
          temp2 <- paste("|", cur[j],sep="")
          for(k in 1:length(results)) {
            for(s in 1:(nchar(results[k])-nc)) {
              XX <- substr(results[k],s,s+nc)
              if(XX==temp1 || XX==temp2) {
                flag[j] <- 1
              }
            }
          }
        }
        if(any(flag==1)) cur <- cur[flag == 0]
      }
      results <- c(results,cur)
    }
  }
#  class(results) <- "newmankeuls"
#  attr(results,"means") <- me
#  results

  x <- results

  par(mar=c(0.1,0.1,0.1,0.1))
  plot(0,0,type="n", bty="n",yaxt="n", xaxt="n", xlim=c(0,100),
       ylim=c(0,100), xlab="", ylab="")

  
#  me <- attr(x,"means")
  me2 <- as.character(me)
  k <- length(me)
  na <- names(me)


  # fix number of digits in me2
  temp <- strsplit(me2, "\\.")
  len <- sapply(temp,length)
  if(any(len>1)) {
    npast <- sapply(temp,function(a)
                    if(length(a)<2) return(0) else return(nchar(a[2])))
    if(length(unique(npast)) > 1) {
      mx <- max(npast)
      for(i in 1:length(me2)) {
        if(npast[i] == 0) me2[i] <- paste(me2[i], ".", sep="")
        if(npast[i] < mx)
          me2[i] <- paste(me2[i], rep("0",mx-npast[i]), sep="")
      }
    }
  }
  
  # plot means and group names
  X <- seq(0,100,length=k*2+1)[seq(2,k*2,by=2)]
  text(X,80,na,cex=1.3)
  text(X,70,me2, cex=1.3)

  midpts <- (c(0,X)+c(X,100))/2

  temp <- strsplit(x,"\\|")
  temp <- lapply(temp,function(a) a[c(1,length(a))])

  cur <- 60
  for(i in seq(along=temp)) {
    wh <- match(temp[[i]],na)
    segments(midpts[wh[1]],cur,midpts[wh[2]+1],cur,lwd=2)
    cur <- cur - 5
  }

  par(mar=c(5,4,4,2)+0.1)

}

  

if(0){

print.newmankeuls = function(x, ...)
{
  print(as.character(x))
}

plot.newmankeuls = function(x, ...)   {
 
  par(mar=c(0.1,0.1,0.1,0.1))
  plot(0,0,type="n", bty="n",yaxt="n", xaxt="n", xlim=c(0,100),
       ylim=c(0,100), xlab="", ylab="")

  me <- attr(x,"means")
  me2 <- as.character(me)
  k <- length(me)
  na <- names(me)


  # fix number of digits in me2
  temp <- strsplit(me2, "\\.")
  len <- sapply(temp,length)
  if(any(len>1)) {
    npast <- sapply(temp,function(a)
                    if(length(a)<2) return(0) else return(nchar(a[2])))
    if(length(unique(npast)) > 1) {
      mx <- max(npast)
      for(i in 1:length(me2)) {
        if(npast[i] == 0) me2[i] <- paste(me2[i], ".", sep="")
        if(npast[i] < mx)
          me2[i] <- paste(me2[i], rep("0",mx-npast[i]), sep="")
      }
    }
  }

  # plot means and group names
  X <- seq(0,100,length=k*2+1)[seq(2,k*2,by=2)]
  text(X,80,na,cex=1.3)
  text(X,70,me2, cex=1.3)

  midpts <- (c(0,X)+c(X,100))/2

  temp <- strsplit(x,"\\|")
  temp <- lapply(temp,function(a) a[c(1,length(a))])

  cur <- 60
  for(i in seq(along=temp)) {
    wh <- match(temp[[i]],na)
    segments(midpts[wh[1]],cur,midpts[wh[2]+1],cur,lwd=2)
    cur <- cur - 5
  }

  par(mar=c(5,4,4,2)+0.1)

  
}

}



