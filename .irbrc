require 'irb/completion'
require 'irbtools/more'
require 'logger'
require 'pp'

ActiveRecord::Base.logger = Logger.new($stdout) if defined?(ActiveRecord::Base)

IRB.conf[:AUTO_INDENT]  = true
IRB.conf[:HISTORY_FILE] = '~/.irb_history'
IRB.conf[:PROMPT_MODE]  = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1024
