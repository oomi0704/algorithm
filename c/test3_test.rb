require 'minitest/autorun'

# test3.rbの関数をテストするためのクラス
class Test3Test < Minitest::Test
  
  # テスト用のメソッドを定義
  def calculate_coins(price)
    count = 0
    
    while price > 0
      if price >= 500
        price = price - 500
        count = count + 1
      elsif price >= 100
        price = price - 100
        count = count + 1
      elsif price >= 50
        price = price - 50
        count = count + 1
      elsif price >= 10
        price = price - 10
        count = count + 1
      elsif price >= 5
        price = price - 5
        count = count + 1
      elsif price >= 1
        price = price - 1
        count = count + 1
      end
    end
    count
  end

  def test_zero_amount
    assert_equal 0, calculate_coins(0)
  end

  def test_single_coin_amounts
    assert_equal 1, calculate_coins(1)
    assert_equal 1, calculate_coins(5)
    assert_equal 1, calculate_coins(10)
    assert_equal 1, calculate_coins(50)
    assert_equal 1, calculate_coins(100)
    assert_equal 1, calculate_coins(500)
  end

  def test_simple_combinations
    assert_equal 2, calculate_coins(2)  # 1円 × 2枚
    assert_equal 2, calculate_coins(6)  # 5円 × 1枚 + 1円 × 1枚
    assert_equal 2, calculate_coins(15) # 10円 × 1枚 + 5円 × 1枚
    assert_equal 2, calculate_coins(60) # 50円 × 1枚 + 10円 × 1枚
  end

  def test_complex_amounts
    assert_equal 3, calculate_coins(7)   # 5円 × 1枚 + 1円 × 2枚
    assert_equal 4, calculate_coins(17)  # 10円 × 1枚 + 5円 × 1枚 + 1円 × 2枚
    assert_equal 3, calculate_coins(65)  # 50円 × 1枚 + 10円 × 1枚 + 5円 × 1枚
    assert_equal 4, calculate_coins(167) # 100円 × 1枚 + 50円 × 1枚 + 10円 × 1枚 + 5円 × 1枚 + 1円 × 2枚
  end

  def test_large_amounts
    assert_equal 2, calculate_coins(600)  # 500円 × 1枚 + 100円 × 1枚
    assert_equal 3, calculate_coins(650)  # 500円 × 1枚 + 100円 × 1枚 + 50円 × 1枚
    assert_equal 4, calculate_coins(1234) # 500円 × 2枚 + 100円 × 2枚 + 10円 × 3枚 + 1円 × 4枚
  end

  def test_edge_cases
    assert_equal 0, calculate_coins(-1)  # 負の値の処理
    assert_equal 0, calculate_coins(nil) # nilの処理
  end

  def test_optimal_coin_combinations
    # 最適な硬貨の組み合わせをテスト
    assert_equal 1, calculate_coins(500) # 500円1枚
    assert_equal 2, calculate_coins(501) # 500円1枚 + 1円1枚
    assert_equal 2, calculate_coins(1000) # 500円2枚
    assert_equal 3, calculate_coins(1001) # 500円2枚 + 1円1枚
  end
end

# テストを実行
if __FILE__ == $0
  puts "テストを実行中..."
  Minitest::Test.run
end 