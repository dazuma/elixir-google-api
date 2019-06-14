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

defmodule GoogleApi.Monitoring.V3.Model.Option do
  @moduledoc """
  A protocol buffer option, which can be attached to a message, field, enumeration, etc.

  ## Attributes

  - name (String.t): The option's name. For protobuf built-in options (options defined in descriptor.proto), this is the short name. For example, "map_entry". For custom options, it should be the fully-qualified name. For example, "google.api.http". Defaults to `nil`.
  - value (map()): The option's value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google/protobuf/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :value => map()
        }

  field(:name)
  field(:value, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Option do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.Option.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Option do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
