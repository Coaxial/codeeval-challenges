# Generates a multiplication matrix from 1*1 to 12*12
# with the required padding for aligning numbers right
# e.g.:
#  1   2   3   4   5   6   7   8   9  10  11  12
#  2   4   6   8  10  12  14  16  18  20  22  24
#  3   6   9  12  15  18  21  24  27  30  33  36
#  4   8  12  16  20  24  28  32  36  40  44  48
#  5  10  15  20  25  30  35  40  45  50  55  60
#  6  12  18  24  30  36  42  48  54  60  66  72
#  7  14  21  28  35  42  49  56  63  70  77  84
#  8  16  24  32  40  48  56  64  72  80  88  96
#  9  18  27  36  45  54  63  72  81  90  99 108
# 10  20  30  40  50  60  70  80  90 100 110 120
# 11  22  33  44  55  66  77  88  99 110 121 132
# 12  24  36  48  60  72  84  96 108 120 132 144


# method to generate each line of the table
# takes coeff and multiplies it by 1..12 and returns an array
def generate_line(coeff)
  result = []
  for i in 1..12
    result << i * coeff
  end
  result
end

# method to calculate how much padding is required before values
# to keep numbers right aligned
def add_padding(values)
  values.each_with_index do |value, index|
    col_span = 4
    col_span = 2 if index == 0
    req_spaces_qty = col_span - value.to_s.length
    values[index] = ' ' * req_spaces_qty + value.to_s
  end
end

# generates 1..12 lines for the table, filling the rest of the line with 
# coeff * line_value
for i in 1..12 do
  current_line = "l#{i}".to_sym
  matrix.store(current_line, generate_line(i))
end

# adds the padding
matrix.each { |k, v| matrix[k] = add_padding(v) }

# prints the matrix
for i in 1..12 do
  current_line = "l#{i}".to_sym
  puts matrix.values_at(current_line).join
end