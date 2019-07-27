def pascal(row)
  triangle = [1]
  return triangle if row <= 1

  0.upto(row - 1) do |k|
    triangle << triangle[k] * (row - k) / (k + 1)
  end
  triangle
end

def pascal_triangle(rows)
  1.upto(rows) { |x| puts pascal(x).to_s }
end

pascal_triangle(100)
