# Задачка
#  Дано: день прибывания в отеле в рабочий день стоит 1000р, а в выходной 1500р.
#  Задача: написать код который посчитает стоимость за пребывание в течении X дней с указанной даты.

# https://replit.com/languages/ruby
require_relative 'hotel/price_calculator'

# Проверка:
# # Friday 05.02.2021 = 1000 + 3000
puts Hotel::PriceCalculator.calc(Date.new(2021, 2, 5), 3)
# # Monday 3000
puts Hotel::PriceCalculator.calc(Date.new(2021, 2, 1), 3)
# # Friday 05.02.2021 = 1000 + 3000 + 2000
puts Hotel::PriceCalculator.calc(Date.new(2021, 2, 5), 5)
