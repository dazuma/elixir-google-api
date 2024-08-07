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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaOidcToken do
  @moduledoc """
  OIDC Token

  ## Attributes

  *   `audience` (*type:* `String.t`, *default:* `nil`) - Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for.
  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - The service account email to be used as the identity for the token.
  *   `token` (*type:* `String.t`, *default:* `nil`) - ID token obtained for the service account
  *   `tokenExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - The approximate time until the token retrieved is valid.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audience => String.t() | nil,
          :serviceAccountEmail => String.t() | nil,
          :token => String.t() | nil,
          :tokenExpireTime => DateTime.t() | nil
        }

  field(:audience)
  field(:serviceAccountEmail)
  field(:token)
  field(:tokenExpireTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaOidcToken do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaOidcToken.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaOidcToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
