function ts
  env TZ=UTC ruby -e 'require "time"; puts /^\d+$/.match?(ARGV.first) ? Time.at(ARGV.first.to_i / 1000) : Time.parse(ARGV.first).to_i * 1000' $argv
end
