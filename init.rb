require 'acts_as_tree'
require 'acts_as_breadcrumbs'

ActiveRecord::Base.send :include, ActsAsTree
ActiveRecord::Base.send :include, ActiveRecord::Acts::Breadcrumbs
