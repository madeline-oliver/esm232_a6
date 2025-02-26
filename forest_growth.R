#'  Model of forest growth, where forest size is measured in units of carbon, C
#' @param time  period of growth
#' @param C initial carbon
#' @param parms$K - carrying capacity
#' @param parms$thresh - threshold canopy closure
#' #' @param parms$r - base growth rate
#' #' @param parms$g - linear growth rate
#' @parms parms$K - carrying capacity
#' @return growth rate of forest 
#'
forest_growth = function(time, C, parms) {
  
  # compute rate of change of carbon
  forest = parms$r*C
  
  # forest growth is 0 if C is greater than or equal to carrying capacity
  if(parms$K <= C ) {
    
    forest = 0
  
  # forest growth is linear when carbon is greater than or equal to threshold canopy closure
  } else if(parms$thresh <= C){
    
    forest = parms$g
    
  } else {
    
    forest = forest
  }
  

  return(list(forest))
}