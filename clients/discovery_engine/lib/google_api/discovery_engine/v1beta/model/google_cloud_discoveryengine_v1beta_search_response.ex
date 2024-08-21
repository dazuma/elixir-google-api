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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponse do
  @moduledoc """
  Response message for SearchService.Search method.

  ## Attributes

  *   `appliedControls` (*type:* `list(String.t)`, *default:* `nil`) - Controls applied as part of the Control service.
  *   `attributionToken` (*type:* `String.t`, *default:* `nil`) - A unique search token. This should be included in the UserEvent logs resulting from this search, which enables accurate attribution of search model performance. This also helps to identify a request during the customer support scenarios.
  *   `correctedQuery` (*type:* `String.t`, *default:* `nil`) - Contains the spell corrected query, if found. If the spell correction type is AUTOMATIC, then the search results are based on corrected_query. Otherwise the original query is used for search.
  *   `facets` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseFacet.t)`, *default:* `nil`) - Results of facets requested by user.
  *   `geoSearchDebugInfo` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGeoSearchDebugInfo.t)`, *default:* `nil`) - 
  *   `guidedSearchResult` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult.t`, *default:* `nil`) - Guided search result.
  *   `naturalLanguageQueryUnderstandingInfo` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo.t`, *default:* `nil`) - Natural language query understanding information for the returned results.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token that can be sent as SearchRequest.page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `oneBoxResults` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult.t)`, *default:* `nil`) - A list of One Box results. There can be multiple One Box results of different types.
  *   `queryExpansionInfo` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseQueryExpansionInfo.t`, *default:* `nil`) - Query expansion information for the returned results.
  *   `redirectUri` (*type:* `String.t`, *default:* `nil`) - The URI of a customer-defined redirect page. If redirect action is triggered, no search is performed, and only redirect_uri and attribution_token are set in the response.
  *   `results` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult.t)`, *default:* `nil`) - A list of matched documents. The order represents the ranking.
  *   `sessionInfo` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSessionInfo.t`, *default:* `nil`) - Session information. Only set if SearchRequest.session is provided. See its description for more details.
  *   `summary` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummary.t`, *default:* `nil`) - A summary as part of the search results. This field is only returned if SearchRequest.ContentSearchSpec.summary_spec is set.
  *   `totalSize` (*type:* `integer()`, *default:* `nil`) - The estimated total count of matched items irrespective of pagination. The count of results returned by pagination may be less than the total_size that matches.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appliedControls => list(String.t()) | nil,
          :attributionToken => String.t() | nil,
          :correctedQuery => String.t() | nil,
          :facets =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseFacet.t()
            )
            | nil,
          :geoSearchDebugInfo =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGeoSearchDebugInfo.t()
            )
            | nil,
          :guidedSearchResult =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult.t()
            | nil,
          :naturalLanguageQueryUnderstandingInfo =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo.t()
            | nil,
          :nextPageToken => String.t() | nil,
          :oneBoxResults =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult.t()
            )
            | nil,
          :queryExpansionInfo =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseQueryExpansionInfo.t()
            | nil,
          :redirectUri => String.t() | nil,
          :results =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult.t()
            )
            | nil,
          :sessionInfo =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSessionInfo.t()
            | nil,
          :summary =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummary.t()
            | nil,
          :totalSize => integer() | nil
        }

  field(:appliedControls, type: :list)
  field(:attributionToken)
  field(:correctedQuery)

  field(:facets,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseFacet,
    type: :list
  )

  field(:geoSearchDebugInfo,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGeoSearchDebugInfo,
    type: :list
  )

  field(:guidedSearchResult,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult
  )

  field(:naturalLanguageQueryUnderstandingInfo,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo
  )

  field(:nextPageToken)

  field(:oneBoxResults,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseOneBoxResult,
    type: :list
  )

  field(:queryExpansionInfo,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseQueryExpansionInfo
  )

  field(:redirectUri)

  field(:results,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult,
    type: :list
  )

  field(:sessionInfo,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSessionInfo
  )

  field(:summary,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummary
  )

  field(:totalSize)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
