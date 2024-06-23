#' @title show_result_for_turkey
#' @description A function that visualizes parliament with respect to election results across Turkey
#' @return A visual that shows the parliament for the given election result
#' @import dplyr
#' @importFrom dplyr mutate
#' @importFrom dplyr select
#' @importFrom ggplot2 aes
#' @importFrom ggpol geom_parliament
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
      dplyr::select(Parti,Sandalye)|>dplyr::mutate(Sandalye = as.integer(Sandalye))|>dplyr::filter(Sandalye>0)|>dplyr::mutate(Renk = colorRamp2::rand_color(n = length(Sandalye>0)))

    tr <-ggplot2::ggplot(df) +
      ggpol::geom_parliament(aes(seats = Sandalye, fill = Parti), color = "black") +
      ggplot2::scale_fill_manual(values =df$Renk, labels = df$Parti) +
      ggplot2::coord_fixed() +
      ggplot2::theme_void() +
      ggplot2::geom_text(aes(x = 0, y = 0.1, label = sum(Sandalye)), fontface = "bold",
                         size = 17)+
      ggplot2::labs(colour = NULL,
                    title = paste(deparse(substitute(x)),"_meclis"))


    tr
  }else{
    message("The data is not appropriate for the parliament.")
  }
}
