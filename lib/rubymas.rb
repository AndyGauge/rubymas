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

  def workorder_report
    connect
    telnet.cmd("7")
    telnet.cmd("2")
    telnet.cmd("WOH_DUMP")
    telnet.cmd("")
    telnet.cmd("*END")
  end


  private
  def telnet
    @telnet ||= Net::Telnet::new("Host"    => @connection[:host],
                                 "Timeout" => 5,
                                 "Prompt"  => //,
                                 "Waittime" => 1
                                 )
  end
  def connect
    telnet.login(@connection[:user], @connection[:password])
    telnet.cmd("")
    telnet.cmd(@connection[:mas_user])
    telnet.cmd(@connection[:mas_pass])
    telnet.cmd("")
    telnet.cmd("") 
  end

  def quick_sleep
    sleep(1.0/24.0)
  end
end