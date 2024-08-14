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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBigtableSource do
  @moduledoc """
  The Cloud Bigtable source for importing data.

  ## Attributes

  *   `bigtableOptions` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBigtableOptions.t`, *default:* `nil`) - Required. Bigtable options that contains information needed when parsing data into typed structures. For example, column type annotations.
  *   `instanceId` (*type:* `String.t`, *default:* `nil`) - Required. The instance ID of the Cloud Bigtable that needs to be imported.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The project ID that contains the Bigtable source. Has a length limit of 128 characters. If not specified, inherits the project ID from the parent request.
  *   `tableId` (*type:* `String.t`, *default:* `nil`) - Required. The table ID of the Cloud Bigtable that needs to be imported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigtableOptions =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBigtableOptions.t()
            | nil,
          :instanceId => String.t() | nil,
          :projectId => String.t() | nil,
          :tableId => String.t() | nil
        }

  field(:bigtableOptions,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBigtableOptions
  )

  field(:instanceId)
  field(:projectId)
  field(:tableId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBigtableSource do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBigtableSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaBigtableSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
