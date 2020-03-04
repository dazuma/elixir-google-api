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

defmodule GoogleApi.Webmaster.V3.Api.Sitemaps do
  @moduledoc """
  API calls for all endpoints tagged `Sitemaps`.
  """

  alias GoogleApi.Webmaster.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes a sitemap from this site.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Webmaster.V3.Connection.t`) - Connection to server
  *   `site_url` (*type:* `String.t`) - The site's URL, including protocol. For example: http://www.example.com/
  *   `feedpath` (*type:* `String.t`) - The URL of the actual sitemap. For example: http://www.example.com/sitemap.xml
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec webmasters_sitemaps_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def webmasters_sitemaps_delete(
        connection,
        site_url,
        feedpath,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/sites/{siteUrl}/sitemaps/{feedpath}", %{
        "siteUrl" => URI.encode(site_url, &URI.char_unreserved?/1),
        "feedpath" => URI.encode(feedpath, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves information about a specific sitemap.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Webmaster.V3.Connection.t`) - Connection to server
  *   `site_url` (*type:* `String.t`) - The site's URL, including protocol. For example: http://www.example.com/
  *   `feedpath` (*type:* `String.t`) - The URL of the actual sitemap. For example: http://www.example.com/sitemap.xml
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Webmaster.V3.Model.WmxSitemap{}}` on success
  *   `{:error, info}` on failure
  """
  @spec webmasters_sitemaps_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Webmaster.V3.Model.WmxSitemap.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def webmasters_sitemaps_get(connection, site_url, feedpath, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/sites/{siteUrl}/sitemaps/{feedpath}", %{
        "siteUrl" => URI.encode(site_url, &URI.char_unreserved?/1),
        "feedpath" => URI.encode(feedpath, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Webmaster.V3.Model.WmxSitemap{}])
  end

  @doc """
  Lists the sitemaps-entries submitted for this site, or included in the sitemap index file (if sitemapIndex is specified in the request).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Webmaster.V3.Connection.t`) - Connection to server
  *   `site_url` (*type:* `String.t`) - The site's URL, including protocol. For example: http://www.example.com/
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:sitemapIndex` (*type:* `String.t`) - A URL of a site's sitemap index. For example: http://www.example.com/sitemapindex.xml
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Webmaster.V3.Model.SitemapsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec webmasters_sitemaps_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Webmaster.V3.Model.SitemapsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def webmasters_sitemaps_list(connection, site_url, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :sitemapIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/sites/{siteUrl}/sitemaps", %{
        "siteUrl" => URI.encode(site_url, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Webmaster.V3.Model.SitemapsListResponse{}])
  end

  @doc """
  Submits a sitemap for a site.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Webmaster.V3.Connection.t`) - Connection to server
  *   `site_url` (*type:* `String.t`) - The site's URL, including protocol. For example: http://www.example.com/
  *   `feedpath` (*type:* `String.t`) - The URL of the sitemap to add. For example: http://www.example.com/sitemap.xml
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec webmasters_sitemaps_submit(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def webmasters_sitemaps_submit(
        connection,
        site_url,
        feedpath,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/sites/{siteUrl}/sitemaps/{feedpath}", %{
        "siteUrl" => URI.encode(site_url, &URI.char_unreserved?/1),
        "feedpath" => URI.encode(feedpath, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end
end
