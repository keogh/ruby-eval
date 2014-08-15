require 'spec_helper'

describe ShortestRepetition do
  let(:test_cases) do
    [
      {input: "abcabcabcabc", expect: 3},
      {input: "bcbcbcbcbcbcbcbcbcbcbcbcbcbc", expect: 2},
      {input: "dddddddddddddddddddd", expect: 1},
      {input: "adcdefg", expect: 7}
    ]
  end

  it 'calculates the shortest repetition' do
    test_cases.each do |row|
      expect(ShortestRepetition.calculate(row[:input])).to eq(row[:expect])
    end
  end
end
