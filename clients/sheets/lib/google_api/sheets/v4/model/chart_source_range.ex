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

defmodule GoogleApi.Sheets.V4.Model.ChartSourceRange do
  @moduledoc """
  Source ranges for a chart.

  ## Attributes

  *   `sources` (*type:* `list(GoogleApi.Sheets.V4.Model.GridRange.t)`, *default:* `nil`) - The ranges of data for a series or domain.
      Exactly one dimension must have a length of 1,
      and all sources in the list must have the same dimension
      with length 1.
      The domain (if it exists) & all series must have the same number
      of source ranges. If using more than one source range, then the source
      range at a given offset must be in order and contiguous across the domain
      and series.

      For example, these are valid configurations:

          domain sources: A1:A5
          series1 sources: B1:B5
          series2 sources: D6:D10

          domain sources: A1:A5, C10:C12
          series1 sources: B1:B5, D10:D12
          series2 sources: C1:C5, E10:E12
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sources => list(GoogleApi.Sheets.V4.Model.GridRange.t())
        }

  field(:sources, as: GoogleApi.Sheets.V4.Model.GridRange, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ChartSourceRange do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ChartSourceRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ChartSourceRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
