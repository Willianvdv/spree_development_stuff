require 'spree_development_stuff'
require 'rails'

module SpreeDevelopmentStuff
  class Railtie < Rails::Railtie
    railtie_name :spree_development_stuff

    rake_tasks do
      load "tasks/developerize.rake"
    end
  end
end
