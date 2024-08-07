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

defmodule GoogleApi.Classroom.V1.Model.EmbedUri do
  @moduledoc """
  URI to be iframed after being populated with query parameters.

  ## Attributes

  *   `uri` (*type:* `String.t`, *default:* `nil`) - Required. URI to be iframed after being populated with query parameters. This must be a valid UTF-8 string containing between 1 and 1800 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uri => String.t() | nil
        }

  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.EmbedUri do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.EmbedUri.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.EmbedUri do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
