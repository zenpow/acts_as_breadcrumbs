require 'rubygems'
require 'yaml'
require 'minitest/autorun'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'active_record'
require 'sqlite3'
require 'acts_as_breadcrumbs'
require 'active_support'

def load_schema
  config = YAML::load(IO.read(File.dirname(__FILE__) + '/database.yml'))

  if defined?(ActiveSupport::BufferedLogger)
    ActiveRecord::Base.logger = ActiveSupport::BufferedLogger.new(File.dirname(__FILE__) + "/debug.log")
  else
    ActiveRecord::Base.logger = ActiveSupport::Logger.new(File.dirname(__FILE__) + "/debug.log")
  end

  ActiveRecord::Base.establish_connection(config['sqlite3'])

  load(File.dirname(__FILE__) + "/schema.rb")
end

load_schema
require File.dirname(__FILE__) + '/../init.rb'