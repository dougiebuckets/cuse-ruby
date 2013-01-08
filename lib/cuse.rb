# "open" Kernel module, that's where the `puts` lives.
module Kernel
  # our new puts
  def puts_with_append *args
  	puts_without_append args.map{|a| a + " Let's Go Orange!"}
  end

  # back up name of old puts
  alias_method :puts_without_append, :puts

  # now set our version as new puts
  alias_method :puts, :puts_with_append
end