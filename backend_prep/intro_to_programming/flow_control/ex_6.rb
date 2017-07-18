# Introduction to Programming
# Flow Conrol
# Exercise 6

# When you run the following code...

    def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
      end # This will resolve the error message
    end

    equal_to_four(5)

    # You get the following error message..

    # test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end

    # Why do you get this error and how can you fix it?

    # Answer: The if/else statement isn't terminated; it's missing the reserve word 'end'