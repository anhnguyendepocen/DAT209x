my.display<-function(x, display = FALSE, type = "", prob = FALSE) {
  if(display) {
    switch (type,
      'hist' = hist(x, freq = !prob),
      'density' = plot(density(x)),
      cat("Please specify type as either hist or density\n")
    )
    # if(type == 'hist') {
    #   hist(x, freq = !prob)
    # } else if (type == 'density') {
    #   plot(density(x))
    # } else  {
    #     cat("Please specify type as either hist or density\n")
    # }
  }
  cat("Summary of input: \n")
  return(summary(x))
}

set.seed(1234)
my.data<-rnorm(200)

my.display(my.data, display = TRUE, type = 'hist', prob = TRUE)
my.display(my.data,display=TRUE,type="density")
my.display(my.data,display=TRUE)
