
## resources: https://alison.rbind.io/post/2020-12-22-postcards-distill/

install.packages("rmarkdown")
library(rmarkdown)

install.packages("distill")
library(distill)

# need to update R 
install.packages("postcard")
library(postcard)

create_website(dir = ".", title = "My Website", gh_pages = TRUE)

create_postcard(file = "teddy.Rmd")

# make postcard landing page 

## add teddy.Rmd to the site.yml tab 

navbar:
  right:
  - text: "Home"
  href: index.html
  - text: "About"
  href: about.html
  - text: "Teddy-Postcard"
  href: teddy.html

# 1. code to be transfered from index to postcard landing page: "site: distill::distill_website"
# 2. after step-1 delete index file
# 3. rename teddy.Rmd to index.Rmd



