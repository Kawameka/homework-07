def rewrite
  create an empty array
  set count to one
  loop through input_string by each_char
    if previous char and current char are the same
      add one to count
    else
      add count + char to an array
      reset count to one
    end
  end
  convert array into a string
end
    