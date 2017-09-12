# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Medium 1 - Question 10

# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

#What would be the return value of the following method invocation?

bar(foo)

# Answer:
# method foo returns "yes" to method bar
# since the ternary operation results in false, bar returns "no"