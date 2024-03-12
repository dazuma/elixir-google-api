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

defmodule GoogleApi.Vision.V1.Model.TextDetectionParams do
  @moduledoc """
  Parameters for text detections. This is used to control TEXT_DETECTION and DOCUMENT_TEXT_DETECTION features.

  ## Attributes

  *   `advancedOcrOptions` (*type:* `list(String.t)`, *default:* `nil`) - A list of advanced OCR options to further fine-tune OCR behavior. Current valid values are: - `legacy_layout`: a heuristics layout detection algorithm, which serves as an alternative to the current ML-based layout detection algorithm. Customers can choose the best suitable layout algorithm based on their situation.
  *   `enableTextDetectionConfidenceScore` (*type:* `boolean()`, *default:* `nil`) - By default, Cloud Vision API only includes confidence score for DOCUMENT_TEXT_DETECTION result. Set the flag to true to include confidence score for TEXT_DETECTION as well.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advancedOcrOptions => list(String.t()) | nil,
          :enableTextDetectionConfidenceScore => boolean() | nil
        }

  field(:advancedOcrOptions, type: :list)
  field(:enableTextDetectionConfidenceScore)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.TextDetectionParams do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.TextDetectionParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.TextDetectionParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
