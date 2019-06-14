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

defmodule GoogleApi.Monitoring.V3.Model.Status do
  @moduledoc """
  The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).

  ## Attributes

  - code (integer()): The status code, which should be an enum value of google.rpc.Code. Defaults to `nil`.
  - details (list(map())): A list of messages that carry the error details. There is a common set of message types for APIs to use. Defaults to `nil`.
  - message (String.t): A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => integer(),
          :details => list(map()),
          :message => String.t()
        }

  field(:code)
  field(:details, type: :list)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Status do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.Status.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Status do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
