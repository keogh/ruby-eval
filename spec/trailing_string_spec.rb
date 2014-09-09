require 'spec_helper'

describe TrailingString do
  let(:test_cases) do
    [
      {
        input: {
          haystack: "Hello World",
          needle: "World"
        },
        expect: 1
      },
      {
        input: {
          haystack: "Hello CodeEval",
          needle: "Eval"
        },
        expect: 1
      },
      {
        input: {
          haystack: "San Francisco",
          needle: "San Jose"
        },
        expect: 0
      },
      {
        input: {
          haystack: "San Francisco",
          needle: "AB San Francisco"
        },
        expect: 0
      },
    ]
  end

  it 'finds needle at the end of the haystack' do
    test_cases.each do |row|
      haystack, needle = row[:input][:haystack], row[:input][:needle]
      expect(TrailingString.find_at_end(haystack, needle)).to eq(row[:expect])
    end
  end
end
