# frozen_string_literal: true

def root(apar, bpar)
  return nil unless block_given?

  start = apar
  stop = bpar

  loop do
    middle = (start + stop) / 2

    # function
    func_stop = yield(stop)
    func_start = yield(start)
    func_middle = yield(middle)

    if (func_middle * func_stop).negative?
      start = middle
    else
      stop = middle
    end

    return middle if (func_stop - func_start).abs <= 1e-5
  end
end
