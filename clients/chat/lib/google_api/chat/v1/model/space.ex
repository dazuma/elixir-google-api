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

defmodule GoogleApi.Chat.V1.Model.Space do
  @moduledoc """
  A room or DM in Hangouts Chat.

  ## Attributes

  - displayName (String.t): Output only. The display name (only if the space is a room). Defaults to `nil`.
  - name (String.t): Resource name of the space, in the form "spaces/*".

  Example: spaces/AAAAMpdlehYs Defaults to `nil`.
  - type (String.t): Output only. The type of a space. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :name => String.t(),
          :type => String.t()
        }

  field(:displayName)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Space do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Space.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Space do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
