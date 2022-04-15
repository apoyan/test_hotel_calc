require 'date'

module Hotel
  class PriceCalculator
    REGULAR_DAY_PRICE = 1000.freeze
    WEEKEND_DAY_PRICE = 1500.freeze
    WEEK_PRICE = 8000.freeze
    DAYS_INTO_WEEK = 7.freeze
    
    class << self
      def calc(start_date, days)
        # DaysValidator.(days)
        # raise 'Number of days must be positize' unless days.to_i < 0
        # DateValidator.(date)

        price = 0
        price += days / DAYS_INTO_WEEK * WEEK_PRICE
  
        partial_week(start_date, days % DAYS_INTO_WEEK).each do |date|
          price += price_for(date)
        end
  
        price
      end
  
      def partial_week(start_date, offset)
        (start_date..(start_date + offset - 1))
      end
  
      def price_for(date)
        [6, 7].include?(date.cwday) ? WEEKEND_DAY_PRICE : REGULAR_DAY_PRICE
      end
    end
  end
end
