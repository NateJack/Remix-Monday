# SoundCloud-Remix

This app allows you to easily throw a SoundCloud Remix competition on your website. The default application has plenty of customization options but feel free to adjust and fork as needed. You can see an example of the default app running [here](http://soundcloud-remix.heroku.com/).

# Prerequisites

### 1. Install Ruby, RubyGems, & Rails

Mac OS X: Ruby and Rails comes pre-installed on Mac OS X, but you'll want to upgrade it by [following these instructions](http://developer.apple.com/Tools/developonrailsleopard.html).

Windows: [Follow these instructions](http://wiki.rubyonrails.org/getting-started/installation/windows) to install Ruby and Rails on Windows.

### 2. Install Git & Generate SSH Key

[Git](http://git-scm.com/) is a free & open source, distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

1. Install Git: [On a Mac](http://github.com/guides/get-git-on-mac), [Windows](http://code.google.com/p/msysgit/), or [UNIX/Linux](http://book.git-scm.com/2_installing_git.html) 
2. [Sign up for Github](https://github.com/signup/free)
3. [Follow these instructions](http://help.github.com/mac-key-setup/) to generate an SSH key & add the key to your Github account.
4. Set user name and email globally on git by [following these instructions](http://help.github.com/git-email-settings/)

### 3. Register a new SoundCloud application

1. Make sure you're [signed up](http://soundcloud.com/signup) for SoundCloud and logged in.
2. [Go here](http://soundcloud.com/you/apps/new), name your app, and click `Register`
3. Copy your **Consumer Key** and **Consumer Secret** for later

### 4. Create a new Group on SoundCloud

1. [Go here](http://soundcloud.com/groups/new) and name your group (eg. My Band's Remix Contest)
2. Add a description about your contest, make sure "Automatically approve tracks" is checked, and click `Save Group`
3. Copy your **group url** from the address bar for later (eg. http://soundcloud.com/groups/soundcloud-remix)

# Download

Clone the application on your local computer by running the following command in your Terminal emulator. (Terminal on Mac, Console on Windows)

     git clone git@github.com:soundcloud/soundcloud-remix.git

Now you're ready to do some configuring.

# Configuration

Configuring the application is simply done by editing the following files `soundcloud_auth.yml` `settings.yml` `instructions.txt` in the **config** folder.

If you're looking for a decent text editor, try [TextMate](http://macromates.com/)

### 1. Connect with your SoundCloud app

Input your **Consumer Key** and **Consumer Secret** to the prokey and prosecret fields at the bottom of `config/soundcloud_auth.yml`

### 2. Adjust Main Settings

1. Input the following into `config/settings.yml`
2. Your competition **title**, **description**, **admin** user url, and **group** url
3. A link to your **terms**, if needed. Otherwise, leave blank.
4. Customize the embedded **player_params** as needed. (You can view a full list of parameters [here](http://wiki.github.com/soundcloud/Widget-JS-API/widget-options))
5. See *Facebook Like Button* below for more information regarding **facebook_id**
6. Set the **upload_limit** size in Kilobytes. (Set to 10MBs by default for easy deployment on Heroku.)
7. Adjust the default remix **description**, **tag_list**, and **downloadable** parameters. (These will be automagically applied to all remixes uploaded.)

### 3. Add Some Instructions

The frontpage includes a prominent block that should be used to instruct your users on the contest rules, submission guidelines, deadlines, where to get the stems, etc. You have complete control over this block by simply editing `config/instructions.txt`

### 4. Facebook Like Button (optional)

If you'd like to use the Facebook "Like" button on your application, you'll need to create a new Facebook App, copy its ID, and add it to your `config/settings.yml`. Here's how you do that:

1. [Go here](http://www.facebook.com/developers/createapp.php), name your app, agree to the terms, and click `Create Application`
2. Copy your **Application ID** and paste it into the **facebook_id**  field of `config/settings.yml`
3. Back on your Facebook app's edit page, click `Connect` in the left column
4. Input the url to where your deployed app will reside into the **Connect URL** field (eg. http://soundcloud-remix.heroku.com)
5. Click `Save Changes`

# Customize CSS and Images

### Replace default images

Replace the following images with something that relates to your competition.

* `public/images/bg.jpg`: background image used throughout the app. Replace with something around _1280 x 960_ pixels
* `public/images/logo.png`: logo that appears in the top left corner of your app. Replace with another _transparent png_ of your choosing.
* `public/images/artwork.jpg`: a square _200 x 200_ pixel image that is applied to every remix upload.

### Adjust default CSS

You can further customize the aesthetics of your application by adjusting `public/stylesheets/application.css`. Here's a few ideas:

* Change the _color_ and _font_ of text in the `body` selector
* Change the _color_ of links and their hover effect in the `a` selector
* Change the _color_ of headlines in the `h1, h2` selector
* Change the _background_ gradient of the upload progress bar in the `uploadifyProgressBar` selector

### Adjust player CSS

We've changed all players on the remix app from Flash to Javascript so they load faster and work on the iPhone/iPad. You can adjust their aesthetics by editing `public/stylesheets/player.css`.

* Change the _background-color_ in the `sc-controls` selector to adjust the color of the play/pause button
* Change the _background_ gradient in the `sc-played` selector to adjust the play bar color

# Deployment

### Deploying on Heroku

1. [Create a Heroku Account](http://heroku.com/signup)
2. [Install the Heroku Gem](http://docs.heroku.com/heroku-command)
3. And finally, [deploy it to Heroku](http://docs.heroku.com/quickstart#getting-your-app-on-heroku)

# Tips and Tricks

* Add **.vote** to the end of any remix link to make a voting link. Great for Twitter. "Vote for my remix http://soundcloud-remix.heroku.com/1**.vote**"
* Remixes are automatically added to the Group you specified in settings. You can go there to grab an embed of all the submissions.
* A button to "Vote For Remix" is added to the player embed via a customized 'buy' button. More on that hack [here](http://blog.soundcloud.com/2010/06/25/buy-download-button/).
* The app is automagically formatted for the iPhone. You can even listen to the remixes via HTML5 powered audio.

# Copyright

**SoundCloud-Remix** is Copyright (c) 2010 [Lee Martin](http://Lee.Ma/rtin) and [SoundCloud](http://soundcloud.com), released under the MIT License.


