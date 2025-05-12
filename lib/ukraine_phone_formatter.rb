require_relative 'ukraine_phone_formatter/formatter'

module UkrainePhoneFormatter
  def self.format(phone_number)
    Formatter.format(phone_number)
  end
end