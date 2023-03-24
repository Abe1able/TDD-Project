require_relative '../solver'
describe Solver do
  context 'testing for factorial, reverse and fizzbuzz' do
    before :each do
      @solver = Solver.new
    end
    it 'creates a new instance of Solver class' do
      expect(@solver).to be_instance_of Solver
    end

    describe '#factorial' do
      it 'checks if argument is only one' do
        expect(@solver.factorial(6, 8)).to raise_error ArgumentError
      end

      it 'checks if factorial of 0 is 1' do
        expect(@solver.factorial(0)).to eql 1
      end

      it 'checks if the argument is not a negative number' do
        expect(@solver.factorial(-2)).to raise_error 'use positive integers only'
      end

      it 'checks if factorial works as expected' do
        expect(@solver.factorial(5)).to eql 120
      end
    end
