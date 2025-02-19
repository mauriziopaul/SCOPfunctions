% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R, R/plot_results.R
\name{plot_vlnGrid}
\alias{plot_vlnGrid}
\title{Make grid of violin plots}
\usage{
plot_vlnGrid(
  seurat_obj,
  assay,
  slot,
  var_group,
  vec_features,
  vec_group_colors = NULL,
  f_color = colorRampPalette(brewer.pal(n = 11, name = "RdYlBu")),
  flip = T,
  do_plot = F,
  pt.size = 0,
  feature_fontface = "bold.italic",
  fontsize_axistext_x = 12,
  fontsize_axistext_y = 12,
  aspect.ratio = NULL
)

plot_vlnGrid(
  seurat_obj,
  assay,
  slot,
  var_group,
  vec_features,
  vec_group_colors = NULL,
  f_color = colorRampPalette(brewer.pal(n = 11, name = "RdYlBu")),
  flip = T,
  do_plot = F,
  pt.size = 0,
  feature_fontface = "bold.italic",
  fontsize_axistext_x = 12,
  fontsize_axistext_y = 12,
  aspect.ratio = NULL
)
}
\arguments{
\item{seurat_obj}{Seurat object (Seurat ^3.0)}

\item{assay}{seurat_obj assay to use}

\item{slot}{seurat_obj slot to use}

\item{var_group}{the group variable, character}

\item{vec_features}{a vector of features to plot in the violin plot}

\item{vec_group_colors}{a vector of colors, named by corresponding group. Length must match number of groups. Character}

\item{f_color}{if vec_group_colors is not provided, the user may instead provide a function f_color() that takes as its only argument the number of colors to generate}

\item{flip}{if TRUE (default), groups are rows and features are columns, and vice-verso for FALSE}

\item{do_plot}{Whether to plot, logical}

\item{pt.size}{size of jitter in the violin plots. Set to 0 (default) to omit}

\item{feature_fontface}{the fontface}

\item{fontsize_axistext_x}{passed to ggplot2}

\item{fontsize_axistext_y}{passed to ggplot2}
}
\value{
ggplot2 object

ggplot2 object
}
\description{
produce a n_cluster * n_feature grid of violin plots

produce a n_cluster * n_feature grid of violin plots
}
\examples{
##p <- plot_vlnGrid(seurat_obj=seu, assay="RNA", slot="data", var_group="cluster", vec_features=head(VariableFeatures(seu)))
}
