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

defmodule GoogleApi.File.V1.Model.Instance do
  @moduledoc """
  A Filestore instance.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the instance was created.
  *   `deletionProtectionEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates whether the instance is protected against deletion.
  *   `deletionProtectionReason` (*type:* `String.t`, *default:* `nil`) - Optional. The reason for enabling deletion protection.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the instance (2048 characters or less).
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting each other.
  *   `fileShares` (*type:* `list(GoogleApi.File.V1.Model.FileShareConfig.t)`, *default:* `nil`) - File system shares on the instance. For this version, only a single file share is supported.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - KMS key name used for data encryption.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Resource labels to represent user provided metadata.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{instance}`.
  *   `networks` (*type:* `list(GoogleApi.File.V1.Model.NetworkConfig.t)`, *default:* `nil`) - VPC networks to which the instance is connected. For this version, only a single network is supported.
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
  *   `replication` (*type:* `GoogleApi.File.V1.Model.Replication.t`, *default:* `nil`) - Optional. Replication configuration.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The instance state.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the instance state, if available.
  *   `suspensionReasons` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Field indicates all the reasons the instance is in "SUSPENDED" state.
  *   `tags` (*type:* `map()`, *default:* `nil`) - Optional. Input only. Immutable. Tag key-value pairs are bound to this resource. For example: "123/environment": "production", "123/costCenter": "marketing"
  *   `tier` (*type:* `String.t`, *default:* `nil`) - The service tier of the instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :deletionProtectionEnabled => boolean() | nil,
          :deletionProtectionReason => String.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :fileShares => list(GoogleApi.File.V1.Model.FileShareConfig.t()) | nil,
          :kmsKeyName => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :networks => list(GoogleApi.File.V1.Model.NetworkConfig.t()) | nil,
          :protocol => String.t() | nil,
          :replication => GoogleApi.File.V1.Model.Replication.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :state => String.t() | nil,
          :statusMessage => String.t() | nil,
          :suspensionReasons => list(String.t()) | nil,
          :tags => map() | nil,
          :tier => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:deletionProtectionEnabled)
  field(:deletionProtectionReason)
  field(:description)
  field(:etag)
  field(:fileShares, as: GoogleApi.File.V1.Model.FileShareConfig, type: :list)
  field(:kmsKeyName)
  field(:labels, type: :map)
  field(:name)
  field(:networks, as: GoogleApi.File.V1.Model.NetworkConfig, type: :list)
  field(:protocol)
  field(:replication, as: GoogleApi.File.V1.Model.Replication)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:state)
  field(:statusMessage)
  field(:suspensionReasons, type: :list)
  field(:tags, type: :map)
  field(:tier)
end

defimpl Poison.Decoder, for: GoogleApi.File.V1.Model.Instance do
  def decode(value, options) do
    GoogleApi.File.V1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.File.V1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
