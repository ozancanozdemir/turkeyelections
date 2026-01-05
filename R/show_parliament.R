#' @title show_result_for_turkey
#' @description A function that visualizes parliament with respect to election results across Turkey
#' @return A visual that shows the parliament for the given election result
#' @import dplyr
#' @importFrom dplyr mutate
#' @importFrom dplyr select
#' @param x The name of the data frame which is for the general election, so the name should contain genel in its name.
#' @examples
#' \donttest{
#' # Data example
#' genel_election_data <- data.frame(
#'   Parti = c("AKP", "CHP", "MHP", "IYI", "HDP"),
#'   Sandalye = c(290, 150, 50, 40, 60),
#'   stringsAsFactors = FALSE
#' )
#' show_parliament(genel_election_data)
#'}
#' @export
#'
show_parliament <- function(x) {

  # 1. INTERNAL FUNCTION DEFINITION: parlDiag (based on ggforce::geom_arc_bar)
  # This function calculates angles and draws the semi-circular segments.
  parlDiag <- function(Parties, shares, cols = NULL, repr = c("absolute", "proportion")) {
    repr <- base::match.arg(repr)
    base::stopifnot(base::length(Parties) == base::length(shares))
    if (repr == "proportion") {
      base::stopifnot(base::sum(shares) == 1)
    }
    if (!base::is.null(cols)) {
      base::names(cols) <- Parties
    }

    # Calculate angles for arc start/end (Cumulative sum from -pi/2 to pi/2)
    cc <- base::cumsum(c(-base::pi/2, base::switch(repr,
                                                   "absolute" = (shares / base::sum(shares)) * base::pi,
                                                   "proportion" = shares * base::pi)))
    cc[base::length(cc)] <- base::pi/2 # Ensure the last segment closes exactly at pi/2

    # Calculate average angles for label positions
    meanAngles <- base::colMeans(base::rbind(cc[2:base::length(cc)], cc[1:base::length(cc)-1]))
    labelX <- base::sin(meanAngles)
    labelY <- base::cos(meanAngles)
    labelY <- base::ifelse(labelY < 0.015, 0.015, labelY) # Adjust Y position to prevent clipping at the bottom

    # --- ggplot2 Drawing ---
    p <- ggplot2::ggplot() + ggplot2::theme_void() + ggplot2::coord_fixed() +
      ggplot2::expand_limits(x = c(-1.3, 1.3), y = c(0, 1.3)) +
      ggplot2::theme(panel.border = ggplot2::element_blank()) +
      ggplot2::theme(legend.position = "none") + # Hide legend as labels are placed on the outside

      # Main drawing: geom_arc_bar (Requires ggforce)
      ggforce::geom_arc_bar(ggplot2::aes(x0 = 0, y0 = 0, r0 = 0.5, r = 1,
                                         start = cc[1:base::length(shares)],
                                         end = c(cc[2:base::length(shares)], base::pi/2), fill = Parties)) +

      # Manual color assignment
      base::switch(base::is.null(cols) + 1, ggplot2::scale_fill_manual(values = cols), NULL) +

      # Label support lines (Outer white path)
      ggplot2::geom_path(ggplot2::aes(x = c(0.9 * labelX, 1.15 * labelX), y = c(0.9 * labelY, 1.15 * labelY),
                                      group = base::rep(1:base::length(shares), 2)), colour = "white", size = 2) +
      # Label support lines (Inner colored path)
      ggplot2::geom_path(ggplot2::aes(x = c(0.9 * labelX, 1.15 * labelX), y = c(0.9 * labelY, 1.15 * labelY),
                                      group = base::rep(1:base::length(shares), 2)), size = 1) +

      # Party and Seat Labels
      ggplot2::geom_label(ggplot2::aes(x = 1.15 * labelX, y = 1.15 * labelY,
                                       label = base::switch(repr,
                                                            "absolute" = base::sprintf("%s\n%i", Parties, shares),
                                                            "proportion" = base::sprintf("%s\n%i%%", Parties, base::round(shares*100)))),
                          fontface = "bold",
                          label.padding = grid::unit(1, "points")) +

      # Label support dots
      ggplot2::geom_point(ggplot2::aes(x = 0.9 * labelX, y = 0.9 * labelY), colour = "white", size = 2) +
      ggplot2::geom_point(ggplot2::aes(x = 0.9 * labelX, y = 0.9 * labelY)) +

      # Center Label for Total Seats
      ggplot2::geom_text(ggplot2::aes(x = 0, y = 0, label = base::switch(repr,
                                                                         "absolute" = (base::sprintf("Total: %i MPs", base::sum(shares))),
                                                                         "proportion" = "")),
                         fontface = "bold", size = 7)

    return(p)
  }

  # -------------------------------------------------------------------------

  # MAIN show_parliament FUNCTION EXECUTION
  # 1. Data Frame Name Check
  if (base::grepl("genel", base::deparse(base::substitute(x)))) {

    # 2. Data Preparation and Color Generation
    # Uses dplyr::select and mutate (imported)
    df <- x |>
      dplyr::select(Parti, Sandalye)|>
      dplyr::mutate(Sandalye = base::as.integer(Sandalye))|>
      dplyr::filter(Sandalye > 0)|>
      dplyr::mutate(Renk = colorRamp2::rand_color(n = base::length(Sandalye))) # colorRamp2::rand_color is used as per original code

    # Remove 'Total' row if it exists (assuming 'Parti' is the column name)
    df <- df |> dplyr::filter(Parti != "Toplam")

    # 3. Visualization using internal parlDiag
    tr <- parlDiag(
      Parties = df$Parti,
      shares = df$Sandalye,
      cols = df$Renk,
      repr = "absolute"
    )

    # Add final title
    tr <- tr + ggplot2::labs(title = base::paste(base::deparse(base::substitute(x)), "_meclis"))

    return(tr)

  } else {
    base::message("The data is not appropriate for the parliament. The data frame name should contain 'genel'.")
  }
}
