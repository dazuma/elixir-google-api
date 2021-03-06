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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1QueryMetadata do
  @moduledoc """


  ## Attributes

  *   `dimensions` (*type:* `list(String.t)`, *default:* `nil`) - Dimensions of the AsyncQuery.
  *   `endTimestamp` (*type:* `String.t`, *default:* `nil`) - End timestamp of the query range.
  *   `metrics` (*type:* `list(String.t)`, *default:* `nil`) - Metrics of the AsyncQuery. Example: ["name:message_count,func:sum,alias:sum_message_count"]
  *   `outputFormat` (*type:* `String.t`, *default:* `nil`) - Output format.
  *   `startTimestamp` (*type:* `String.t`, *default:* `nil`) - Start timestamp of the query range.
  *   `timeUnit` (*type:* `String.t`, *default:* `nil`) - Query GroupBy time unit.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions => list(String.t()) | nil,
          :endTimestamp => String.t() | nil,
          :metrics => list(String.t()) | nil,
          :outputFormat => String.t() | nil,
          :startTimestamp => String.t() | nil,
          :timeUnit => String.t() | nil
        }

  field(:dimensions, type: :list)
  field(:endTimestamp)
  field(:metrics, type: :list)
  field(:outputFormat)
  field(:startTimestamp)
  field(:timeUnit)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1QueryMetadata do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1QueryMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1QueryMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
