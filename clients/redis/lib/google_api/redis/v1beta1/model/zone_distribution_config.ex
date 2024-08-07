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

defmodule GoogleApi.Redis.V1beta1.Model.ZoneDistributionConfig do
  @moduledoc """
  Zone distribution config for allocation of cluster resources.

  ## Attributes

  *   `mode` (*type:* `String.t`, *default:* `nil`) - Optional. The mode of zone distribution. Defaults to MULTI_ZONE, when not specified.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Optional. When SINGLE ZONE distribution is selected, zone field would be used to allocate all resources in that zone. This is not applicable to MULTI_ZONE, and would be ignored for MULTI_ZONE clusters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mode => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:mode)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.ZoneDistributionConfig do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.ZoneDistributionConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.ZoneDistributionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
