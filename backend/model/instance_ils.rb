class InstanceILS < Sequel::Model(:instance_ils)
  include ASModel
  corresponds_to JSONModel(:instance_ils)

  set_model_scope :global

end
