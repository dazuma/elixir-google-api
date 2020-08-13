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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_EndpointMap do
  @moduledoc """
   EndpointMap is used to provide paths for predict/explain/healthcheck to customers. It's an output only field in the version proto which can be only set on the server side. Public endpoints follow the format specified on the user facing doc, and private endpoints are customized for each privately deploymed model/version.

  ## Attributes

  *   `explain` (*type:* `String.t`, *default:* `nil`) - Optional. Http(s) path to send explain requests.
  *   `health` (*type:* `String.t`, *default:* `nil`) - Http(s) path to send health check requests.
  *   `predict` (*type:* `String.t`, *default:* `nil`) - Http(s) path to send prediction requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :explain => String.t(),
          :health => String.t(),
          :predict => String.t()
        }

  field(:explain)
  field(:health)
  field(:predict)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_EndpointMap do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_EndpointMap.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_EndpointMap do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
