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

defmodule GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffVersionResponse do
  @moduledoc """
  Backend response for a Diff get version response. For details on the Scotty Diff protocol, visit http://go/scotty-diff-protocol.

  ## Attributes

  *   `objectSizeBytes` (*type:* `String.t`, *default:* `nil`) - The total size of the server object.
  *   `objectVersion` (*type:* `String.t`, *default:* `nil`) - The version of the object stored at the server.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :objectSizeBytes => String.t() | nil,
          :objectVersion => String.t() | nil
        }

  field(:objectSizeBytes)
  field(:objectVersion)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffVersionResponse do
  def decode(value, options) do
    GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffVersionResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffVersionResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
