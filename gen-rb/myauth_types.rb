#
# Autogenerated by Thrift Compiler (0.9.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

module MyAuth
  module LoginStatus
    SUCCESS = 0
    FAIL = 1
    VALUE_MAP = {0 => "SUCCESS", 1 => "FAIL"}
    VALID_VALUES = Set.new([SUCCESS, FAIL]).freeze
  end

  class User
    include ::Thrift::Struct, ::Thrift::Struct_Union
    USERNAME = 1
    PASSWORD = 2

    FIELDS = {
      USERNAME => {:type => ::Thrift::Types::STRING, :name => 'username'},
      PASSWORD => {:type => ::Thrift::Types::STRING, :name => 'password'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end
