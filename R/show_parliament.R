#' @title show_result_for_turkey
#' @description A function that visualizes parliament with respect to election results across Turkey
#' @return A visual that shows the parliament for the given election result
#' @import dplyr
#' @importFrom dplyr mutate
#' @importFrom dplyr select
#' @importFrom ggplot2 aes
#' @param x The name of the data frame which is for the general election, so the name should contain genel in its name.
#' @examples
#' \donttest{
#' show_parliament()
#'}
#' @export
#'


show_parliament<-function(x){
  if(grepl("genel",deparse(substitute(x)))){
    df <- x |>
      dplyr::select(Parti,Sandalye)|>dplyr::mutate(Sandalye = as.integer(Sandalye))
    tr_horseshoe <- ggparliament::parliament_data(election_data = df,
                                    party_seats =df$Sandalye,
                                    parl_rows = 5,
                                    type = "horseshoe")
    tr <- ggplot2::ggplot(tr_horseshoe, ggplot2::aes(x, y, colour = Parti)) +
      ggparliament::geom_parliament_seats() +
      ggparliament::theme_ggparliament() +
      ggplot2::labs(colour = NULL,
           title = paste(deparse(substitute(x)),"_meclis")) +
      ggplot2::theme(legend.position = 'bottom')

    tr
  }else{
    message("The data is not appropriate for the parliament.")
  }
}
