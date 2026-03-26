def chapter06_04(runtekun_profile)
  "nameは、#{runtekun_profile[:name]}です。"
end

puts chapter06_04({ name: '', birthday: '7月8日', tall: 80, weight: 25.6 })

def barcode_reader(item = 'メモリ', price: 256)
  { 商品: item, 価格: price }.each do |key, value|
    puts "#{key}は#{value}になります"
  end
end

barcode_reader