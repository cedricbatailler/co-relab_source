# Adapted from https://tclavelle.github.io/blog/blogdown_github/
# Builds webpage in blogdown and publishes to GitHub Pages

# First, two repositories were created on GitHub.com. One for the actual page (follow https://pages.github.com/)
# A second is created to store the raw files/blogdown files because the first repo can only store the "ready-for-web" files.
# or it won't render

# To start, clone both GitHub repos locally: open a terminal, use "cd" to navigate to the directory you want
# to download to (it will make a new subdirectory below your current directory for each repo)
# Then run in the terminal the URL to the repos
# e.g. "git clone https://github.com/co-relab/co-relab_source.git" (source files repo)
# and "git clone https://github.com/co-relab/co-relab.github.io.git" (github pages repo)
# Note: you need git installed on your computer or this won't work (comes with MacOS but not PC)

# Many lines below commented out because they are only run once to download files, which are
# then manually edited. 
#### WARNING: Uncommenting and running from the start will overwrite everything to defaults

# We use an .rproj file so we can skip setwd()

# Load blogdown package and install Hugo
library(blogdown)
#install_hugo()

# At site creation, I ran the below lines to generate the site in Blogdown.
# Running this again would overwrite the site with a new blank site. Left as an example.

# Can use different themes (https://themes.gohugo.io/) by specifying the github repo theme=''
# The URL comes from the end of the theme's GitHub account and repo.
# Here, using the theme https://github.com/gcushen/hugo-academic
# For this step the directory needs to be completely empty (I just temporarily move the existing files out and back in)
#new_site(theme = 'gcushen/hugo-academic', format = 'toml', theme_example = TRUE)

# Trying Elate theme, had to change install call for it to work
#new_site(theme='saey55/hugo-elate-theme')

# Now, there are many files in the directory. As far as I know, these must be edited manually to add/change content.
# The main file for this theme is config.toml
# Images under /public/images

# Here's an example to create a new post, if this is a blog.
# new_post(title = 'hello-world.Rmd', ext = ".Rmd")

# Serve site to generate the webpage.
# Click the button next to the broom in the viewer to open in a browser.
serve_site()

# To deploy to web:
# Below command renders the site into "public" folder (some themes allow you to output elsewhere)
# Public needs copied to the actual github pages repo.
build_site()

# To commit to github pages, open the terminal in Rstudio (should be next to Console)
# Navigate to the local repo you want to commit with "cd"
# Type the three commands:
#git add --all
#git commit -m "Commit message here"
#git push -u origin master
# Note: You may run into authentication issues when pushing changes here. You can either login your computer
# to the co-relab github account, or have your username added as a collaborator (preferable).

# Next, you have to manually copy the files under /public/ into the GitHub Pages repo
# In this case, copy the files from co-relab_source/public to /co-relab.github.io/
# Then, commit that repo as well.