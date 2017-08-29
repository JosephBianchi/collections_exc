digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']

# ind = 0
# hash1 = {}
# key_hash = {}
# digits.each do |num|
#
#   hash1[num.to_sym] = key_hash[{fr[ind], en[ind]}]
#   ind += 1
#
#
#
#
# end

sum = 0

en_array = []
en.each do |en_num|
  en_hash = {}
  en_hash[:english] = en_num
  en_hash[:french] = fr[sum]
  sum += 1
  en_array << en_hash
end

final_hash = {}
digits.each do |num|

  final_hash[num.to_sym] = en_array[num.to_i - 1]
end

p final_hash
