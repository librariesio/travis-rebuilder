require 'bundler'
require 'json'
Bundler.require

class TravisRebuilder < Sinatra::Base
  use Rack::Deflater

  configure do
    set :logging, true
    set :dump_errors, false
    set :raise_errors, true
    set :show_exceptions, false
  end

  before do
    request.body.rewind
    @request_payload = JSON.parse request.body.read
  end

  post '/webhook' do
    content_type :json

    restart_travis_build(@request_payload['repository'])

    status 200
    body ''
  end

  def restart_travis_build(repository, branch = 'master')
    session = Travis::Client::Session.new
    session.github_auth ENV['GITHUB_TOKEN']
    repo = session.repo(repository)
    repo.delete_caches(branch: branch)
    branch = repo.branch(branch)
    session.restart(branch)
  end
end
