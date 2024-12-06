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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfig do
  @moduledoc """
  Configures metadata that is used to generate serving time results (e.g. search results or recommendation predictions). The ServingConfig is passed in the search and predict request and generates results.

  ## Attributes

  *   `boostControlIds` (*type:* `list(String.t)`, *default:* `nil`) - Boost controls to use in serving path. All triggered boost controls will be applied. Boost controls must be in the same data store as the serving config. Maximum of 20 boost controls.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. ServingConfig created timestamp.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human readable serving config display name. Used in Discovery UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `dissociateControlIds` (*type:* `list(String.t)`, *default:* `nil`) - Condition do not associate specifications. If multiple do not associate conditions match, all matching do not associate controls in the list will execute. Order does not matter. Maximum number of specifications is 100. Can only be set if SolutionType is SOLUTION_TYPE_SEARCH.
  *   `diversityLevel` (*type:* `String.t`, *default:* `nil`) - How much diversity to use in recommendation model results e.g. `medium-diversity` or `high-diversity`. Currently supported values: * `no-diversity` * `low-diversity` * `medium-diversity` * `high-diversity` * `auto-diversity` If not specified, we choose default based on recommendation model type. Default value: `no-diversity`. Can only be set if SolutionType is SOLUTION_TYPE_RECOMMENDATION.
  *   `filterControlIds` (*type:* `list(String.t)`, *default:* `nil`) - Filter controls to use in serving path. All triggered filter controls will be applied. Filter controls must be in the same data store as the serving config. Maximum of 20 filter controls.
  *   `genericConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfigGenericConfig.t`, *default:* `nil`) - The GenericConfig of the serving configuration.
  *   `ignoreControlIds` (*type:* `list(String.t)`, *default:* `nil`) - Condition ignore specifications. If multiple ignore conditions match, all matching ignore controls in the list will execute. Order does not matter. Maximum number of specifications is 100.
  *   `mediaConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfigMediaConfig.t`, *default:* `nil`) - The MediaConfig of the serving configuration.
  *   `modelId` (*type:* `String.t`, *default:* `nil`) - The id of the model to use at serving time. Currently only RecommendationModels are supported. Can be changed but only to a compatible model (e.g. others-you-may-like CTR to others-you-may-like CVR). Required when SolutionType is SOLUTION_TYPE_RECOMMENDATION.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Fully qualified name `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}`
  *   `onewaySynonymsControlIds` (*type:* `list(String.t)`, *default:* `nil`) - Condition oneway synonyms specifications. If multiple oneway synonyms conditions match, all matching oneway synonyms controls in the list will execute. Maximum number of specifications is 100. Can only be set if SolutionType is SOLUTION_TYPE_SEARCH.
  *   `promoteControlIds` (*type:* `list(String.t)`, *default:* `nil`) - Condition promote specifications. Maximum number of specifications is 100.
  *   `rankingExpression` (*type:* `String.t`, *default:* `nil`) - The ranking expression controls the customized ranking on retrieval documents. To leverage this, document embedding is required. The ranking expression setting in ServingConfig applies to all search requests served by the serving config. However, if SearchRequest.ranking_expression is specified, it overrides the ServingConfig ranking expression. The ranking expression is a single function or multiple functions that are joined by "+". * ranking_expression = function, { " + ", function }; Supported functions: * double * relevance_score * double * dotProduct(embedding_field_path) Function variables: * `relevance_score`: pre-defined keywords, used for measure relevance between query and document. * `embedding_field_path`: the document embedding field used with query embedding vector. * `dotProduct`: embedding function between embedding_field_path and query embedding vector. Example ranking expression: If document has an embedding field doc_embedding, the ranking expression could be `0.5 * relevance_score + 0.3 * dotProduct(doc_embedding)`.
  *   `redirectControlIds` (*type:* `list(String.t)`, *default:* `nil`) - IDs of the redirect controls. Only the first triggered redirect action is applied, even if multiple apply. Maximum number of specifications is 100. Can only be set if SolutionType is SOLUTION_TYPE_SEARCH.
  *   `replacementControlIds` (*type:* `list(String.t)`, *default:* `nil`) - Condition replacement specifications. Applied according to the order in the list. A previously replaced term can not be re-replaced. Maximum number of specifications is 100. Can only be set if SolutionType is SOLUTION_TYPE_SEARCH.
  *   `solutionType` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Specifies the solution type that a serving config can be associated with.
  *   `synonymsControlIds` (*type:* `list(String.t)`, *default:* `nil`) - Condition synonyms specifications. If multiple synonyms conditions match, all matching synonyms controls in the list will execute. Maximum number of specifications is 100. Can only be set if SolutionType is SOLUTION_TYPE_SEARCH.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. ServingConfig updated timestamp.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boostControlIds => list(String.t()) | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :dissociateControlIds => list(String.t()) | nil,
          :diversityLevel => String.t() | nil,
          :filterControlIds => list(String.t()) | nil,
          :genericConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfigGenericConfig.t()
            | nil,
          :ignoreControlIds => list(String.t()) | nil,
          :mediaConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfigMediaConfig.t()
            | nil,
          :modelId => String.t() | nil,
          :name => String.t() | nil,
          :onewaySynonymsControlIds => list(String.t()) | nil,
          :promoteControlIds => list(String.t()) | nil,
          :rankingExpression => String.t() | nil,
          :redirectControlIds => list(String.t()) | nil,
          :replacementControlIds => list(String.t()) | nil,
          :solutionType => String.t() | nil,
          :synonymsControlIds => list(String.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:boostControlIds, type: :list)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:dissociateControlIds, type: :list)
  field(:diversityLevel)
  field(:filterControlIds, type: :list)

  field(:genericConfig,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfigGenericConfig
  )

  field(:ignoreControlIds, type: :list)

  field(:mediaConfig,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfigMediaConfig
  )

  field(:modelId)
  field(:name)
  field(:onewaySynonymsControlIds, type: :list)
  field(:promoteControlIds, type: :list)
  field(:rankingExpression)
  field(:redirectControlIds, type: :list)
  field(:replacementControlIds, type: :list)
  field(:solutionType)
  field(:synonymsControlIds, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfig do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ServingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
