#' @title show_result_for_turkey
#' @description A function that visualizes parliament with respect to election results across Turkey
#' @return A visual that shows the parliament for the given election result
#' @examples
#' \donttest{
#' show_parliament()
#'}
#' @export
#'


show_parliament<-function(x){
  if(grepl("genel",deparse(substitute(x)))){
    library(ggparliament)
    library(ggplot2)
    df <- x |>
      select(Parti,Sandalye)|>mutate(Sandalye = as.integer(Sandalye))
    tr_horseshoe <- parliament_data(election_data = df,
                                    party_seats =df$Sandalye,
                                    parl_rows = 5,
                                    type = "horseshoe")
    tr <- ggplot(tr_horseshoe, aes(x, y, colour = Parti)) +
      geom_parliament_seats() +
      theme_ggparliament() +
      labs(colour = NULL,
           title = paste(deparse(substitute(x)),"_meclis")) +
      theme(legend.position = 'bottom')

    tr
  }else{
    print("The data is not appropriate for the parliament.")
  }
}
