{
  :schema => {
    "$schema" => "http://www.archivesspace.org/archivesspace.json",
    "version" => 1,
    "type" => "object",

    "properties" => {

      "holding_id" => {"type" => "string", "maxLength" => 255, "required" => false},
      "item_id" => {"type" => "string", "maxLength" => 255, "required" => false},
      "exported" => {"type" => "string", "maxLength" => 15, "required" => false}

    },
  },
}
