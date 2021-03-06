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

defmodule GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis do
  @moduledoc """
  An analysis message to group the query and results.

  ## Attributes

  *   `analysisQuery` (*type:* `GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisQuery.t`, *default:* `nil`) - The analysis query.
  *   `analysisResults` (*type:* `list(GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisResult.t)`, *default:* `nil`) - A list of IamPolicyAnalysisResult that matches the analysis query, or empty if no result is found.
  *   `fullyExplored` (*type:* `boolean()`, *default:* `nil`) - Represents whether all entries in the analysis_results have been fully explored to answer the query.
  *   `nonCriticalErrors` (*type:* `list(GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisState.t)`, *default:* `nil`) - A list of non-critical errors happened during the query handling.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analysisQuery => GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisQuery.t() | nil,
          :analysisResults =>
            list(GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisResult.t()) | nil,
          :fullyExplored => boolean() | nil,
          :nonCriticalErrors =>
            list(GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisState.t()) | nil
        }

  field(:analysisQuery, as: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisQuery)
  field(:analysisResults, as: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisResult, type: :list)
  field(:fullyExplored)
  field(:nonCriticalErrors, as: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysisState, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
