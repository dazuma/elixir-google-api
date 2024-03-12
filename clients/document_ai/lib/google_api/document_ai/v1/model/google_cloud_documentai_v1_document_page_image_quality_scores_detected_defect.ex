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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect do
  @moduledoc """
  Image Quality Defects

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - Confidence of detected defect. Range `[0, 1]` where `1` indicates strong confidence that the defect exists.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number() | nil,
          :type => String.t() | nil
        }

  field(:confidence)
  field(:type)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
