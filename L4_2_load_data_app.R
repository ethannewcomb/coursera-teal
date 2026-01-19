library(shiny)
library(teal)
library(teal.data)
library(teal.modules.general)
library(pharmaverseadam)

app <- teal::init(
  data = cdisc_data(
    ADSL = rADSL,
    ADAE = rADAE,
    ADTTE = rADTTE
  ),
  modules = teal::modules(
    tm_data_table(),
    tm_variable_browser()
  )
)

shinyApp(app$ui, app$server)
