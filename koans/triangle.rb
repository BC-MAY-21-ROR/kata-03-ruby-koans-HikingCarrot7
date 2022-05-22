# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if valid_side_lengths?(a, b, c) and valid_triangle?(a, b, c)
    return :equilateral if equilateral?(a, b, c)
    return :scalene if scalene?(a, b, c)

    :isosceles
  else
    raise TriangleError
  end
end

def equilateral?(a, b, c)
  [a, b, c].uniq.size == 1
end

def scalene?(a, b, c)
  [a, b, c].uniq.size == 3
end

def valid_side_lengths?(a, b, c)
  [a, b, c].all? { |x| x > 0 }
end

def valid_triangle?(a, b, c)
  a + b > c && a + c > b && b + c > a
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
