In this article we discuss how to include CSS and JavaScript in our Rails applications using the **Asset Pipeline**.

### Learning Goals

* Understand why CSS and JavaScript are regarded as static assets
* Include assets using the asset pipeline
* Include multiple files with a single helper method
* Compile alternative languages to CSS and JavaScript

### Static Assets

The web relies on several core technologies to render pages. We typically start with HTML to define and structure the content of the page, then layer on CSS to adjust the appearance and JavaScript to make it more interactive. The HTML is often generated dynamically within the view layer of a Rails application. This enables us to build pages on-the-fly with information submitted from the user, retrieved from the database, or from any other number of sources.

On the other hand, our CSS and JavaScript define a set rules for how to display and interact with the page. Because these rules don't change as we add new information, we don't need to generate our CSS and JavaScript files dynamically. We can define them once and use them for all pages on our site. We'll refer to our CSS and JavaScript files as our **static assets**.

### Asset Pipeline

The main goal of the asset pipeline is to simplify our management of static assets.  Beyond that, the Asset Pipeline allows us to increase performance of our application by compressing and consolidating our assets (multiple js source files become one large js file, multiple css files become one large css file) so they are more quickly served to web browsers and make for a better UI experience.  The gem, **sprockets-rails** comes with Rails and is a central part of the Rails Asset Pipeline and is used for automated asset management.

### Why Does Rails Give Me Multiple Assets Folders?

You may have noticed that `rails new` gave you a plethora of folders and files, including `app/assets`, `lib/assets`, and `vendor/assets`.  This allows us to better organize our assets.  In general, the guideline is to put files specific to the current project (ie custom files specific to your app) into `app/assets`.  External assets, such as assets that might come with a gem such as jquery, should be placed in `vendor/assets`.  Assets that are maintained by you but are not specific to your app should go in `lib/assets`.

### Manifest Files

A `rails new` also provides files in your assets folders such as `app/assets/javascripts/application.js` and `app/assets/javascripts/application.css`.  If you peak into these asset manifest files, you will see the instructors for your pipeline processor to require the assets you wish to be served from your app.  More on that below.

### Linking External Assets

There are a few ways to include CSS and JavaScript on a web page. One method is to store them in external files that are then referenced within an application using the `<link>` or `<script>` tags:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Example Web Page</title>
    <link rel="stylesheet" href="/styles.css">
  </head>

  <body>
    <!-- page content goes here -->

    <script src="/application.js"></script>
  </body>
</html>
```

When a browser loads this HTML, it scans for these tags and will send additional HTTP requests to fetch the external stylesheets and JavaScript source files.

Although this extra request has a bit of overhead, one benefit from using external stylesheets and source files is that the browser can **cache** them and reuse them between pages. For example, if a browser downloads the stylesheet at `/styles.css`, it will save that file locally for a period of time. Next time the browser sees `<link rel="stylesheet" href="/styles.css">` on a page from the same web site, it will use the file it already downloaded rather than retrieving it again (as long as it hasn't been modified). This saves bandwidth and results in faster loading times for our web pages.

### Asset Pipeline - CSS

When we create a new Rails application, we end up with a layout file in `app/views/layouts/application.html.erb` that contains the following snippet:

```html
<head>
  <title>The Unofficial Troll 2 Fan Site</title>
  <%= stylesheet_link_tag "application", media: "all" %>
  <%= javascript_include_tag "application" %>
  <%= csrf_meta_tags %>
</head>
```

Rather than including the `<link>` and `<script>` tags explicitly, Rails uses the `stylesheet_link_tag` and `javascript_include_tag` helpers instead. The first argument of each helper supplies the name of the stylesheet or source file found in `app/assets/stylesheets` or `app/assets/javascripts`. For example, the following helper method:

```ruby
stylesheet_link_tag "application", media: "all"
```

Will generate the following HTML:

```html
<link rel="stylesheet" media="all" href="/assets/application-5...d.css?body=1" />
```

The link to `href="/assets/application-5...d.css"` actually references the file found in `app/assets/stylesheets/application.css`. This is the asset manifest file for the css you want to include from this directory.  If we inspect this file we see one large comment at the top:

```css
/*
 * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, vendor/assets/stylesheets,
 * or any plugin's vendor/assets/stylesheets directory can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the bottom of the
 * compiled file so the styles you add here take precedence over styles defined in any styles
 * defined in the other CSS/SCSS files in this directory. It is generally better to create a new
 * file per style scope.
 *
 *= require_tree .
 *= require_self
 */
```

We could add CSS rules to this file and they'll be included with the link generated by `stylesheet_include_tag "application"`.

### Asset Pipeline - Javascript


The same process is used for JavaScript. The helper method:

```ruby
javascript_include_tag "application"
```

Will generate the following HTML:

```html
<script src="/assets/jquery-8...0.js?body=1"></script>
<script src="/assets/jquery_ujs-e...4.js?body=1"></script>
<script src="/assets/application-8...9.js?body=1"></script>
```

This is similar to the stylesheets, but where did `jquery` and `jquery_ujs` come from? Let's look at `app/assets/javascripts/application.js`:

```javascript
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
```

This file only contains the above comment, but look at the last three lines:

```javascript
//= require jquery
//= require jquery_ujs
//= require_tree .
```

Although the `//` signifies a comment in JavaScript, Rails utilizes a library called [Sprockets](https://github.com/sstephenson/sprockets) to compile and package our assets. Sprockets will look for comments starting with `//=` and use them to *include* additional JavaScript files. Here we're including two additional JavaScript libraries: jQuery and jQuery UJS (Unobtrusive JavaScript).  Without the `=`, the directives won't work.  Notice that it is written has `require jquery`, and not `require jquery.js`, rails assumes that the files required will have the same extension as your manifest file.  The last line, `//= require_tree .`, indicates that all the files in that directory, and any sub-directories, should be required.  So why explicitly require jquery and jquery_ujs, or anything for that matter, if the tree will require everything?  With `//= require_tree .`, there is no guaranteed order to how the files will be included, so if the order in which the files will be included may matter, do so explicitly.  

