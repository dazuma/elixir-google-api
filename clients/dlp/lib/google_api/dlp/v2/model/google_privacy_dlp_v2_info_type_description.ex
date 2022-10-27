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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeDescription do
  @moduledoc """
  InfoType description.

  ## Attributes

  *   `categories` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeCategory.t)`, *default:* `nil`) - The category of the infoType.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the infotype. Translated when language is provided in the request.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Human readable form of the infoType name.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Internal name of the infoType.
  *   `sensitivityScore` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SensitivityScore.t`, *default:* `nil`) - The default sensitivity of the infoType.
  *   `supportedBy` (*type:* `list(String.t)`, *default:* `nil`) - Which parts of the API supports this InfoType.
  *   `versions` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2VersionDescription.t)`, *default:* `nil`) - A list of available versions for the infotype.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categories =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeCategory.t()) | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :sensitivityScore =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SensitivityScore.t() | nil,
          :supportedBy => list(String.t()) | nil,
          :versions => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2VersionDescription.t()) | nil
        }

  field(:categories, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeCategory, type: :list)
  field(:description)
  field(:displayName)
  field(:name)
  field(:sensitivityScore, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SensitivityScore)
  field(:supportedBy, type: :list)
  field(:versions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2VersionDescription, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeDescription do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeDescription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
