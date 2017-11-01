require 'minitest/autorun'
require_relative 'currency_converter'

class CurrencyConverterTest < Minitest::Test

    def setup
        @apples_to_oranges = CurrencyConverter.new("apple", "orange", 2.0)
        @amount = 5
    end

    def test_argument_type
        assert_instance_of String, @apples_to_oranges.currency_one
        assert_instance_of  String, @apples_to_oranges.currency_two
        assert_instance_of Float, @apples_to_oranges.conversion_rate
    end

    def test_initialize
        
        # tests that class exists:
        assert_raises ArgumentError do
            CurrencyConverter.new
        end

        # test for one argument
        assert_raises ArgumentError do
            CurrencyConverter.new("arg1")
        end

        # test two arguments
        assert_raises ArgumentError do
        CurrencyConverter.new("arg1", "arg2")
        end

        # test 3 arguments 
        @cc = CurrencyConverter.new("arg1", "arg2", "arg3")
        assert_equal "arg1", @cc.currency_one
        assert_equal "arg2", @cc.currency_two
        assert_equal "arg3", @cc.conversion_rate
        

        def test_convert_currency_one_to_two
            assert_raises ArgumentError do
                @apples_to_oranges.convert_currency_one_to_two
            end
        end

        @converted_value =
        @apples_to_oranges.convert_currency_one_to_two(@amount)

        @expected_value =
        @amount*@apples_to_oranges.conversion_rate
        assert_equal @expected_value, @converted_value
        

        def test_convert_curency_two_to_one
            assert_raises ArgumentError do
            @apples_to_oranges.convert_currency_two_to_one
            end
        end

        @converted_value = @apples_to_oranges.convert_currency_two_to_one(@amount)
    

        @expected_value = @amount * (1.0/@apples_to_oranges.conversion_rate)
        assert_equal @expected_value, @converted_value
    

        def test_reverse_conversion_rate
            assert_raises ArgumentError do
                @apples_to_oranges.reverse_conversion_rate("arg1")
            end
        end

        @expected_value = 1.0/@apples_to_oranges.conversion_rate

        assert_equal @expected_value,
        @apples_to_oranges.reverse_conversion_rate

  
        def test_amount_is_float_one_to_two
            @expected_value = @apples_to_oranges.convert_currency_one_to_two(@amount)
            assert_instance_of Float, @expected_value
        end

        def test_amount_is_float_two_to_one
            @expected_value = @apples_to_oranges.convert_currency_two_to_one(@amount)
            assert_instance_of Float, @expected_value
        end
        
        def test_if__statement_
            @expected_value = @apples_to_oranges.convert_currency_two_to_one(@amount)
            assert_instance_of Float, @expected_value
        end
        def test__else_statement
            @apples_to_oranges.reverse_conversion_rate
            @expected_value = @apples_to_oranges.convert_currency_two_to_one(@amount)
            assert_instance_of Float, @expected_value
        end
        
    end
end