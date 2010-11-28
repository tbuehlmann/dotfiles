require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 500
IRB.conf[:HISTORY_FILE] = File.expand_path('~/.irb_history')

if defined?(ActiveRecord)
  ActiveRecord::Base.logger = Logger.new(STDOUT)

  begin
    require 'hirb'
    Hirb.enable
  rescue LoadError
  end
end

