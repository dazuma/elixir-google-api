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

defmodule GoogleApi.Domains.V1beta1.Model.GeoPolicy do
  @moduledoc """
  Configures a `RRSetRoutingPolicy` that routes based on the geo location of the querying user.

  ## Attributes

  *   `enableFencing` (*type:* `boolean()`, *default:* `nil`) - Without fencing, if health check fails for all configured items in the current geo bucket, we failover to the next nearest geo bucket. With fencing, if health checking is enabled, as long as some targets in the current geo bucket are healthy, we return only the healthy targets. However, if all targets are unhealthy, we don't failover to the next nearest bucket; instead, we return all the items in the current bucket even when all targets are unhealthy.
  *   `item` (*type:* `list(GoogleApi.Domains.V1beta1.Model.GeoPolicyItem.t)`, *default:* `nil`) - The primary geo routing configuration. If there are multiple items with the same location, an error is returned instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableFencing => boolean() | nil,
          :item => list(GoogleApi.Domains.V1beta1.Model.GeoPolicyItem.t()) | nil
        }

  field(:enableFencing)
  field(:item, as: GoogleApi.Domains.V1beta1.Model.GeoPolicyItem, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1beta1.Model.GeoPolicy do
  def decode(value, options) do
    GoogleApi.Domains.V1beta1.Model.GeoPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1beta1.Model.GeoPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
