require 'net-telnet'

class RubyMas
  def initialize(hash)
    @connection = hash
  end

  def test_connect
    telnet.cmd(@connection[:user]) {|c| print c}
    telnet.cmd(@connection[:password]) {|c| print c}
    telnet.close
  end

  private
  def telnet
    @telnet ||= Net::Telnet::new("Host"    => @connection[:host],
                                 "Timeout" => 5
                                 )
  end
end