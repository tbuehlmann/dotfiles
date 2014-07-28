require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 500
IRB.conf[:HISTORY_FILE] = File.expand_path('~/.irb_history')

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
