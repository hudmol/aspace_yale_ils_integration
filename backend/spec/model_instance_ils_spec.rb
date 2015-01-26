require 'spec_helper'

describe 'Instance with ILS model' do

  it "allows an instance to be created with an ILS sub-record" do
    opts = {:instances => [{
         "instance_type" => generate(:instance_type),
         "instance_ils" => {"holding_id" => "1234"},
         "container" => build(:json_container)
                           }]}
    
       ao = ArchivalObject.create_from_json(
                                             build(:json_archival_object, opts),
                                             :repo_id => $repo_id)

    ArchivalObject[ao[:id]].instance.length.should eq(1)
    ArchivalObject[ao[:id]].instance[0].instance_ils.holding_id.should eq("1234")
  end

end
