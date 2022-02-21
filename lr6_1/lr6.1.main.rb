# frozen_string_literal: true

# Проверка на точность
def checkout(eps, niter, sum)
  if (sum - Math.exp(1)).abs > eps
    sumval(eps, niter + 1)
    sum
  else
    output_iter(eps, niter, sum)
  end
end

# Подсчет факториала
def factorial(niter)
  if niter <= 1
    1
  else
    niter * factorial(niter - 1)
  end
end

# Подсчет суммы ряда
def sumval(eps, niter)
  sum = 1
  1.upto(niter) do |index|
    kfact = 1 / factorial(index).to_f
    sum += kfact
  end
  checkout(eps, niter, sum)
end

# Вывод кол-ва итераций при заданной точности
def output_iter(eps, niter, sum)
  puts ''
  print "При #{niter} итерациях была достигнута точность #{eps},приближенное значение суммы ряда #{sum}"
  puts ''
end

# Пользовательский вывод
def checkres(eps1, eps2, niter)
  sumval(eps1, niter)
  sumval(eps2, niter)
  puts ''
  puts 'С увеличением точности, увеличивается кол-во итераций'
  puts ''
end

def sumval_test(niter)
  sum = 1
  1.upto(niter) do |index|
    kfact = 1 / factorial(index).to_f
    sum += kfact
  end
  sum
end
