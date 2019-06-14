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

defmodule GoogleApi.PubSub.V1.Model.PullRequest do
  @moduledoc """
  Request for the `Pull` method.

  ## Attributes

  - maxMessages (integer()): The maximum number of messages returned for this request. The Pub/Sub
  system may return fewer than the number specified. Defaults to `nil`.
  - returnImmediately (boolean()): If this field set to true, the system will respond immediately even if
  it there are no messages available to return in the `Pull` response.
  Otherwise, the system may wait (for a bounded amount of time) until at
  least one message is available, rather than returning no messages. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxMessages => integer(),
          :returnImmediately => boolean()
        }

  field(:maxMessages)
  field(:returnImmediately)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.PullRequest do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.PullRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.PullRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
