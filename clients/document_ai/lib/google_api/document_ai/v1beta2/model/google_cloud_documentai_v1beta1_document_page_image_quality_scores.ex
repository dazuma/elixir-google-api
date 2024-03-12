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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores do
  @moduledoc """
  Image quality scores for the page image.

  ## Attributes

  *   `detectedDefects` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect.t)`, *default:* `nil`) - A list of detected defects.
  *   `qualityScore` (*type:* `number()`, *default:* `nil`) - The overall quality score. Range `[0, 1]` where `1` is perfect quality.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectedDefects =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect.t()
            )
            | nil,
          :qualityScore => number() | nil
        }

  field(:detectedDefects,
    as:
      GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect,
    type: :list
  )

  field(:qualityScore)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
