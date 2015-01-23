require 'spec_helper'

describe WithoutRepetitions do
  let(:test_cases) do
    [
      {
        input: 'But as he spake he drew the good sword from its scabbard, and smote a heathen knight, Jusssstin of thee Iron Valley.',
        expect: 'But as he spake he drew the god sword from its scabard, and smote a heathen knight, Justin of the Iron Valey.'
      },
      {
        input: 'No matttter whom you choose, she deccccclared, I will abide by your decision.',
        expect: 'No mater whom you chose, she declared, I wil abide by your decision.'
      }
    ]
  end

  it 'returns string without repetitions' do
    test_cases.each do |row|
      expect(WithoutRepetitions.clean_repetitions(row[:input])).to eq(row[:expect])
    end
  end
end