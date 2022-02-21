# frozen_string_literal: true

require './lr6.2.main.rb'

puts 'Высчитаем сумму ряда при точности 0,0001 и при точности 0,00001'

eps1 = 0.0001
eps2 = 0.00001

checkres(eps1, eps2)
