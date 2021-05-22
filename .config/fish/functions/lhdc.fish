function lhdc
  docker-compose --file docker-compose.yml --file docker-compose.app.yml $argv
end
