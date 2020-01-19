function serve
  xdg-open http://localhost:8080 &
  ruby -run -e httpd -- -p 8080 .
end
