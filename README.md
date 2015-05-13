# LibraryGem

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/library_gem`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem "library_gem", :git => "https://github.com/aleksandra-stolyar/library-gem.git"
```

And then execute:

    $ bundle

## Usage
------------

to test:

$ bundle exec irb

> require 'library_gem'
> Library.load_data

> puts "\"#{Library.most_popular_book.book_title}\" is most popular in this library."

> puts "#{Library.who_often_takes_book('Little Prince').reader_name} often takes 'Little Prince'."

> puts Library.number_of_people
