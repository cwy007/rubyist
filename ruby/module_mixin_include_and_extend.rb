module ActsAsField

  def self.included base
    base.include InstanceMethods
    base.extend ClassMethods

    base.class_eval do
      @@acts_as_fields = []
    end
  end

  module ClassMethods
    def field name, path
      result = class_variable_get(:@@acts_as_fields)
      result << name.to_sym
      class_variable_set(:@@acts_as_fields, result)

      define_method(name) do
        case path
        when String
          path.split(".").inject(self.latest_data) { |data, key| data[key] }
        when Proc
          path.call(self)
        end
      end
    end
  end

  module InstanceMethods
    def acts_as_fields
      self.class.class_variable_get :@@acts_as_fields
    end
  end

end

class Device
  include ActsAsField

  field :device_type, "device_type"
  field :battery, "data.battery"
  field :node_info, "data.node_info"

  field :battery_to_text, proc { |device|
    "#{device.battery}%"
  }

  def latest_data
    {
      "data" => {
        "node_info" => "this is a sensor",
        "battery" => 90
      },
      "device_type" => "Sensor"
    }
  end

end

d = Device.new
p d.node_info
p d.battery_to_text
p d.acts_as_fields

