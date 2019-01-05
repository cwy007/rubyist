# config/initializers/wrap_parameters.rb
# :action_controller 符号 symbol 作为参数的作用？
ActiveSupport.on_load(:action_controller) do
  wrap_parameters format: [:json]
end
