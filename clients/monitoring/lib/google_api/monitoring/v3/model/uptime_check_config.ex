# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Monitoring.V3.Model.UptimeCheckConfig do
  @moduledoc """
  This message configures which resources and services to monitor for availability.

  ## Attributes

  - contentMatchers (list(GoogleApi.Monitoring.V3.Model.ContentMatcher.t)): The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required. Defaults to `nil`.
  - displayName (String.t): A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced. Required. Defaults to `nil`.
  - httpCheck (GoogleApi.Monitoring.V3.Model.HttpCheck.t): Contains information needed to make an HTTP or HTTPS check. Defaults to `nil`.
  - internalCheckers (list(GoogleApi.Monitoring.V3.Model.InternalChecker.t)): The internal checkers that this check will egress from. If is_internal is true and this list is empty, the check will egress from all the InternalCheckers configured for the project that owns this CheckConfig. Defaults to `nil`.
  - monitoredResource (GoogleApi.Monitoring.V3.Model.MonitoredResource.t): The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are supported for uptime checks:  uptime_url  gce_instance  gae_app  aws_ec2_instance  aws_elb_load_balancer Defaults to `nil`.
  - name (String.t): A unique resource name for this UptimeCheckConfig. The format is:projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID].This field should be omitted when creating the uptime check configuration; on create, the resource name is assigned by the server and included in the response. Defaults to `nil`.
  - period (String.t): How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s. Defaults to `nil`.
  - resourceGroup (GoogleApi.Monitoring.V3.Model.ResourceGroup.t): The group resource associated with the configuration. Defaults to `nil`.
  - selectedRegions (list(String.t)): The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions. Defaults to `nil`.
  - tcpCheck (GoogleApi.Monitoring.V3.Model.TcpCheck.t): Contains information needed to make a TCP check. Defaults to `nil`.
  - timeout (String.t): The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Required. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentMatchers => list(GoogleApi.Monitoring.V3.Model.ContentMatcher.t()),
          :displayName => String.t(),
          :httpCheck => GoogleApi.Monitoring.V3.Model.HttpCheck.t(),
          :internalCheckers => list(GoogleApi.Monitoring.V3.Model.InternalChecker.t()),
          :monitoredResource => GoogleApi.Monitoring.V3.Model.MonitoredResource.t(),
          :name => String.t(),
          :period => String.t(),
          :resourceGroup => GoogleApi.Monitoring.V3.Model.ResourceGroup.t(),
          :selectedRegions => list(String.t()),
          :tcpCheck => GoogleApi.Monitoring.V3.Model.TcpCheck.t(),
          :timeout => String.t()
        }

  field(:contentMatchers, as: GoogleApi.Monitoring.V3.Model.ContentMatcher, type: :list)
  field(:displayName)
  field(:httpCheck, as: GoogleApi.Monitoring.V3.Model.HttpCheck)
  field(:internalCheckers, as: GoogleApi.Monitoring.V3.Model.InternalChecker, type: :list)
  field(:monitoredResource, as: GoogleApi.Monitoring.V3.Model.MonitoredResource)
  field(:name)
  field(:period)
  field(:resourceGroup, as: GoogleApi.Monitoring.V3.Model.ResourceGroup)
  field(:selectedRegions, type: :list)
  field(:tcpCheck, as: GoogleApi.Monitoring.V3.Model.TcpCheck)
  field(:timeout)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.UptimeCheckConfig do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.UptimeCheckConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.UptimeCheckConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
