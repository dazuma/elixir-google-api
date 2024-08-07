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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse do
  @moduledoc """
  Response for ListIntegrationVersions.

  ## Attributes

  *   `integrationVersions` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaIntegrationVersion.t)`, *default:* `nil`) - The integrations which match the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `noPermission` (*type:* `boolean()`, *default:* `nil`) - Whether the user has no permission on the version or not.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :integrationVersions =>
            list(
              GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaIntegrationVersion.t()
            )
            | nil,
          :nextPageToken => String.t() | nil,
          :noPermission => boolean() | nil
        }

  field(:integrationVersions,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaIntegrationVersion,
    type: :list
  )

  field(:nextPageToken)
  field(:noPermission)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
