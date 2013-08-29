# include thrift-generated code
$:.push('../gen-rb')

require 'thrift'
require 'calculator'

# provide an implementation of Calculator
class CalculatorHandler
	def initialize()
		#nothing goes here
	end

	def calc(val)
		lh_term = val.lh_term
		rh_term = val.rh_term
		case val.op
			when 1 #Addition
				lh_term+rh_term
			when 2 #subraction
				lh_term-rh_term
			when 3 #multiplication
				lh_term*rh_term
			when 4 #division
				lh_term/rh_term
			when 5	#modulas
				lh_term%rh_term
		end
	end
	
	def run_task()
		puts "Kicking off the task"
	end
end

# Thrift provides mutiple communication endpoints
#  - Here we will expose our service via a TCP socket
#  - Web-service will run as a single thread, on port 9090

handler = CalculatorHandler.new()
processor = Calculator::Processor.new(handler)
transport = Thrift::ServerSocket.new(9090)
transportFactory = Thrift::BufferedTransportFactory.new()
server = Thrift::SimpleServer.new(processor, transport, transportFactory)
puts "Starting the Calculator server..."
server.serve()
puts "done."
