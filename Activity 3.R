getvolume <- function(Width, Length, CutoutLength) {
  result <- ((Width - 2*CutoutLength) * (Length - 2*CutoutLength) * CutoutLength)
  return(result)
} #measurements are in inches


CutoutLengths <- seq(from=0, to=8.5/2, by=0.01)
plot(
    x= CutoutLengths,
    y=getvolume(Width = 8.5, Length = 11, CutoutLength = CutoutLengths),
    type="p"
)

getvolumegen <- function(CutoutLength) {
  result <- ((8.5 - 2*CutoutLength) * (11 - 2*CutoutLength) * CutoutLength)
  return(result)
}

