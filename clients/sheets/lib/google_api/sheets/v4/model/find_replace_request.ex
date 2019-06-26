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

defmodule GoogleApi.Sheets.V4.Model.FindReplaceRequest do
  @moduledoc """
  Finds and replaces data in cells over a range, sheet, or all sheets.

  ## Attributes

  *   `allSheets` (*type:* `boolean()`, *default:* `nil`) - True to find/replace over all sheets.
  *   `find` (*type:* `String.t`, *default:* `nil`) - The value to search.
  *   `includeFormulas` (*type:* `boolean()`, *default:* `nil`) - True if the search should include cells with formulas.
      False to skip cells with formulas.
  *   `matchCase` (*type:* `boolean()`, *default:* `nil`) - True if the search is case sensitive.
  *   `matchEntireCell` (*type:* `boolean()`, *default:* `nil`) - True if the find value should match the entire cell.
  *   `range` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - The range to find/replace over.
  *   `replacement` (*type:* `String.t`, *default:* `nil`) - The value to use as the replacement.
  *   `searchByRegex` (*type:* `boolean()`, *default:* `nil`) - True if the find value is a regex.
      The regular expression and replacement should follow Java regex rules
      at https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html.
      The replacement string is allowed to refer to capturing groups.
      For example, if one cell has the contents `"Google Sheets"` and another
      has `"Google Docs"`, then searching for `"o.* (.*)"` with a replacement of
      `"$1 Rocks"` would change the contents of the cells to
      `"GSheets Rocks"` and `"GDocs Rocks"` respectively.
  *   `sheetId` (*type:* `integer()`, *default:* `nil`) - The sheet to find/replace over.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allSheets => boolean(),
          :find => String.t(),
          :includeFormulas => boolean(),
          :matchCase => boolean(),
          :matchEntireCell => boolean(),
          :range => GoogleApi.Sheets.V4.Model.GridRange.t(),
          :replacement => String.t(),
          :searchByRegex => boolean(),
          :sheetId => integer()
        }

  field(:allSheets)
  field(:find)
  field(:includeFormulas)
  field(:matchCase)
  field(:matchEntireCell)
  field(:range, as: GoogleApi.Sheets.V4.Model.GridRange)
  field(:replacement)
  field(:searchByRegex)
  field(:sheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.FindReplaceRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.FindReplaceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.FindReplaceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
