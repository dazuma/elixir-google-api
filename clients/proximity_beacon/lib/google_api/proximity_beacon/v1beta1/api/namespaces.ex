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

defmodule GoogleApi.ProximityBeacon.V1beta1.Api.Namespaces do
  @moduledoc """
  API calls for all endpoints tagged `Namespaces`.
  """

  alias GoogleApi.ProximityBeacon.V1beta1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists all attachment namespaces owned by your Google Developers Console
  project. Attachment data associated with a beacon must include a
  namespaced type, and the namespace must be owned by your project.

  Authenticate using an [OAuth access token](https://developers.google.com/identity/protocols/OAuth2)
  from a signed-in user with **viewer**, **Is owner** or **Can edit**
  permissions in the Google Developers Console project.

  ## Parameters

  - connection (GoogleApi.ProximityBeacon.V1beta1.Connection): Connection to server
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
    - :projectId (String.t): The project id to list namespaces under.
  Optional.

  ## Returns

  {:ok, %GoogleApi.ProximityBeacon.V1beta1.Model.ListNamespacesResponse{}} on success
  {:error, info} on failure
  """
  @spec proximitybeacon_namespaces_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.ProximityBeacon.V1beta1.Model.ListNamespacesResponse.t()}
          | {:error, Tesla.Env.t()}
  def proximitybeacon_namespaces_list(connection, optional_params \\ [], opts \\ []) do
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
      :projectId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1beta1/namespaces", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ProximityBeacon.V1beta1.Model.ListNamespacesResponse{}]
    )
  end

  @doc """
  Updates the information about the specified namespace. Only the namespace
  visibility can be updated.

  ## Parameters

  - connection (GoogleApi.ProximityBeacon.V1beta1.Connection): Connection to server
  - namespace_name (String.t): Resource name of this namespace. Namespaces names have the format:
  <code>namespaces/<var>namespace</var></code>.
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
    - :projectId (String.t): The project id of the namespace to update. If the project id is not
  specified then the project making the request is used. The project id
  must match the project that owns the beacon.
  Optional.
    - :body (GoogleApi.ProximityBeacon.V1beta1.Model.Namespace.t): 

  ## Returns

  {:ok, %GoogleApi.ProximityBeacon.V1beta1.Model.Namespace{}} on success
  {:error, info} on failure
  """
  @spec proximitybeacon_namespaces_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.ProximityBeacon.V1beta1.Model.Namespace.t()} | {:error, Tesla.Env.t()}
  def proximitybeacon_namespaces_update(
        connection,
        namespace_name,
        optional_params \\ [],
        opts \\ []
      ) do
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
      :projectId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v1beta1/{+namespaceName}", %{
        "namespaceName" => URI.encode(namespace_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ProximityBeacon.V1beta1.Model.Namespace{}])
  end
end
