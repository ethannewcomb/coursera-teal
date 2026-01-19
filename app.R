library(teal)
library(teal.data)
library(teal.modules.general)

app <- teal::init(
  data = teal_data(
    IRIS = iris,
    MTCARS = mtcars
  ),
  modules = example_module(),
  header = "My first teal app",
  footer = "This is a test."
)

shinyApp(app$ui, app$server)
