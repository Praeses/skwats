require 'rubygems'
require 'bundler/setup'
require 'goliath'
require 'faye/websocket'
require './app'


Faye::WebSocket.load_adapter('goliath')

class EchoServer < Goliath::API
  def response env
    App.call env
  end
end
