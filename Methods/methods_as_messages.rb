class B
  def aaa
    puts "aaaaaaaa"
  end
  def print(content)
    puts content.to_s
  end
end

b = B.new

# calling a method is the same as sending a message to the object
b.aaa # aaaaaaaa
b.__send__(:aaa) # aaaaaaaa
b.send(:aaa) # aaaaaaaa

b.print("content") # content
b.send(:print, "content") # content
b.__send__(:print, "content") # content


#methods like "puts" are defined in the kernel and are part of the Object class. There's olways class "main" running
puts self # main



