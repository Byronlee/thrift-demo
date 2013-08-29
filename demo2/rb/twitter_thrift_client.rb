# include thrift-generated code
$:.push('../gen-rb')

require 'thrift'

require 'thrift_client'

require 'calculator'


@options = { :protocol => Thrift::BinaryProtocol, :transport_wrapper => Thrift::BufferedTransport }
# @options = {:protocol_extra_params => [false]}
client = ThriftClient.new(Calculator::Client, '0.0.0.0:9090', @options)

ar = ArithmeticOperation.new()    
ar.op = BinaryOperation::ADDITION
ar.lh_term = 99
ar.rh_term = 3

# Run a remote calculation
result = client.calc(ar)  #it accessing the ruby server program method calc via thrift service
puts result.inspect
