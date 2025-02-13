% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reporting.R
\name{render_report}
\alias{render_report}
\title{Render a Markdown Report from Rmd or Qmd Files}
\usage{
render_report(script_path)
}
\arguments{
\item{script_path}{The full path of the script to render}
}
\value{
A list containing details about the operation's outcome:

 If rendering is successful, the list includes:
   \itemize{
     \item `success`: TRUE
     \item `report_name`: The name of the report file.
     \item `filepath`: The full path to the report.
 }
  If rendering fails, the list includes:
  \itemize{
    \item `success`: FALSE
     \item `logfile`: The full path to the log file.
     \item `error`: Error message returned from quarto_render.
 }
}
\description{
This function renders a report from a R Markdown (.Rmd) or Quarto Markdown (.Qmd) script.
It is designed to be invoked from `render_report.R`. The rendered report is saved in either PDF or HTML format with a
timestamp appended to the filename.
}
\examples{
\dontrun{
script_path <- here::here("report", "quarto_html_example.qmd")
render_results <- render_report(script_path)
}


}
