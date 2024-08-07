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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Result do
  @moduledoc """
  All result fields mentioned below are updated while the job is processing.

  ## Attributes

  *   `hybridStats` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridInspectStatistics.t`, *default:* `nil`) - Statistics related to the processing of hybrid inspect.
  *   `infoTypeStats` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeStats.t)`, *default:* `nil`) - Statistics of how many instances of each info type were found during inspect job.
  *   `numRowsProcessed` (*type:* `String.t`, *default:* `nil`) - Number of rows scanned after sampling and time filtering (applicable for row based stores such as BigQuery).
  *   `processedBytes` (*type:* `String.t`, *default:* `nil`) - Total size in bytes that were processed.
  *   `totalEstimatedBytes` (*type:* `String.t`, *default:* `nil`) - Estimate of the number of bytes to process.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hybridStats =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridInspectStatistics.t() | nil,
          :infoTypeStats =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeStats.t()) | nil,
          :numRowsProcessed => String.t() | nil,
          :processedBytes => String.t() | nil,
          :totalEstimatedBytes => String.t() | nil
        }

  field(:hybridStats, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridInspectStatistics)
  field(:infoTypeStats, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeStats, type: :list)
  field(:numRowsProcessed)
  field(:processedBytes)
  field(:totalEstimatedBytes)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Result do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Result.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Result do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
