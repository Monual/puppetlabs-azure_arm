require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_express_route_cross_connection_peering) do
  @doc = "Peering in an ExpressRoute Cross Connection resource."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_express_route_cross_connection_peering you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "A unique read-only string that changes whenever the resource is updated."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Resource ID."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Gets name of the resource that is unique within a resource group. This name can be used to access the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc ""
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client API version."
    validate do |value|
      true
    end
  end
  newparam(:cross_connection_name) do
    desc "The name of the ExpressRouteCrossConnection."
    validate do |value|
      true
    end
  end
  newparam(:peering_name) do
    desc "The name of the peering."
    validate do |value|
      true
    end
  end
  newparam(:peering_parameters) do
    desc "Parameters supplied to the create or update ExpressRouteCrossConnection peering operation."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
