require 'spec_helper'

describe 'core_ext' do

  context 'when snake_camel is required' do
    describe "#snakecase" do
      [
        { input: 'ApplePeach', output: 'apple_peach' },
        { input: 'apple7Peach', output: 'apple7_peach' },
        { input: 'AB', output: 'ab' },
        { input: 'TheDog is', output: 'the_dog is' }
      ].each do |hash|
        let(:input) { hash[:input] }
        let(:output) { hash[:output] }

        it "converts #{hash[:input]} to #{hash[:output]}" do
          expect(input.snakecase).to eq output

        end
      end
    end

    describe '#camelcase' do
      [
        { input: 'apple_peach', output: 'ApplePeach' },
        { input: 'apple7_peach', output: 'Apple7Peach' },
        { input: 'ab', output: 'Ab' },
        { input: 'the_dog is', output: 'TheDog is' }
      ].each do |hash|
        let(:input) { hash[:input] }
        let(:output) { hash[:output] }

        it "converts #{hash[:input]} to #{hash[:output]}" do
          expect(input.camelcase).to eq output

        end
      end
    end
  end
end
