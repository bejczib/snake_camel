require 'spec_helper'


describe SnakeCamel::Methods do
  context 'when snake_camel/methods is required' do

    describe "#snakecase" do
      subject { SnakeCamel::Methods.snakecase(input) }

      [
        { input: 'ApplePeach', output: 'apple_peach' },
        { input: 'apple7Peach', output: 'apple7_peach' },
        { input: 'AB', output: 'ab' },
        { input: 'TheDog is', output: 'the_dog is' }
      ].each do |hash|
        context "whenn input is #{hash[:input]}" do
          let(:input) { hash[:input] }
          let(:output) { hash[:output] }

          it "converts #{hash[:input]} to #{hash[:output]}" do
            is_expected.to eq output
          end
        end
      end
    end

    describe '#camelcase' do
      subject { SnakeCamel::Methods.camelcase(input) }
      [
        { input: 'apple_peach', output: 'ApplePeach' },
        { input: 'apple7_peach', output: 'Apple7Peach' },
        { input: 'ab', output: 'Ab' },
        { input: 'the_dog is', output: 'TheDog is' }
      ].each do |hash|
        context "whenn input is #{hash[:input]}" do
          let(:input) { hash[:input] }
          let(:output) { hash[:output] }
          it "converts #{hash[:input]} to #{hash[:output]}" do
            is_expected.to eq output
          end
        end
      end
    end

    describe '#snakecase!' do
      [
        { input: 'ApplePeach', output: 'apple_peach' },
        { input: 'apple7Peach', output: 'apple7_peach' },
        { input: 'AB', output: 'ab' },
        { input: 'TheDog is', output: 'the_dog is' }
      ].each do |hash|
        context "whenn input is #{hash[:input]}" do
          let(:input) { hash[:input] }
          let(:output) { hash[:output] }

          it "converts #{hash[:input]} itself to #{hash[:output]}" do
            SnakeCamel::Methods.snakecase!(input)
            expect(input).to eq output
          end
        end
      end
    end

    describe '#camelcase!' do
      [
        { input: 'apple_peach', output: 'ApplePeach' },
        { input: 'apple7_peach', output: 'Apple7Peach' },
        { input: 'ab', output: 'Ab' },
        { input: 'the_dog is', output: 'TheDog is' }
      ].each do |hash|
        context "whenn input is #{hash[:input]}" do
          let(:input) { hash[:input] }
          let(:output) { hash[:output] }
          it "converts #{hash[:input]} itself to #{hash[:output]}" do
            SnakeCamel::Methods.camelcase!(input)
            expect(input).to eq output
          end
        end
      end
    end

    describe '#constant_name' do
      subject{ SnakeCamel::Methods.constant_name(input) }

      [
          { input: 'apple_peach', output: 'ApplePeach' },
          { input: 'apple7_peach', output: 'Apple7Peach' },
          { input: 'ab', output: 'Ab' },
          { input: 'hello/world_sup', output: 'Hello::WorldSup' },
          { input: 'bello/hello/world_sup', output: 'Bello::Hello::WorldSup' },
      ].each do |hash|
        context "whenn input is #{hash[:input]}" do
          let(:input) { hash[:input] }
          let(:output) { hash[:output] }
          it "converts #{hash[:input]} to #{hash[:output]}" do
            is_expected.to eq output
          end
        end
      end
    end

    describe '#path_name' do
      subject{ SnakeCamel::Methods.path_name(input) }

      [
          { input: 'Hello::WorldSup', output: 'hello/world_sup' },
          { input: 'Bello::Hello::WorldSup', output: 'bello/hello/world_sup' },
          { input: 'Bello', output: '/bello' },
          { input: '::Bello', output: '/bello' }
      ].each do |hash|
        context "whenn input is #{hash[:input]}" do
          let(:input) { hash[:input] }
          let(:output) { hash[:output] }
          it "converts #{hash[:input]} to #{hash[:output]}" do
            is_expected.to eq output
          end
        end
      end
    end

  end
end