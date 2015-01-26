module InstanceIlss

  def self.included(base)
    base.one_to_one :instance_ils

    base.def_nested_record(:the_property => :instance_ils,
                           :contains_records_of_type => :instance_ils,
                           :corresponding_to_association  => :instance_ils,
                           :is_array => false)
  end

end
