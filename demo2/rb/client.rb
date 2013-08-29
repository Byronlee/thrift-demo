# include thrift-generated code
$:.push('../gen-rb')

require 'thrift'
require 'calculator'

begin
	port = ARGV[0] || 9090

        # 定义TTransport，为你的client设置传输方式（如socket， http等）
	socket = Thrift::Socket.new('127.0.0.1', 9090)
	transport = Thrift::BufferedTransport.new(socket)
        # 定义Protocal，使用装饰模式（Decorator设计模式）封装TTransport，为你的数据设置编码格式（如二进制格式，JSON格式等）
	protocol = Thrift::BinaryProtocol.new(transport)
	# 实例化client对象，调用服务接口
	client = Calculator::Client.new(protocol)

	transport.open()

	ar = ArithmeticOperation.new()    
	ar.op = BinaryOperation::ADDITION
	ar.lh_term = 99
	ar.rh_term = 3
	
	# Run a remote calculation
	result = client.calc(ar)  #it accessing the ruby server program method calc via thrift service
	puts result.inspect
	
	#Run a Async call
	client.run_task()
	
	transport.close()
rescue
	puts $!
end
