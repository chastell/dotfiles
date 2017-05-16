require 'logger'

ActiveRecord::Base.logger = Logger.new($stdout) if defined?(ActiveRecord::Base)

Pry.config.editor = 'gvim --nofork'
