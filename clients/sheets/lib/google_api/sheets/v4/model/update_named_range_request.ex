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

defmodule GoogleApi.Sheets.V4.Model.UpdateNamedRangeRequest do
  @moduledoc """
  Updates properties of the named range with the specified
  namedRangeId.

  ## Attributes

  *   `fields` (*type:* `String.t`, *default:* `nil`) - The fields that should be updated.  At least one field must be specified.
      The root `namedRange` is implied and should not be specified.
      A single `"*"` can be used as short-hand for listing every field.
  *   `namedRange` (*type:* `GoogleApi.Sheets.V4.Model.NamedRange.t`, *default:* `nil`) - The named range to update with the new properties.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => String.t(),
          :namedRange => GoogleApi.Sheets.V4.Model.NamedRange.t()
        }

  field(:fields)
  field(:namedRange, as: GoogleApi.Sheets.V4.Model.NamedRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateNamedRangeRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.UpdateNamedRangeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateNamedRangeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
