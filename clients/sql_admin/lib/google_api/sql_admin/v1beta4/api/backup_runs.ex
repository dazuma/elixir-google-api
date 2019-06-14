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

defmodule GoogleApi.SQLAdmin.V1beta4.Api.BackupRuns do
  @moduledoc """
  API calls for all endpoints tagged `BackupRuns`.
  """

  alias GoogleApi.SQLAdmin.V1beta4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes the backup taken by a backup run.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String.t): Project ID of the project that contains the instance.
  - instance (String.t): Cloud SQL instance ID. This does not include the project ID.
  - id (String.t): The ID of the Backup Run to delete. To find a Backup Run ID, use the list method.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_backup_runs_delete(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def sql_backup_runs_delete(connection, project, instance, id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/projects/{project}/instances/{instance}/backupRuns/{id}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1),
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}])
  end

  @doc """
  Retrieves a resource containing information about a backup run.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String.t): Project ID of the project that contains the instance.
  - instance (String.t): Cloud SQL instance ID. This does not include the project ID.
  - id (String.t): The ID of this Backup Run.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.BackupRun{}} on success
  {:error, info} on failure
  """
  @spec sql_backup_runs_get(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.BackupRun.t()} | {:error, Tesla.Env.t()}
  def sql_backup_runs_get(connection, project, instance, id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/projects/{project}/instances/{instance}/backupRuns/{id}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1),
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.BackupRun{}])
  end

  @doc """
  Creates a new backup run on demand. This method is applicable only to Second Generation instances.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String.t): Project ID of the project that contains the instance.
  - instance (String.t): Cloud SQL instance ID. This does not include the project ID.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.SQLAdmin.V1beta4.Model.BackupRun.t): 

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec sql_backup_runs_insert(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def sql_backup_runs_insert(connection, project, instance, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/projects/{project}/instances/{instance}/backupRuns", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}])
  end

  @doc """
  Lists all backup runs associated with a given instance and configuration in the reverse chronological order of the backup initiation time.

  ## Parameters

  - connection (GoogleApi.SQLAdmin.V1beta4.Connection): Connection to server
  - project (String.t): Project ID of the project that contains the instance.
  - instance (String.t): Cloud SQL instance ID. This does not include the project ID.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of backup runs per response.
    - :pageToken (String.t): A previously-returned page token representing part of the larger set of results to view.

  ## Returns

  {:ok, %GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse{}} on success
  {:error, info} on failure
  """
  @spec sql_backup_runs_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def sql_backup_runs_list(connection, project, instance, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/projects/{project}/instances/{instance}/backupRuns", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse{}]
    )
  end
end
