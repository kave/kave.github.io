---
layout: post
title: Deploy Python Slackbot to Heroku
categories: [general]
tags: [python, slackbot, heroku, github, jekyll]
description: A tutorial to deploy a python based slackbot to heroku
comments: true
---


## Deploying Python based Slackbot to Heroku ##


---------

### Getting Setup ###
- For this guide i forked a popular python based [slackbot](https://github.com/lins05/slackbot) 
- Added my own custom responses, i'll skip this section as lins README is self explanatory
- So now your ready to deploy your bot so its a standable entity, heroku is perfect for this because deployment is easy & its free.99


### Procfile ###
A [`Procfile`](https://devcenter.heroku.com/articles/procfile) contains a number of process type declarations, each on a new line. Each process type is a declaration of a command that is executed when a dyno of that process type is started.

Create a Procfile:
{% highlight python %}
web: python run.py
{% endhighlight %}

Ensure you have a Heroku account and installed their [command line tools](https://devcenter.heroku.com/articles/heroku-cli)

{% highlight python %}
heroku update
heroku login
{% endhighlight %}

If you don't have an existing app
    {% highlight python %}
    heroku create
    {% endhighlight %}
else
    {% highlight python %}
    heroku git:remote -a <app-name>
    {% endhighlight %}

Visit your Heroku Dashboard for your app and ensure you have set the `SLACKBOT_API_TOKEN` environment variable.

Now that you have your remote url setup:
{% highlight python %} 
git push heroku <branch_name>
heroku ps:scale web=1
{% endhighlight %}

You will see page when you visit your heroku URL but that is expected because this is a bot.. not a website so there is no index.html on port 80 ;)
<img src="https://s3.amazonaws.com/kave-dump/application_error.png" alt="Application Error" style="width: 50%;"/>

Test your bot on slack!


----------
