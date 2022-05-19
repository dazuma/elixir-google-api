# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Compute.V1.Model.ForwardingRule do
  @moduledoc """
  Represents a Forwarding Rule resource. Forwarding rule resources in Google Cloud can be either regional or global in scope: * [Global](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules) * [Regional](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules) A forwarding rule and its corresponding IP address represent the frontend configuration of a Google Cloud Platform load balancer. Forwarding rules can also reference target instances and Cloud VPN Classic gateways (targetVpnGateway). For more information, read Forwarding rule concepts and Using protocol forwarding.

  ## Attributes

  *   `IPAddress` (*type:* `String.t`, *default:* `nil`) - IP address for which this forwarding rule accepts traffic. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the referenced target or backendService. While creating a forwarding rule, specifying an IPAddress is required under the following circumstances: - When the target is set to targetGrpcProxy and validateForProxyless is set to true, the IPAddress should be set to 0.0.0.0. - When the target is a Private Service Connect Google APIs bundle, you must specify an IPAddress. Otherwise, you can optionally specify an IP address that references an existing static (reserved) IP address resource. When omitted, Google Cloud assigns an ephemeral IP address. Use one of the following formats to specify an IP address while creating a forwarding rule: * IP address number, as in `100.1.2.3` * Full resource URL, as in https://www.googleapis.com/compute/v1/projects/project_id/regions/region /addresses/address-name * Partial URL or by name, as in: - projects/project_id/regions/region/addresses/address-name - regions/region/addresses/address-name - global/addresses/address-name - address-name The forwarding rule's target or backendService, and in most cases, also the loadBalancingScheme, determine the type of IP address that you can use. For detailed information, see [IP address specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When reading an IPAddress, the API always returns the IP address number.
  *   `IPProtocol` (*type:* `String.t`, *default:* `nil`) - The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  *   `allPorts` (*type:* `boolean()`, *default:* `nil`) - This field is used along with the backend_service field for Internal TCP/UDP Load Balancing or Network Load Balancing, or with the target field for internal and external TargetInstance. You can only use one of ports and port_range, or allPorts. The three are mutually exclusive. For TCP, UDP and SCTP traffic, packets addressed to any ports will be forwarded to the target or backendService.
  *   `allowGlobalAccess` (*type:* `boolean()`, *default:* `nil`) - This field is used along with the backend_service field for internal load balancing or with the target field for internal TargetInstance. If the field is set to TRUE, clients can access ILB from all regions. Otherwise only allows access from clients in the same region as the internal load balancer.
  *   `backendService` (*type:* `String.t`, *default:* `nil`) - Identifies the backend service to which the forwarding rule sends traffic. Required for Internal TCP/UDP Load Balancing and Network Load Balancing; must be omitted for all other load balancer types.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a ForwardingRule. Include the fingerprint in patch request to ensure that you do not overwrite changes that were applied from another concurrent request. To see the latest fingerprint, make a get() request to retrieve a ForwardingRule.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `ipVersion` (*type:* `String.t`, *default:* `nil`) - The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6. This can only be specified for an external global forwarding rule.
  *   `isMirroringCollector` (*type:* `boolean()`, *default:* `nil`) - Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a PacketMirroring rule applies to them. This can only be set to true for load balancers that have their loadBalancingScheme set to INTERNAL.
  *   `kind` (*type:* `String.t`, *default:* `compute#forwardingRule`) - [Output Only] Type of the resource. Always compute#forwardingRule for Forwarding Rule resources.
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - A fingerprint for the labels being applied to this resource, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a ForwardingRule.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  *   `loadBalancingScheme` (*type:* `String.t`, *default:* `nil`) - Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
  *   `metadataFilters` (*type:* `list(GoogleApi.Compute.V1.Model.MetadataFilter.t)`, *default:* `nil`) - Opaque filter criteria used by load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to load balancer, xDS clients present node metadata. When there is a match, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. TargetHttpProxy, UrlMap) referenced by the ForwardingRule are not visible to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadataFilters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here will be applifed before those specified in the UrlMap that this ForwardingRule references. metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. For Private Service Connect forwarding rules that forward traffic to Google APIs, the forwarding rule name must be a 1-20 characters string with lowercase letters and numbers and must start with a letter.
  *   `network` (*type:* `String.t`, *default:* `nil`) - This field is not used for external load balancing. For Internal TCP/UDP Load Balancing, this field identifies the network that the load balanced IP should belong to for this Forwarding Rule. If this field is not specified, the default network will be used. For Private Service Connect forwarding rules that forward traffic to Google APIs, a network must be provided.
  *   `networkTier` (*type:* `String.t`, *default:* `nil`) - This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
  *   `noAutomateDnsZone` (*type:* `boolean()`, *default:* `nil`) - This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field.
  *   `portRange` (*type:* `String.t`, *default:* `nil`) - This field can be used only if: - Load balancing scheme is one of EXTERNAL, INTERNAL_SELF_MANAGED or INTERNAL_MANAGED - IPProtocol is one of TCP, UDP, or SCTP. Packets addressed to ports in the specified range will be forwarded to target or backend_service. You can only use one of ports, port_range, or allPorts. The three are mutually exclusive. Forwarding rules with the same [IPAddress, IPProtocol] pair must have disjoint ports. Some types of forwarding target have constraints on the acceptable ports. For more information, see [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications). @pattern: \\\\d+(?:-\\\\d+)?
  *   `ports` (*type:* `list(String.t)`, *default:* `nil`) - The ports field is only supported when the forwarding rule references a backend_service directly. Only packets addressed to the [specified list of ports]((https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)) are forwarded to backends. You can only use one of ports and port_range, or allPorts. The three are mutually exclusive. You can specify a list of up to five ports, which can be non-contiguous. Forwarding rules with the same [IPAddress, IPProtocol] pair must have disjoint ports. @pattern: \\\\d+(?:-\\\\d+)?
  *   `pscConnectionId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The PSC connection id of the PSC Forwarding Rule.
  *   `pscConnectionStatus` (*type:* `String.t`, *default:* `nil`) - 
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the regional forwarding rule resides. This field is not applicable to global forwarding rules. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `serviceDirectoryRegistrations` (*type:* `list(GoogleApi.Compute.V1.Model.ForwardingRuleServiceDirectoryRegistration.t)`, *default:* `nil`) - Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource.
  *   `serviceLabel` (*type:* `String.t`, *default:* `nil`) - An optional prefix to the service name for this Forwarding Rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with RFC1035. Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing.
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - [Output Only] The internal fully qualified service name for this Forwarding Rule. This field is only used for internal load balancing.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - This field identifies the subnetwork that the load balanced IP should belong to for this Forwarding Rule, used in internal load balancing and network load balancing with IPv6. If the network specified is in auto subnet mode, this field is optional. However, a subnetwork must be specified if the network is in custom subnet mode or when creating external forwarding rule with IPv6.
  *   `target` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :IPAddress => String.t() | nil,
          :IPProtocol => String.t() | nil,
          :allPorts => boolean() | nil,
          :allowGlobalAccess => boolean() | nil,
          :backendService => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :fingerprint => String.t() | nil,
          :id => String.t() | nil,
          :ipVersion => String.t() | nil,
          :isMirroringCollector => boolean() | nil,
          :kind => String.t() | nil,
          :labelFingerprint => String.t() | nil,
          :labels => map() | nil,
          :loadBalancingScheme => String.t() | nil,
          :metadataFilters => list(GoogleApi.Compute.V1.Model.MetadataFilter.t()) | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :networkTier => String.t() | nil,
          :noAutomateDnsZone => boolean() | nil,
          :portRange => String.t() | nil,
          :ports => list(String.t()) | nil,
          :pscConnectionId => String.t() | nil,
          :pscConnectionStatus => String.t() | nil,
          :region => String.t() | nil,
          :selfLink => String.t() | nil,
          :serviceDirectoryRegistrations =>
            list(GoogleApi.Compute.V1.Model.ForwardingRuleServiceDirectoryRegistration.t()) | nil,
          :serviceLabel => String.t() | nil,
          :serviceName => String.t() | nil,
          :subnetwork => String.t() | nil,
          :target => String.t() | nil
        }

  field(:IPAddress)
  field(:IPProtocol)
  field(:allPorts)
  field(:allowGlobalAccess)
  field(:backendService)
  field(:creationTimestamp)
  field(:description)
  field(:fingerprint)
  field(:id)
  field(:ipVersion)
  field(:isMirroringCollector)
  field(:kind)
  field(:labelFingerprint)
  field(:labels, type: :map)
  field(:loadBalancingScheme)
  field(:metadataFilters, as: GoogleApi.Compute.V1.Model.MetadataFilter, type: :list)
  field(:name)
  field(:network)
  field(:networkTier)
  field(:noAutomateDnsZone)
  field(:portRange)
  field(:ports, type: :list)
  field(:pscConnectionId)
  field(:pscConnectionStatus)
  field(:region)
  field(:selfLink)

  field(:serviceDirectoryRegistrations,
    as: GoogleApi.Compute.V1.Model.ForwardingRuleServiceDirectoryRegistration,
    type: :list
  )

  field(:serviceLabel)
  field(:serviceName)
  field(:subnetwork)
  field(:target)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ForwardingRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ForwardingRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ForwardingRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
