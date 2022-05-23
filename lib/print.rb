class Print
  def print(item)
    puts item.is_a?(String) ? item : item.join("\n") 
  end
end
