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

defmodule GoogleApi.IAM.V1.Model.QueryGrantableRolesRequest do
  @moduledoc """
  The grantable role query request.

  ## Attributes

  *   `fullResourceName` (*type:* `String.t`, *default:* `nil`) - Required. The full resource name to query from the list of grantable roles. The name follows the Google Cloud Platform resource format. For example, a Cloud Platform project with id `my-project` will be named `//cloudresourcemanager.googleapis.com/projects/my-project`.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Optional limit on the number of roles to include in the response. The default is 300, and the maximum is 2,000.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional pagination token returned in an earlier QueryGrantableRolesResponse.
  *   `view` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fullResourceName => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :view => String.t() | nil
        }

  field(:fullResourceName)
  field(:pageSize)
  field(:pageToken)
  field(:view)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.QueryGrantableRolesRequest do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.QueryGrantableRolesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.QueryGrantableRolesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
