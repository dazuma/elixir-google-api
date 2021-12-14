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

defmodule GoogleApi.MyBusinessBusinessInformation.V1.Model.RelationshipData do
  @moduledoc """
  Information of all parent and children locations related to this one.

  ## Attributes

  *   `childrenLocations` (*type:* `list(GoogleApi.MyBusinessBusinessInformation.V1.Model.RelevantLocation.t)`, *default:* `nil`) - The list of children locations that this location has relations with.
  *   `parentChain` (*type:* `String.t`, *default:* `nil`) - The resource name of the Chain that this location is member of. How to find Chain ID
  *   `parentLocation` (*type:* `GoogleApi.MyBusinessBusinessInformation.V1.Model.RelevantLocation.t`, *default:* `nil`) - The parent location that this location has relations with.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childrenLocations =>
            list(GoogleApi.MyBusinessBusinessInformation.V1.Model.RelevantLocation.t()) | nil,
          :parentChain => String.t() | nil,
          :parentLocation =>
            GoogleApi.MyBusinessBusinessInformation.V1.Model.RelevantLocation.t() | nil
        }

  field(:childrenLocations,
    as: GoogleApi.MyBusinessBusinessInformation.V1.Model.RelevantLocation,
    type: :list
  )

  field(:parentChain)
  field(:parentLocation, as: GoogleApi.MyBusinessBusinessInformation.V1.Model.RelevantLocation)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.RelationshipData do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessInformation.V1.Model.RelationshipData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.RelationshipData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end