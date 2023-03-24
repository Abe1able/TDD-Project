require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#factorial' do
    it 'returns 1 for 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'returns 1 for 1' do
      expect(@solver.factorial(1)).to eq(1)
    end

    it 'returns 120 for 5' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'raises an exception for negative integer' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns an empty string for an empty string' do
      expect(@solver.reverse('')).to eq('')
    end

    it 'returns the reversed string for a non-empty string' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end

    it 'returns the reversed string for a palindrome' do
      expect(@solver.reverse('racecar')).to eq('racecar')
    end
  end

  describe '#fizzbuzz' do
    it 'returns the number as a string when not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(1)).to eq('1')
      expect(@solver.fizzbuzz(2)).to eq('2')
      expect(@solver.fizzbuzz(4)).to eq('4')
    end

    it 'returns fizz when divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
      expect(@solver.fizzbuzz(6)).to eq('fizz')
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns buzz when divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
      expect(@solver.fizzbuzz(10)).to eq('buzz')
      expect(@solver.fizzbuzz(20)).to eq('buzz')
    end

    it 'returns fizzbuzz when divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(@solver.fizzbuzz(30)).to eq('fizzbuzz')
      expect(@solver.fizzbuzz(45)).to eq('fizzbuzz')
    end
  end
end
