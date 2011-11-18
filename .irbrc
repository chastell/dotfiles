require 'irb/completion'
require 'pp'

require 'rubygems'
require 'pry'

IRB.conf[:AUTO_INDENT]  = true
IRB.conf[:HISTORY_FILE] = '~/.irb_history'
IRB.conf[:PROMPT_MODE]  = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1024

if RUBY_VERSION < '1.9'
  IRB.conf[:USE_READLINE] = false
else
  Pry.start
  exit
end
