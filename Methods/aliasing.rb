# creates a copy of a method with another name

class String

  alias_method "original_size", "size"

  def size
    "its a secret, but it was #{original_size}"
  end

  def abc
    p "abc"
  end

end

p "asasasas".size






