---
layout: post
title: Blogging with Github and Jekyll
categories: [general]
tags: [github, jekyll, blogging]
description: A blog template using Github pages and jekyll
comments: true
---



## So You Want To Blog ##


---------

### Github Pages ###
- Free hosting of your static sites directly from your repository

### Jekyll ###
It takes a template directory containing raw text files in various formats, runs it through a [Markdown](https://help.github.com/articles/markdown-basics/) converter and [Liquid template renderer](http://liquidmarkup.org/). Then spits out a complete, ready-to-publish static website suitable for serving with your favorite web server. 

- Simple to use
    - No Database
    - Focus on content
- Static Templates
    - Markdown
    - Html/CSS
 
---------
 
# Installation Setup # 
Log into GitHub and create a new repository named `username.github.io`, where username is your username (or organization name) on GitHub.
Clone your repo in your workspace.

```
cd workspace
git clone git@github.com:{username}/{username}.github.io
cd {username}.github.io
```

Clone Starter Blog Template into a separate directory and then manually move contents into your `{username}.github.io` directory

```
git clone https://github.com/kave/blog-starter-template
```

cd into `{username}.github.io` directory and build & run server

```
./install.sh
./runserver.sh
```

Visit Your Blog Page

```
http://127.0.0.1:4000/
```

Push to Github

```
git add .
git cm "My initial blog commit"
git push origin master
```

Visit url `http://{username}.github.io`

----------
