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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse do
  @moduledoc """
  Response of the ImportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

  ## Attributes

  *   `errorConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaImportErrorConfig.t`, *default:* `nil`) - Echoes the destination for the complete errors if this field was set in the request.
  *   `errorSamples` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleRpcStatus.t)`, *default:* `nil`) - A sample of errors encountered while processing the request.
  *   `joinedEventsCount` (*type:* `String.t`, *default:* `nil`) - Count of user events imported with complete existing Documents.
  *   `unjoinedEventsCount` (*type:* `String.t`, *default:* `nil`) - Count of user events imported, but with Document information not found in the existing Branch.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaImportErrorConfig.t()
            | nil,
          :errorSamples => list(GoogleApi.DiscoveryEngine.V1.Model.GoogleRpcStatus.t()) | nil,
          :joinedEventsCount => String.t() | nil,
          :unjoinedEventsCount => String.t() | nil
        }

  field(:errorConfig,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaImportErrorConfig
  )

  field(:errorSamples, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleRpcStatus, type: :list)
  field(:joinedEventsCount)
  field(:unjoinedEventsCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
