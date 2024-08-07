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

defmodule GoogleApi.Compute.V1.Model.ResourcePolicyGroupPlacementPolicy do
  @moduledoc """
  A GroupPlacementPolicy specifies resource placement configuration. It specifies the failure bucket separation

  ## Attributes

  *   `availabilityDomainCount` (*type:* `integer()`, *default:* `nil`) - The number of availability domains to spread instances across. If two instances are in different availability domain, they are not in the same low latency network.
  *   `collocation` (*type:* `String.t`, *default:* `nil`) - Specifies network collocation
  *   `vmCount` (*type:* `integer()`, *default:* `nil`) - Number of VMs in this placement group. Google does not recommend that you use this field unless you use a compact policy and you want your policy to work only if it contains this exact number of VMs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availabilityDomainCount => integer() | nil,
          :collocation => String.t() | nil,
          :vmCount => integer() | nil
        }

  field(:availabilityDomainCount)
  field(:collocation)
  field(:vmCount)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ResourcePolicyGroupPlacementPolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ResourcePolicyGroupPlacementPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ResourcePolicyGroupPlacementPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
