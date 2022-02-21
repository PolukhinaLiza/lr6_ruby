# frozen_string_literal: true

# Description/Explanation of SumVal class
class SumVal
  include Enumerable
  # Подсчет факториала
  def factorial(niter)
    if niter <= 1
      1
    else
      niter * factorial(niter - 1)
    end
  end

  def each
    niter = 1
    loop do
      sum = 1
      1.upto(niter) do |index|
        kfact = 1 / factorial(index).to_f
        sum += kfact
      end
      yield [niter, sum]
      niter += 1
    end
  end
end

# Вывод кол-ва итераций при заданной точности
def output_iter(eeps, nniter, ssum)
  puts ''
  print "При #{nniter} итерациях была достигнута точность #{eeps},приближенное значение суммы ряда #{ssum}"
  puts ''
end

# Метод для упрощения кода
def lr6(eps)
  array = SumVal.new.find { |mas| (Math.exp(1) - mas.last).abs <= eps }
  output_iter(eps, array.first, array.last)
end

# Пользовательский вывод
def checkres(eps1, eps2)
  lr6(eps1)
  lr6(eps2)
  puts ''
  puts 'С увеличением точности, увеличивается кол-во итераций'
  puts ''
end

def lr6_test(eps)
  array = SumVal.new.find { |mas| (Math.exp(1) - mas.last).abs <= eps }
  array.last
end
