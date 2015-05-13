# LibraryGem

Hello, it's my first gem, which helps to find out what is the most popular book in your library, who often takes certain book and calculate how many people took 3 most popular books.

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
