# Usage
In Rails 5, understanding action cable is overwhelming specially for the beginner when chat application is given as example.
In my repo, you will get real time notification in very simple way.

To get it easily, open 2 browsers. In one browser, go to `http://localhost:3000/blogs` and in another browser, go to `http://localhost:3000/blogs/new`
On the blog list page, there is blogs count which will be updated automatically(without any extra http request) when a new blog is created from other browser.

I think this is the base concept to implement any real time application like chatting software.

## How to run it
* Clone the repo
* Make sure you have `redis` installed and running at port `6379`. It can be configured from `config/cable.yml`
* `bundle install`
* `rake db:migrate`
* `rails s`
* Now simply create a blog from a browser(`http://localhost:3000/blogs/new`) and see what happens from another browser from (`http://localhost:3000/blogs`)

### Development Environment
* ruby 2.4.0
* rails 5.1.0
* Sqlite
* Linux(Ubuntu 16.04 LTS)
* Rubymine IDE

#### Inspired from
Stefan Wintermeyer's [Article](https://medium.com/rubyinside/action-cable-hello-world-with-rails-5-1-efc475b0208b)
