# install.packages("shinylive")
# install.packages("httpuv")

# Copy "Hello World" from `{shiny}`
system.file("examples", "01_hello", package="shiny") |>
  fs::dir_copy("myapp", overwrite = TRUE)

shinylive::export("myapp", "docs")

httpuv::runStaticServer("docs/")
