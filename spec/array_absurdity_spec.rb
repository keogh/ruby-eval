require 'spec_helper'

describe ArrayAbsurdity do
  let(:test_cases) do
    [
      {input: [0,1,2,3,0], expect: 0},
      {input: [0,1,10,3,2,4,5,7,6,8,11,9,15,12,13,4,16,18,17,14], expect: 4}
    ]
  end

  it 'returns hidden digits' do
    test_cases.each do |row|
      expect(ArrayAbsurdity.duplicate(row[:input])).to eq(row[:expect])
    end
  end
end
