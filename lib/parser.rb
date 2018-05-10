require 'json'
require 'ostruct'
require 'parser/json_content'

def json_parser(arg)
  raise 'Expecting an file as argumennt' if arg.nil?

  open_struct = Parser::JsonContent.new(arg).parse
  account = open_struct.data.attributes
  puts 'Phone Number: ' + account.contact_number
  puts 'Email: ' + account.email_address
  puts 'Complete Name: ' + account.title + ' ' + account.first_name + ' ' + account.last_name
  puts 'Product Name: ' + open_struct.included.find { |x| x.type == 'products' }.attributes.name
end
