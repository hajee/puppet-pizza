require 'pathname'
require 'yaml'

$:.unshift(Pathname.new(__FILE__).dirname.parent.parent)
$:.unshift(Pathname.new(__FILE__).dirname.parent.parent.parent.parent + 'easy_type' + 'lib')
require 'easy_type'
require 'utils/json_access'
require 'utils/pizza'

module Puppet
  #
  # Create a new type oracle_user. Oracle user, works in conjunction 
  # with the SqlResource provider
  #
  newtype(:cheese) do
    include EasyType
    include Utils::JsonAccess
    include Utils::Pizza

    desc %q{
      This resource manages the cheese you put on your pizza.
    }

    ensurable

    define_type_methods


    parameter :name
    property  :amount
    property  :type

  end
end
