# A function that will tell us how high the gummy bear is above the ground
# at some number of seconds after launch.
# Accel. due to [Earth] gravity: -980.665 cm/sec^2
## Initial Velocity 350 cm/sec
##Initial Height: 200 cm

getheight <- function(time, intVel, intHeight, grav = -980.665){
  result <- 0.5*grav*time^2 + intVel*time + intHeight
  return(result)
}

times <- seq(from = 0, to = 2, by = 0.1)
plot(
    x = times,
    y = getheight(time = times, intVel = 250, intHeight = 200),
    type = "l"
)
