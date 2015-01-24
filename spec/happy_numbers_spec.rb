require 'spec_helper'

describe HappyNumbers do
  let(:test_cases) do
    [
      {
        input: 1,
        expect: 1
      },
      {
        input: 7,
        expect: 1
      },
      {
        input: 22,
        expect: 0
      }
    ]
  end

  it 'returns 1 if happy numbers 0 if not' do
    test_cases.each do |row|
      expect(HappyNumbers.calculate(row[:input])).to eq(row[:expect])
    end
  end
end