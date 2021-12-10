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

defmodule GoogleApi.APIKeys.V2.Model.V2Key do
  @moduledoc """
  The representation of a key managed by the API Keys API.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. A timestamp identifying the time this key was originally created.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. A timestamp when this key was deleted. If the resource is not deleted, this must be empty.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Human-readable display name of this key that you can modify. The maximum length is 63 characters.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A checksum computed by the server based on the current value of the Key resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `keyString` (*type:* `String.t`, *default:* `nil`) - Output only. An encrypted and signed value held by this key. This field can be accessed only through the `GetKeyString` method.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the key. The `name` has the form: `projects//locations/global/keys/`. For example: `projects/123456867718/locations/global/keys/b7ff1f9f-8275-410a-94dd-3855ee9b5dd2` NOTE: Key is a global resource; hence the only supported value for location is `global`.
  *   `restrictions` (*type:* `GoogleApi.APIKeys.V2.Model.V2Restrictions.t`, *default:* `nil`) - Key restrictions.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Unique id in UUID4 format.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. A timestamp identifying the time this key was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :keyString => String.t() | nil,
          :name => String.t() | nil,
          :restrictions => GoogleApi.APIKeys.V2.Model.V2Restrictions.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:displayName)
  field(:etag)
  field(:keyString)
  field(:name)
  field(:restrictions, as: GoogleApi.APIKeys.V2.Model.V2Restrictions)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.APIKeys.V2.Model.V2Key do
  def decode(value, options) do
    GoogleApi.APIKeys.V2.Model.V2Key.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.APIKeys.V2.Model.V2Key do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end