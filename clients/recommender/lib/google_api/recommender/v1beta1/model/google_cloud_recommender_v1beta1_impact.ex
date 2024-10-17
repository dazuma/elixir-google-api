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

defmodule GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact do
  @moduledoc """
  Contains the impact a recommendation can have for a given category.

  ## Attributes

  *   `category` (*type:* `String.t`, *default:* `nil`) - Category that is being targeted.
  *   `costProjection` (*type:* `GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1CostProjection.t`, *default:* `nil`) - Use with CategoryType.COST
  *   `impactComponents` (*type:* `list(GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact.t)`, *default:* `nil`) - If populated, the impact contains multiple components. In this case, the top-level impact contains aggregated values and each component contains per-service details.
  *   `reliabilityProjection` (*type:* `GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1ReliabilityProjection.t`, *default:* `nil`) - Use with CategoryType.RELIABILITY
  *   `securityProjection` (*type:* `GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1SecurityProjection.t`, *default:* `nil`) - Use with CategoryType.SECURITY
  *   `service` (*type:* `String.t`, *default:* `nil`) - The service that this impact is associated with.
  *   `sustainabilityProjection` (*type:* `GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1SustainabilityProjection.t`, *default:* `nil`) - Use with CategoryType.SUSTAINABILITY
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => String.t() | nil,
          :costProjection =>
            GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1CostProjection.t()
            | nil,
          :impactComponents =>
            list(GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact.t())
            | nil,
          :reliabilityProjection =>
            GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1ReliabilityProjection.t()
            | nil,
          :securityProjection =>
            GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1SecurityProjection.t()
            | nil,
          :service => String.t() | nil,
          :sustainabilityProjection =>
            GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1SustainabilityProjection.t()
            | nil
        }

  field(:category)

  field(:costProjection,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1CostProjection
  )

  field(:impactComponents,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact,
    type: :list
  )

  field(:reliabilityProjection,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1ReliabilityProjection
  )

  field(:securityProjection,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1SecurityProjection
  )

  field(:service)

  field(:sustainabilityProjection,
    as: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1SustainabilityProjection
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact do
  def decode(value, options) do
    GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Recommender.V1beta1.Model.GoogleCloudRecommenderV1beta1Impact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
