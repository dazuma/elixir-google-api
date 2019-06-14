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

defmodule GoogleApi.IAMCredentials.V1.Model.GenerateAccessTokenRequest do
  @moduledoc """


  ## Attributes

  - delegates (list(String.t)): The sequence of service accounts in a delegation chain. Each service
  account must be granted the `roles/iam.serviceAccountTokenCreator` role
  on its next service account in the chain. The last service account in the
  chain must be granted the `roles/iam.serviceAccountTokenCreator` role
  on the service account that is specified in the `name` field of the
  request.

  The delegates must have the following format:
  `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`. The `-` wildcard
  character is required; replacing it with a project ID is invalid. Defaults to `nil`.
  - lifetime (String.t): The desired lifetime duration of the access token in seconds.
  Must be set to a value less than or equal to 3600 (1 hour). If a value is
  not specified, the token's lifetime will be set to a default value of one
  hour. Defaults to `nil`.
  - scope (list(String.t)): Code to identify the scopes to be included in the OAuth 2.0 access token.
  See https://developers.google.com/identity/protocols/googlescopes for more
  information.
  At least one value required. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :delegates => list(String.t()),
          :lifetime => String.t(),
          :scope => list(String.t())
        }

  field(:delegates, type: :list)
  field(:lifetime)
  field(:scope, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.IAMCredentials.V1.Model.GenerateAccessTokenRequest do
  def decode(value, options) do
    GoogleApi.IAMCredentials.V1.Model.GenerateAccessTokenRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAMCredentials.V1.Model.GenerateAccessTokenRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
