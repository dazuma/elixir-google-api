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

defmodule GoogleApi.Admin.Datatransfer_v1.Api.Transfers do
  @moduledoc """
  API calls for all endpoints tagged `Transfers`.
  """

  alias GoogleApi.Admin.Datatransfer_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves a data transfer request by its resource ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Datatransfer_v1.Connection.t`) - Connection to server
  *   `data_transfer_id` (*type:* `String.t`) - ID of the resource to be retrieved. This is returned in the response from the insert method.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer{}}` on success
  *   `{:error, info}` on failure
  """
  @spec datatransfer_transfers_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def datatransfer_transfers_get(connection, data_transfer_id, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/admin/datatransfer/v1/transfers/{dataTransferId}", %{
        "dataTransferId" => URI.encode(data_transfer_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer{}])
  end

  @doc """
  Inserts a data transfer request.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Datatransfer_v1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer{}}` on success
  *   `{:error, info}` on failure
  """
  @spec datatransfer_transfers_insert(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def datatransfer_transfers_insert(connection, optional_params \\ [], opts \\ []) do
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/admin/datatransfer/v1/transfers", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer{}])
  end

  @doc """
  Lists the transfers for a customer by source user, destination user, or status.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Admin.Datatransfer_v1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:customerId` (*type:* `String.t`) - Immutable ID of the Google Apps account.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return. Default is 100.
      *   `:newOwnerUserId` (*type:* `String.t`) - Destination user's profile ID.
      *   `:oldOwnerUserId` (*type:* `String.t`) - Source user's profile ID.
      *   `:pageToken` (*type:* `String.t`) - Token to specify the next page in the list.
      *   `:status` (*type:* `String.t`) - Status of the transfer.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Admin.Datatransfer_v1.Model.DataTransfersListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec datatransfer_transfers_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Admin.Datatransfer_v1.Model.DataTransfersListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def datatransfer_transfers_list(connection, optional_params \\ [], opts \\ []) do
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
      :customerId => :query,
      :maxResults => :query,
      :newOwnerUserId => :query,
      :oldOwnerUserId => :query,
      :pageToken => :query,
      :status => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/admin/datatransfer/v1/transfers", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Admin.Datatransfer_v1.Model.DataTransfersListResponse{}]
    )
  end
end
