require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_app_service_environment_resource) do
  @doc = "App Service Environment ARM resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :hosting_environment_envelope,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_app_service_environment_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id."
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "Kind of resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource Location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource Name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Core resource properties"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Resource tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "API Version"
    validate do |value|
      true
    end
  end
  newparam(:hosting_environment_envelope) do
    desc "Configuration details of the App Service Environment."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group to which the resource belongs."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)."
    validate do |value|
      true
    end
  end
end
