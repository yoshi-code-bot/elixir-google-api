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

defmodule GoogleApi.DeploymentManager.V2.Api.Types do
  @moduledoc """
  API calls for all endpoints tagged `Types`.
  """

  alias GoogleApi.DeploymentManager.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Lists all resource types for Deployment Manager.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DeploymentManager.V2.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - The project ID for this request.
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
      *   `:filter` (*type:* `String.t`) - A filter expression that filters resources listed in the response. The expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or `:`. For example, if you are filtering Compute Engine instances, you can exclude instances named `example-instance` by specifying `name != example-instance`. The `:` operator can be used with string fields to match substrings. For non-string fields it is equivalent to the `=` operator. The `:*` comparison can be used to test whether a key has been defined. For example, to find all objects with `owner` label use: ``` labels.owner:* ``` You can also filter nested fields. For example, you could specify `scheduling.automaticRestart = false` to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide each separate expression within parentheses. For example: ``` (scheduling.automaticRestart = true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `AND` expression. However, you can include `AND` and `OR` expressions explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
      *   `:maxResults` (*type:* `integer()`) - The maximum number of results per page that should be returned. If the number of available results is larger than `maxResults`, Compute Engine returns a `nextPageToken` that can be used to get the next page of results in subsequent list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
      *   `:orderBy` (*type:* `String.t`) - Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using `orderBy="creationTimestamp desc"`. This sorts results based on the `creationTimestamp` field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by `name` or `creationTimestamp desc` is supported.
      *   `:pageToken` (*type:* `String.t`) - Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the next page of results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DeploymentManager.V2.Model.TypesListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec deploymentmanager_types_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DeploymentManager.V2.Model.TypesListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def deploymentmanager_types_list(connection, project, optional_params \\ [], opts \\ []) do
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
      :filter => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/deploymentmanager/v2/projects/{project}/global/types", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DeploymentManager.V2.Model.TypesListResponse{}]
    )
  end
end
