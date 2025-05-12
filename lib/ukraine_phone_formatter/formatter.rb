module UkrainePhoneFormatter
  class Formatter
    def self.format(phone_number)
      cleaned_number = phone_number.gsub(/[^0-9]/, '')

      case cleaned_number.length
      when 10
        "+38 (#{cleaned_number[0..2]}) #{cleaned_number[3..5]}-#{cleaned_number[6..7]}-#{cleaned_number[8..9]}"
      when 12
        if cleaned_number.start_with?('38')
          "+38 (#{cleaned_number[2..4]}) #{cleaned_number[5..7]}-#{cleaned_number[8..9]}-#{cleaned_number[10..11]}"
        else
          phone_number
        end
      else
        phone_number
      end
    end
  end
end