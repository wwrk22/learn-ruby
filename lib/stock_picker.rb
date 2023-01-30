def stock_picker(prices)

  profit = 0
  transaction_days = [0, 0]
  min_price = prices[0]
  min_price_index = 0

  prices.each_with_index do |price, price_index|

    if price < min_price
      min_price = price
      min_price_index = price_index
      next
    end

    if price - min_price > profit
      profit = price - min_price
      transaction_days = [min_price_index, price_index]
    end

  end

  return transaction_days

end

puts stock_picker( [17, 3, 6, 9, 15, 8, 6, 1, 10] ) # -> [1, 4] for a profit of $12 = $15 - $3