# config/initializers/high_voltage.rb
HighVoltage.configure do |config|
  config.route_drawer = HighVoltage::RouteDrawers::Root
  # config.routes = false
end