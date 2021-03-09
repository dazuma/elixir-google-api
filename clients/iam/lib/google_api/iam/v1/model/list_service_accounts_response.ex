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

defmodule GoogleApi.IAM.V1.Model.ListServiceAccountsResponse do
  @moduledoc """
  The service account list response.

  ## Attributes

  *   `accounts` (*type:* `list(GoogleApi.IAM.V1.Model.ServiceAccount.t)`, *default:* `nil`) - The list of matching service accounts.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - To retrieve the next page of results, set ListServiceAccountsRequest.page_token to this value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accounts => list(GoogleApi.IAM.V1.Model.ServiceAccount.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:accounts, as: GoogleApi.IAM.V1.Model.ServiceAccount, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.ListServiceAccountsResponse do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.ListServiceAccountsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.ListServiceAccountsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
