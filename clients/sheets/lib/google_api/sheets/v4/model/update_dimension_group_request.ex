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

defmodule GoogleApi.Sheets.V4.Model.UpdateDimensionGroupRequest do
  @moduledoc """
  Updates the state of the specified group.

  ## Attributes

  *   `dimensionGroup` (*type:* `GoogleApi.Sheets.V4.Model.DimensionGroup.t`, *default:* `nil`) - The group whose state should be updated. The range and depth of the group
      should specify a valid group on the sheet, and all other fields updated.
  *   `fields` (*type:* `String.t`, *default:* `nil`) - The fields that should be updated.  At least one field must be specified.
      The root `dimensionGroup` is implied and should not be specified.
      A single `"*"` can be used as short-hand for listing every field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionGroup => GoogleApi.Sheets.V4.Model.DimensionGroup.t(),
          :fields => String.t()
        }

  field(:dimensionGroup, as: GoogleApi.Sheets.V4.Model.DimensionGroup)
  field(:fields)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateDimensionGroupRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.UpdateDimensionGroupRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateDimensionGroupRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
