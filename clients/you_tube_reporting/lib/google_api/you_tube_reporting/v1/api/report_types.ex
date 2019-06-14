# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.YouTubeReporting.V1.Api.ReportTypes do
  @moduledoc """
  API calls for all endpoints tagged `ReportTypes`.
  """

  alias GoogleApi.YouTubeReporting.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists report types.

  ## Parameters

  - connection (GoogleApi.YouTubeReporting.V1.Connection): Connection to server
  - optional_params (keyword()): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. "media", "multipart").
    - :upload_protocol (String.t): Upload protocol for media (e.g. "raw", "multipart").
    - :includeSystemManaged (boolean()): If set to true, also system-managed report types will be returned;
  otherwise only the report types that can be used to create new reporting
  jobs will be returned.
    - :onBehalfOfContentOwner (String.t): The content owner's external ID on which behalf the user is acting on. If
  not set, the user is acting for himself (his own channel).
    - :pageSize (integer()): Requested page size. Server may return fewer report types than requested.
  If unspecified, server will pick an appropriate default.
    - :pageToken (String.t): A token identifying a page of results the server should return. Typically,
  this is the value of
  ListReportTypesResponse.next_page_token
  returned in response to the previous call to the `ListReportTypes` method.

  ## Returns

  {:ok, %GoogleApi.YouTubeReporting.V1.Model.ListReportTypesResponse{}} on success
  {:error, info} on failure
  """
  @spec youtubereporting_report_types_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.YouTubeReporting.V1.Model.ListReportTypesResponse.t()}
          | {:error, Tesla.Env.t()}
  def youtubereporting_report_types_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :includeSystemManaged => :query,
      :onBehalfOfContentOwner => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/reportTypes", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.YouTubeReporting.V1.Model.ListReportTypesResponse{}]
    )
  end
end
