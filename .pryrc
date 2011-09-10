Pry.config.editor = 'gvim --nofork'
Pry.prompt = [
  proc { |object, _| "#{object} > " },
  proc { |object, _| "#{object} * " },
]
