\name{limitplot}
\Rdversion{1.1}
\alias{limitplot}
\title{
Jitter/Box Plot with Ordered Points Below the Limit of Detection
}
\description{
Values below a specified limit of detection are stacked in rows in order to reduce overplotting and create a clear graphical representation of your data.
}
\usage{
limitplot(..., lod, CI = 95, ratio = 1/25, shape = 1, size = 1, col = "black", main = "", xlab = "", ylab = "", names = "", axis = 5, logaxis = 1, stack = 5, jitterwidth = 0.2, jittershape = 1, jittersize = 1, jittercol = "black", log = "", blod = 1/2)
}
\arguments{
  \item{\dots}{
vector(s) containing the data which to perform the limitplot on. This data set can not contain missing data, and vectors can be of varying lengths.
}
  \item{lod}{
a value that indicates the lower limit of detection. Any value within your data set below this value is reassigned a value of \code{blod} * \code{lod}.
}
  \item{CI}{
specifies the confidence interval for the boxplot. This interval is calculated from the altered data set after conversion based on the specified limit of detection.
}
  \item{ratio}{
the ratio of the distance between the stacked points below the limit of detection and the distance between the limit of detection and the largest value in the data set.
}
  \item{shape}{
specifies the shape of the points below the limit of detection.
}
  \item{size}{
specifies the size of the points below the limit of detection.
}
  \item{col}{
specifies the color of the points below the limit of detection.
}
  \item{main}{
an overall title for the plot.
}
  \item{xlab}{
label for the x-axis.
}
  \item{ylab}{
label for the y-axis.
}
  \item{names}{
a vector of names for the groups.
}
  \item{axis}{
See the \code{yaxp} graphical parameter in \link{par}.
}
  \item{logaxis}{
See the \code{yaxp} graphical parameter in \link{par}.
}
  \item{stack}{
an integer indicating the number of points below the limit of detection to be stacked per row.
}
  \item{jitterwidth}{
specifies the width of the jitter points.
}
  \item{jittershape}{
specifies the shape of the jitter points.
}
  \item{jittersize}{
specfies the size of the jitter points.
}
  \item{jittercol}{
specifies the color of the jitter points.
}
  \item{log}{
use \code{log="y"} for a log-axis.
}
  \item{blod}{
a value indicating the fraction of the limit of detection used to calculate the reassigned values for those below the limit of detection. Any value within your data set below the limit of detection is reassigned a value of \code{blod} * \code{lod}. 
}
}
\references{
Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) The New S Language. Wadsworth & Brooks/Cole. 
}
\author{
Omar E. Olmedo
}


\seealso{
\link{plot},\link{points},\link{rect},\link{par}
}
\examples{
## Create a basic limitplot with four different categories from log-normally distributed data and set the limit of detection to 0.35:
conc<-rlnorm(150,0.5,5)
category<-sample(4,150,replace=TRUE)
limitplot(conc[category==1],conc[category==2],conc[category==3],conc[category==4],lod=0.35,log="y")

## Add labels and change the graphical parameters:
limitplot(conc[category==1],conc[category==2],conc[category==3],conc[category==4],lod=0.35,log="y",ylab="Bla g 2 (ug/g)",xlab="Report of Cockroach in homes", names=c("Never","Rarely","Once a week","Everyday"),main="Cockroach prevalence in homes")


}
\keyword{hplot}
\keyword{aplot}
