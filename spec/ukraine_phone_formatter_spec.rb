require 'ukraine_phone_formatter'

RSpec.describe UkrainePhoneFormatter do
  it 'formats 10-digit number' do
    expect(UkrainePhoneFormatter.format('0971234567')).to eq('+38 (097) 123-45-67')
    expect(UkrainePhoneFormatter.format('063-987-65-43')).to eq('+38 (063) 987-65-43')
    expect(UkrainePhoneFormatter.format('(050) 1112233')).to eq('+38 (050) 111-22-33')
  end

  it 'formats 12-digit number' do
    expect(UkrainePhoneFormatter.format('380971234567')).to eq('+38 (097) 123-45-67')
    expect(UkrainePhoneFormatter.format('38-063-987-65-43')).to eq('+38 (063) 987-65-43')
  end

  it 'returns original number if number is not recognized' do
    expect(UkrainePhoneFormatter.format('123')).to eq('123')
    expect(UkrainePhoneFormatter.format('097123456789')).to eq('097123456789')
    expect(UkrainePhoneFormatter.format('abc')).to eq('abc')
  end
end