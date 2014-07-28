class Object
  def local_methods
    methods - Kernel.methods
  end

  def measure
    time = Time.now
    yield
    puts Time.now - time
  end
end
