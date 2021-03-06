require File.expand_path(File.join(File.dirname(__FILE__), "formotion/version"))
require 'bubble-wrap/core'
require 'bubble-wrap/font'
require 'bubble-wrap/camera'

Motion::Project::App.setup do |app|
  app.frameworks<<'CoreLocation' unless app.frameworks.include?('CoreLocation')
  app.frameworks<<'MapKit' unless app.frameworks.include?('MapKit')
  
  app.resources_dirs << File.join(File.dirname(__FILE__), '../resources')

  Dir.glob(File.join(File.dirname(__FILE__), 'formotion/**/*.rb')).each do |file|
    app.files.unshift(file)
  end

end
