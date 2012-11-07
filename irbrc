require "pp"
require "rubygems"

# print SQL to STDOUT
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
    require 'logger'
      RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

# Autocomplete
require 'irb/completion'

# Colorize
require 'wirble'
Wirble.init
Wirble.colorize

# Prompt behavior
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

# History
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

class Object
  # Return a list of methods defined locally for a particular object.  Useful
  # for seeing what it does whilst losing all the guff that's implemented
  # by its parents (eg Object).
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end

# Copy a string to the clipboard
def pbcopy(string)
  `echo "#{string}" | pbcopy`
  string
end
