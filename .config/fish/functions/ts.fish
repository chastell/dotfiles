function ts
  env TZ=UTC ruby -e 'require "time"; puts ARGV.first.include?("-") ? Time.parse(ARGV.first).to_i * 1000 : Time.at(eval(ARGV.first) / 1000)' $argv
end
