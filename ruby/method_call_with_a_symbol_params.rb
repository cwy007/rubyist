# config/initializers/wrap_parameters.rb
# :action_controller 符号 symbol 作为参数的作用？
ActiveSupport.on_load(:action_controller) do
  wrap_parameters format: [:json]
end


class CreateJoinTableCustomerProduct < ActiveRecord::Migration[5.0]
  def change
    create_join_table :customers, :products do |t| # 以符号 symbol 为参数的方法调用 ？方法是如何定义的，这样定义有何好处？
      # t.index [:customer_id, :product_id] # 这样在两个字段上加索引，有何好处
      # t.index [:product_id, :customer_id]
    end
  end
end