module Input

  def input2intarr()
    array = gets
    array.split().map(&:to_i)
  end
end
