#!/usr/bin/env ruby

$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), "..", "lib")))

require "numerical_calculator"

calculator = NumericalCalculator::Calculator.new
calculator_cli = NumericalCalculator::CalculatorCli.new(calculator)
calculator_cli.infinite_input

