require_relative '../calculator' # Adjust the path as necessary

RSpec.describe Calculator do
  before(:each) do
    @calculator = Calculator.new
  end

  it 'adds two numbers correctly' do
    expect(@calculator.add(2, 3)).to eq(5)
  end

  it 'subtracts two numbers correctly' do
    expect(@calculator.subtract(5, 3)).to eq(2)
  end


  it 'divides two numbers correctly' do
    expect(@calculator.divide(6, 2)).to eq(3.0)
  end

  it 'handles division by zero' do
    expect(@calculator.divide(5, 0)).to eq("Error: Division by zero is not allowed.")
  end

  it 'adds long numbers correctly' do
    long_num1 = "1234567890123456789012345678901234567890"
    long_num2 = "9876543210987654321098765432109876543210"
    expect(@calculator.long_add(long_num1, long_num2)).to eq("11111111101111111110111111111011111111100")
  end

end
