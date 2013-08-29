#!/usr/bin/env ruby1.9
# -*- coding: utf-8 -*-

require 'thrift'
$:.push('gen-rb')

require 'authentication'
require 'myauth_constants'


begin
  transport = Thrift::BufferedTransport.new(Thrift::Socket.new('localhost', 9090,5))
  protocol = Thrift::BinaryProtocol.new(transport)
  auth = MyAuth::Authentication::Client.new(protocol)
  transport.open()

  puts auth.say_hello()
  
  user = MyAuth::User.new
  user.username = 'hello'
  user.password = 'world'
  
  puts "Login: #{auth.login(user)}"
  
  user2 = MyAuth::User.new
  user2.username = 'failed'
  user2.password = 'world'

  puts "Login: #{auth.login(user2)}"
rescue Thrift::Exception => e
  p "报错了...."
  print e
  print 'Thrift::Exception: "#{e}"'
end
