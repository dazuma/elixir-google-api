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

defmodule GoogleApi.Sheets.V4.Model.FilterCriteria do
  @moduledoc """
  Criteria for showing/hiding rows in a filter or filter view.

  ## Attributes

  *   `condition` (*type:* `GoogleApi.Sheets.V4.Model.BooleanCondition.t`, *default:* `nil`) - A condition that must be true for values to be shown.
      (This does not override hiddenValues -- if a value is listed there,
       it will still be hidden.)
  *   `hiddenValues` (*type:* `list(String.t)`, *default:* `nil`) - Values that should be hidden.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => GoogleApi.Sheets.V4.Model.BooleanCondition.t(),
          :hiddenValues => list(String.t())
        }

  field(:condition, as: GoogleApi.Sheets.V4.Model.BooleanCondition)
  field(:hiddenValues, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.FilterCriteria do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.FilterCriteria.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.FilterCriteria do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
