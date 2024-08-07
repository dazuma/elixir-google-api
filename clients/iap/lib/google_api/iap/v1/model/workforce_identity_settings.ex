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

defmodule GoogleApi.IAP.V1.Model.WorkforceIdentitySettings do
  @moduledoc """
  WorkforceIdentitySettings allows customers to configure workforce pools and OAuth 2.0 settings to gate their applications using a third-party IdP with access control.

  ## Attributes

  *   `oauth2` (*type:* `GoogleApi.IAP.V1.Model.OAuth2.t`, *default:* `nil`) - OAuth 2.0 settings for IAP to perform OIDC flow with workforce identity federation services.
  *   `workforcePools` (*type:* `list(String.t)`, *default:* `nil`) - The workforce pool resources. Only one workforce pool is accepted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :oauth2 => GoogleApi.IAP.V1.Model.OAuth2.t() | nil,
          :workforcePools => list(String.t()) | nil
        }

  field(:oauth2, as: GoogleApi.IAP.V1.Model.OAuth2)
  field(:workforcePools, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.IAP.V1.Model.WorkforceIdentitySettings do
  def decode(value, options) do
    GoogleApi.IAP.V1.Model.WorkforceIdentitySettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAP.V1.Model.WorkforceIdentitySettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
