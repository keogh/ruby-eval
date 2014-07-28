require 'spec_helper'

describe HiddenDigits do
  let(:test_cases) do
    [
      {input: 'abcdefghik', expect: '012345678'},
      {input: 'Xa,}A#5N}{xOBwYBHIlH,#W', expect: '05'},
      {input: "(ABW>'yy^'M{X-K}q,", expect: 'NONE'},
      {input: '6240488', expect: '6240488'}
    ]
  end

  it 'returns hidden digits' do
    test_cases.each do |row|
      expect(HiddenDigits.find_digits(row[:input])).to eq(row[:expect])
    end
  end
end
