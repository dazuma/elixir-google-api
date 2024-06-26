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

defmodule GoogleApi.Chat.V1.Model.MessageUpdatedEventData do
  @moduledoc """
  Event payload for an updated message. Event type: `google.workspace.chat.message.v1.updated`

  ## Attributes

  *   `message` (*type:* `GoogleApi.Chat.V1.Model.Message.t`, *default:* `nil`) - The updated message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :message => GoogleApi.Chat.V1.Model.Message.t() | nil
        }

  field(:message, as: GoogleApi.Chat.V1.Model.Message)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.MessageUpdatedEventData do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.MessageUpdatedEventData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.MessageUpdatedEventData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
