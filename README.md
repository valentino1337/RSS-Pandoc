# RSS Pandoc
A part of my script that pushes new articles to [my website](https://2006.digital) using Git.\
I finally decided to create a working CSS feed, as I've had a website for some time now. I would not bother manually editing the RSS feed, so I integrated this new function into my existing script I use when writing articles.\
\
_This is not a complete unit working on its own_, rather it is a part of a bigger script. If you have at least some Bash scripting knowledge, you can understand the code of this pretty well and integrate it into your own project. Good luck.

## How it works
The script contains `$1`, meaning that it takes input when run, such as `./push.sh test-article.md`. That is how I structure my scripts.\
`pandoc`, `coreutils` and `sed` are pretty much the only dependencies.\
Don't worry about the `rss-template.html` file being HTML, it's just for Pandoc.
\
When running the script for the first time, make sure to have a `rss.xml` file already created and filled out with the `<rss>` and `<channel>` information, like in the attached file.
