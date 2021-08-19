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

defmodule GoogleApi.File.V1.Model.ListInstancesResponse do
  @moduledoc """
  ListInstancesResponse is the result of ListInstancesRequest.

  ## Attributes

  *   `instances` (*type:* `list(GoogleApi.File.V1.Model.Instance.t)`, *default:* `nil`) - A list of instances in the project for the specified location. If the `{location}` value in the request is "-", the response contains a list of instances from all locations. If any location is unreachable, the response will only return instances in reachable locations and the "unreachable" field will be populated with a list of unreachable locations.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token you can use to retrieve the next page of results. Not returned if there are no more results in the list.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instances => list(GoogleApi.File.V1.Model.Instance.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:instances, as: GoogleApi.File.V1.Model.Instance, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.File.V1.Model.ListInstancesResponse do
  def decode(value, options) do
    GoogleApi.File.V1.Model.ListInstancesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.File.V1.Model.ListInstancesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
