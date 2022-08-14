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

defmodule GoogleApi.CloudSearch.V1.Model.TrustedResourceUrlProto do
  @moduledoc """
  Message containing a string that is safe to use in all URL contexts in DOM APIs and HTML documents; even where the referred-to resource is interpreted as code, e.g., as the src of a script element.

  ## Attributes

  *   `privateDoNotAccessOrElseTrustedResourceUrlWrappedValue` (*type:* `String.t`, *default:* `nil`) - IMPORTANT: Never set or read this field, even from tests, it is private. See documentation at the top of .proto file for programming language packages with which to create or read this message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :privateDoNotAccessOrElseTrustedResourceUrlWrappedValue => String.t() | nil
        }

  field(:privateDoNotAccessOrElseTrustedResourceUrlWrappedValue)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.TrustedResourceUrlProto do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.TrustedResourceUrlProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.TrustedResourceUrlProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end