class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @n = (@b - @a).cross(@c - @a)
  end
end
