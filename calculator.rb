require 'simplecov'
require 'simplecov-cobertura'  # Ensure this line is included

# Configure SimpleCov
SimpleCov.start do
  add_filter '/spec/' # Exclude test files from coverage
end

# Add Cobertura formatter for XML report generation
SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter
SimpleCov.coverage_dir 'coverage' # Ensure coverage files go to the right directory

# Calculator Class
class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  require 'bigdecimal'

  def divide(a, b)
    if b.zero?
      "Error: Division by zero is not allowed."
    else
      a.to_f / b
    end
  end

  def long_add(a, b)
    (a.to_i + b.to_i).to_s # Convert to integers and back to string
  end
end

# Example usage of the Calculator class
if __FILE__ == $PROGRAM_NAME
  calc = Calculator.new
  puts calc.add(5, 3)           # Example output: 8
  puts calc.subtract(10, 4)     # Example output: 6
  puts calc.divide(10, 2)       # Example output: 5.0
  puts calc.divide(10, 0)       # Example output: Error: Division by zero is not allowed.
  puts calc.long_add("100", "200") # Example output: "300"
end
