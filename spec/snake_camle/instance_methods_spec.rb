require 'spec_helper'

describe SnakeCamel::InstanceMethods do

      let(:test_obj) { '' }

      before do
        test_obj.extend SnakeCamel::InstanceMethods
      end

  context 'when snake_camel/instance_methods is required' do

    describe "#snakecase" do
      [
        { input: 'ApplePeach', output: 'apple_peach' },
        { input: 'apple7Peach', output: 'apple7_peach' },
        { input: 'AB', output: 'ab' },
        { input: 'TheDog is', output: 'the_dog is' }
      ].each do |hash|
        context "when test_obj is #{hash[:input]}" do
          let(:test_obj) { hash[:input] }
          let(:output) { hash[:output] }

          it "converts #{hash[:input]} to #{hash[:output]}" do
            expect(test_obj.snakecase).to eq output
          end

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
        context "whenn test_obj is #{hash[:input]}" do
          let(:test_obj) { hash[:input] }
          let(:output) { hash[:output] }

          it "converts #{hash[:input]} to #{hash[:output]}" do
            expect(test_obj.camelcase).to eq output
          end

        end
      end
    end

    describe "#snakecase!" do
      [
        { input: 'ApplePeach', output: 'apple_peach' },
        { input: 'apple7Peach', output: 'apple7_peach' },
        { input: 'AB', output: 'ab' },
        { input: 'TheDog is', output: 'the_dog is' }
      ].each do |hash|
        context "when test_obj is #{hash[:input]}" do
          let(:test_obj) { hash[:input] }
          let(:output) { hash[:output] }

          it "converts #{hash[:input]} to #{hash[:output]}" do
            test_obj.snakecase!
            expect(test_obj).to eq output
          end

        end
      end
    end

  end
end