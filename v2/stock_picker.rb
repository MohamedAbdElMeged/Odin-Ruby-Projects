# days = [17, 3, 6, 9, 15, 8, 6, 1, 10]

days = [3, 4, 5, 6, 7, 8, 1, 12, 0]
def stock_picker(days)
  tmp_days = days.dup
  res = []
  min = tmp_days.min
  max = tmp_days.max
  while true
    min = tmp_days.min
    if days.index(min) > days.index(max)
      tmp_days.delete_at(tmp_days.index(min))
    else
      res = [days.index(min), days.index(max)]
      return res
    end
  end
end

p stock_picker(days)
