# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Redis.V1beta1.Model.Instance do
  @moduledoc """
  A Google Cloud Redis instance.

  ## Attributes

  - host (String.t): Output only. Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service. Defaults to: `null`.
  - alternativeLocationId (String.t): Optional. Only applicable to STANDARD_HA tier which protects the instance against zonal failures by provisioning it across two zones. If provided, it must be a different zone from the one provided in [location_id]. Defaults to: `null`.
  - authorizedNetwork (String.t): Optional. The full name of the Google Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. If left unspecified, the &#x60;default&#x60; network will be used. Defaults to: `null`.
  - createTime (DateTime.t): Output only. The time the instance was created. Defaults to: `null`.
  - currentLocationId (String.t): Output only. The current zone where the Redis endpoint is placed. For Basic Tier instances, this will always be the same as the [location_id] provided by the user at creation time. For Standard Tier instances, this can be either [location_id] or [alternative_location_id] and can change after a failover event. Defaults to: `null`.
  - displayName (String.t): An arbitrary and optional user-provided name for the instance. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Resource labels to represent user provided metadata Defaults to: `null`.
  - locationId (String.t): Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone for the instance. For STANDARD_HA tier, instances will be created across two zones for protection against zonal failures. If [alternative_location_id] is also provided, it must be different from [location_id]. Defaults to: `null`.
  - memorySizeGb (integer()): Required. Redis memory size in GiB. Defaults to: `null`.
  - name (String.t): Required. Unique name of the resource in this scope including project and location using the form:     &#x60;projects/{project_id}/locations/{location_id}/instances/{instance_id}&#x60;  Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to [location_id] and [alternative_location_id] fields for more details. Defaults to: `null`.
  - persistenceIamIdentity (String.t): Output only. Cloud IAM identity used by import / export operations to transfer data to/from Cloud Storage. Format is \&quot;serviceAccount:&lt;service_account_email&gt;\&quot;. The value may change over time for a given instance so should be checked before each import/export operation. Defaults to: `null`.
  - port (integer()): Output only. The port number of the exposed Redis endpoint. Defaults to: `null`.
  - redisConfigs (%{optional(String.t) &#x3D;&gt; String.t}): Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are:   *   maxmemory-policy  *   notify-keyspace-events Defaults to: `null`.
  - redisVersion (String.t): Optional. The version of Redis software. If not provided, latest supported version will be used. Updating the version will perform an upgrade/downgrade to the new version. Currently, the supported values are &#x60;REDIS_3_2&#x60; for Redis 3.2. Defaults to: `null`.
  - reservedIpRange (String.t): Optional. The CIDR range of internal addresses that are reserved for this instance. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be unique and non-overlapping with existing subnets in an authorized network. Defaults to: `null`.
  - state (String.t): Output only. The current state of this instance. Defaults to: `null`.
    - Enum - one of [STATE_UNSPECIFIED, CREATING, READY, UPDATING, DELETING, REPAIRING, MAINTENANCE, IMPORTING, FAILING_OVER]
  - statusMessage (String.t): Output only. Additional information about the current status of this instance, if available. Defaults to: `null`.
  - tier (String.t): Required. The service tier of the instance. Defaults to: `null`.
    - Enum - one of [TIER_UNSPECIFIED, BASIC, STANDARD_HA]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => any(),
          :alternativeLocationId => any(),
          :authorizedNetwork => any(),
          :createTime => DateTime.t(),
          :currentLocationId => any(),
          :displayName => any(),
          :labels => map(),
          :locationId => any(),
          :memorySizeGb => any(),
          :name => any(),
          :persistenceIamIdentity => any(),
          :port => any(),
          :redisConfigs => map(),
          :redisVersion => any(),
          :reservedIpRange => any(),
          :state => any(),
          :statusMessage => any(),
          :tier => any()
        }

  field(:host)
  field(:alternativeLocationId)
  field(:authorizedNetwork)
  field(:createTime, as: DateTime)
  field(:currentLocationId)
  field(:displayName)
  field(:labels, type: :map)
  field(:locationId)
  field(:memorySizeGb)
  field(:name)
  field(:persistenceIamIdentity)
  field(:port)
  field(:redisConfigs, type: :map)
  field(:redisVersion)
  field(:reservedIpRange)
  field(:state)
  field(:statusMessage)
  field(:tier)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.Instance do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
