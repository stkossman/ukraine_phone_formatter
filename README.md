# Ukraine Phone Formatter

[![Gem Version](https://badge.fury.io/rb/ukraine_phone_formatter.svg?icon=si%3Arubygems)](https://badge.fury.io/rb/ukraine_phone_formatter)
[![GitHub Stars](https://img.shields.io/github/stars/stkossman/ukraine_phone_formatter?style=social)](https://github.com/stkossman/ukraine_phone_formatter)

**Ukraine Phone Formatter** is a simple Ruby gem that formats Ukrainian phone numbers into a readable and standardized format.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ukraine_phone_formatter'
```
And then execute
```bash
bundle install
```
Or install it yourself with:
```bash
gem install ukraine_phone_formatter
```

## Usage

```ruby
require 'ukraine_phone_formatter'

formatted = UkrainePhoneFormatter.format('0631234567')
puts formatted
# Output: +38 (063) 123-45-67

formatted = UkrainePhoneFormatter.format('+380631234567')
puts formatted
# Output: +38 (063) 123-45-67
```

## Input Formats
The gem accepts 10-digit Ukrainian numbers (e.g. "0631234567") and 12-digit international numbers starting with "38" (e.g. "380631234567" or "+380631234567").

## Output Format
All valid numbers are formatted in the following way:
```
+38 (XXX) XXX-XX-XX
```
Invalid or unsupported numbers are returned as-is.

## Development
Feel free to fork or contribute.

## License
This project is licensed under the [MIT License](LICENSE)

## Author
- [RubyGems](https://rubygems.org/profiles/kossman)
- [Github](https://github.com/stkossman)
