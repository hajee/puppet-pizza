require 'pathname'
$:.unshift(Pathname.new(__FILE__).dirname.parent.parent)
$:.unshift(Pathname.new(__FILE__).dirname.parent.parent.parent.parent + 'easy_type' + 'lib')
require 'easy_type'
require 'utils/json_access'
require 'utils/pizza'

module Puppet
  newtype(:salami) do
    include EasyType
    include Utils::JsonAccess
    include Utils::Pizza

    desc %q{
      This resource manages the salami you put on your pizza.
    }

    ensurable

    define_type_methods

    parameter :name
    property  :slices

  end
end
