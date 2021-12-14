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

defmodule GoogleApi.Domains.V1.Model.ListRegistrationsResponse do
  @moduledoc """
  Response for the `ListRegistrations` method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - When present, there are more results to retrieve. Set `page_token` to this value on a subsequent call to get the next page of results.
  *   `registrations` (*type:* `list(GoogleApi.Domains.V1.Model.Registration.t)`, *default:* `nil`) - A list of `Registration`s.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :registrations => list(GoogleApi.Domains.V1.Model.Registration.t()) | nil
        }

  field(:nextPageToken)
  field(:registrations, as: GoogleApi.Domains.V1.Model.Registration, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1.Model.ListRegistrationsResponse do
  def decode(value, options) do
    GoogleApi.Domains.V1.Model.ListRegistrationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1.Model.ListRegistrationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end