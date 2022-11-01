# RSS Pandoc
A part of the script I use for my [personal website](https://2006.digital) that pushes new articles to the web server using Git.\
I finally got myself to create a working RSS feed, as I've had a website for some time now, but was too lazy to actually do RSS. I would not bother manually editing the RSS feed every time I wrote an article, so making a script was the only option. The only reason I did not do it sooner was ~~my laziness~~ that I thought it would be too hard to implement. Turns out it wasn't.
\
_This is not a complete unit working on its own_, rather it is a part of a bigger script. If you have at least some Bash scripting knowledge, you will be able to understand this code pretty well and integrate it into your own project. Good luck, God help you.

## How it works
The script contains the variable `$1`, meaning that it takes input when it is run, such as `./push.sh test-article.md`. That is how I structure my scripts.\
`pandoc`, `coreutils` and `sed` are pretty much the only dependencies.\
Don't worry about the `rss-template.html` file being HTML, it's just for Pandoc.
\
When running the script for the first time, make sure to have a `rss.xml` file already created and filled out with the `<rss>` and `<channel>` information, like in the attached file.
