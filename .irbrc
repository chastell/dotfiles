require 'irb/completion'
require 'pp'
require 'rubygems'

IRB.conf[:AUTO_INDENT]  = true
IRB.conf[:HISTORY_FILE] = '~/.irb_history'
IRB.conf[:PROMPT_MODE]  = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1024
