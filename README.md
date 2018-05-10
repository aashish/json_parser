# Welcome to JsonParser

This is a basic gem for parsing a json file. This gem will parse the json file to `OpenStruct` data structure. You can call the `json_parser` with a file as argument from `irb` to check.

## Technical Requirement

Uses Ruby 2.5.1 and utilise default classes and methods

## Installation

Add this line to your application's Gemfile:

```
gem 'json_parser'
```

And then execute:

```
$ bundle
```
Or install it yourself as:

```
$ gem install json_parser
```

## Usage

Use collection.json as a source of data for running the implementation with output on irb.

Steps:

1. The gem will accept filename as input
2. When it is executed it will return :
   - phone number
   - email address
   - complete name including title
   - product name

```
$ irb
2.4.1 :008 >   
2.4.1 :009 >   require 'parser'
 => true
2.4.1 :010 >
2.4.1 :011 >   json_parser "collection.json"
Phone Number: 0404000000
Email: test@mivi.com
Complete Name: Ms Joe Bloggs
Product Name: UNLIMITED 7GB
 => nil
```

## Contributing

1. Fork it ( https://github.com/aashish/json_parser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
