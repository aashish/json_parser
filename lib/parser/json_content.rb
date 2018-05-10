require 'json'
require 'ostruct'

module Parser
  class JsonContent
    def initialize(file_path)
      @file_path = file_path
      read_json_file
    end

    def read_json_file
      @file = File.read(@file_path)
    end

    def parse
      @file = @file.to_s.tr('-', '_')
      @open_struct_object = JSON.parse(@file, object_class: OpenStruct)
    end
  end
end
