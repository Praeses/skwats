
use Rack::Static, urls: %w(/css /js)
run ->(env) {[200,{'Content-Type' => 'text/html'}, File.open('public/index.html', File::RDONLY)] }
