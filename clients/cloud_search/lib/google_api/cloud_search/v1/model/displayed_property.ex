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

defmodule GoogleApi.CloudSearch.V1.Model.DisplayedProperty do
  @moduledoc """
  A reference to a top-level property within the object that should be displayed in search results. The values of the chosen properties is displayed in the search results along with the display label for that property if one is specified. If a display label is not specified, only the values is shown.

  ## Attributes

  *   `propertyName` (*type:* `String.t`, *default:* `nil`) - The name of the top-level property as defined in a property definition for the object. If the name is not a defined property in the schema, an error is given when attempting to update the schema.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :propertyName => String.t() | nil
        }

  field(:propertyName)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.DisplayedProperty do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.DisplayedProperty.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.DisplayedProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
