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

defmodule GoogleApi.Sheets.V4.Model.BatchGetValuesByDataFilterResponse do
  @moduledoc """
  The response when retrieving more than one range of values in a spreadsheet
  selected by DataFilters.

  ## Attributes

  *   `spreadsheetId` (*type:* `String.t`, *default:* `nil`) - The ID of the spreadsheet the data was retrieved from.
  *   `valueRanges` (*type:* `list(GoogleApi.Sheets.V4.Model.MatchedValueRange.t)`, *default:* `nil`) - The requested values with the list of data filters that matched them.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :spreadsheetId => String.t(),
          :valueRanges => list(GoogleApi.Sheets.V4.Model.MatchedValueRange.t())
        }

  field(:spreadsheetId)
  field(:valueRanges, as: GoogleApi.Sheets.V4.Model.MatchedValueRange, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BatchGetValuesByDataFilterResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BatchGetValuesByDataFilterResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BatchGetValuesByDataFilterResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