Where did these additional files come from? If we check the Gemfile we'll notice a reference to the `jquery-rails` gem:

```ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
```

This library packages up jQuery and makes it available to be included in our assets.

###


### Multiple Files

Writing all of our CSS in `app/assets/stylesheets/application.css` and JavaScript in `app/assets/javascripts/application.js` can become unwieldy as the files grow larger. An alternative is to break these up into smaller files that group styles and code conceptually. We're free to organize the files as we wish and can rely on Sprockets to include them all using the `stylesheet_link_tag` and `javascript_include_tag` helpers.

Consider adding a new stylesheet named `sample.css`:

```
app/assets/stylesheets
├── application.css
└── sample.css
```

When we render the page we'll see the new sample file is automatically included for us:

```html
<link rel="stylesheet" media="all" href="/assets/sample-6...7.css?body=1" />
<link rel="stylesheet" media="all" href="/assets/application-5...d.css?body=1" />
```

Nowhere did we explicitly include this new `sample.css` file but Rails knew to add the extra `<link>` tag when it rendered the page. If we look back at the `application.css` file we might notice the following statements at the end of the comment:

```css
/*
 *= require_tree .
 *= require_self
 */
```

The `*= require_tree .` statement is instructing Sprockets to include all files in the current directory and any sub-directories. Since `sample.css` is in the current directory, this gets picked up and is included automatically in our HTML. The `*= require_self` statement will include any CSS statements that are defined within the `application.css` file last (meaning that `sample.css` will be linked before `application.css`).


### Alternative Languages

Modern web browsers are equipped to render HTML with CSS and run any JavaScript code. It is up to the web developer to prepare this content accordingly and send it back to the browser in an HTTP response body.

Even though we are limited to HTML, CSS, and JavaScript when presenting our pages to the user, we can use whatever technologies are available to us to generate this content. For example, rather than writing HTML pages by hand, we rely on Ruby and ERB (or any other templating language) to generate the HTML on-the-fly before sending it back to the browser. The end user is unaware of how we generated the page since the only part they see is the final product.

Similarly, we can use other languages as alternatives to JavaScript and CSS as long as we have a way to generate those languages from our source. [CoffeeScript](http://coffeescript.org/) and [Sass](http://sass-lang.com/) are two popular alternatives to JavaScript and CSS that offer us additional benefits during development time but still compile down to the original language when viewed by the user.

If we look at the `Gemfile` we'll notice that both technologies are supported by default:

```ruby
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
```

If we want to include a CoffeeScript or Sass file in our application, change the file extension to either `.coffee` or `.scss` in the respective folder:

```no-highlight
app/assets
├── javascripts
│   ├── application.js
│   └── test.coffee
└── stylesheets
    ├── application.css
    └── test.scss
```

When we reload the page we'll see that Rails compiled both files to CSS and JavaScript and included them in the header:

```html
<link rel="stylesheet" media="all" href="/assets/test-6...7.css?body=1" />
<script src="/assets/test-f...d.js?body=1"></script>
```

### Adding External Libraries

Occasionally you will come across useful JavaScript libraries which you would like integrate with your Rails application. Where do they go? Should I use a gem? There are many ways to get to a working solution. Here is a very simple and streamlined approach.

#### Tablesorter

[Tablesorter](http://tablesorter.com/docs/) is a jQuery plugin that allows you to sort HTML tables on the client. It is dependent on jQuery, which is included in our Rails application by default (`gem "jquery-rails"` in the Gemfile).

The first step is to download the full release of [Tablesorter](http://tablesorter.com/docs/#Download) and extract the zip archive.

```no-highlight
.
├── addons
├── build
├── build.xml
├── changelog
├── docs
├── jquery-latest.js
├── jquery.metadata.js
├── jquery.tablesorter.js
├── jquery.tablesorter.min.js
├── tests
└── themes
```

There are a lot of files in this archive. Really, all we need to get started is the `jquery.tablesorter.js` file. Place it in your `vendor/assets/javascripts` folder. If you have the time, explore the files in the `docs` folder. There are many good examples on how to use this library.

The final step is to add a call to this library in your `application.js` file. If we read the comments in this file, it states that any file in the `vendor` folder can be referenced here. Since this library is dependent on jQuery, it should come after it in the `application.js` file.

```javascript
// ...
//
//= require jquery
//= require jquery_ujs
//= require jquery.tablesorter
//= require_tree .
```

Now, we can add `class="tablesorter"` to any of our tables, and sort columns by clicking on the headers.

### Spoiler Alert: React

Soon we will be learning React, and with that adding React to Rails.  React is simply a javascript library, and all the "React" and "JSX" (don't worry about what those are for the moment) are transpiled to plain javascript, in a file called `bundle.js`.  This too will be added to our asset pipeline in our React configuration so it will be served up to the browser:
```javascript
var config = {
  ...
  output: {
    path: './app/assets/javascripts',
    filename: 'bundle.js'
  }
  ...
}
```

### Pre-compiling Assets

When working in development mode, assets can be served up dynamically.  However, when in production, assets must be pre-compiled.  Heroku will automatically do this step for you.  If you notice that changes you're making as you develop are not showing up in production, or that changes you've made to your js and css files are not showing up locally in your browser, it may be because you attempted to pre-compile your assets.  Use `rake assets:clobber` to rid yourself of the pre-compiled assets.  

### Resources

* [Rails Guide to the Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html)
