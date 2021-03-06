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

defmodule GoogleApi.Discovery.V1.Model.JsonSchemaAnnotations do
  @moduledoc """
  Additional information about this property.

  ## Attributes

  *   `required` (*type:* `list(String.t)`, *default:* `nil`) - A list of methods for which this property is required on requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :required => list(String.t()) | nil
        }

  field(:required, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Discovery.V1.Model.JsonSchemaAnnotations do
  def decode(value, options) do
    GoogleApi.Discovery.V1.Model.JsonSchemaAnnotations.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Discovery.V1.Model.JsonSchemaAnnotations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
