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

defmodule GoogleApi.Drive.V3.Api.Permissions do
  @moduledoc """
  API calls for all endpoints tagged `Permissions`.
  """

  alias GoogleApi.Drive.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a permission for a file or shared drive.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file or shared drive.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:emailMessage` (*type:* `String.t`) - A plain text custom message to include in the notification email.
      *   `:sendNotificationEmail` (*type:* `boolean()`) - Whether to send a notification email when sharing to users or groups. This defaults to true for users and groups, and is not allowed for other requests. It must not be disabled for ownership transfers.
      *   `:supportsAllDrives` (*type:* `boolean()`) - Deprecated - Whether the requesting application supports both My Drives and shared drives. This parameter will only be effective until June 1, 2020. Afterwards all applications are assumed to support shared drives.
      *   `:supportsTeamDrives` (*type:* `boolean()`) - Deprecated use supportsAllDrives instead.
      *   `:transferOwnership` (*type:* `boolean()`) - Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect.
      *   `:useDomainAdminAccess` (*type:* `boolean()`) - Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.
      *   `:body` (*type:* `GoogleApi.Drive.V3.Model.Permission.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.Permission{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_permissions_create(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Permission.t()} | {:error, Tesla.Env.t()}
  def drive_permissions_create(connection, file_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :emailMessage => :query,
      :sendNotificationEmail => :query,
      :supportsAllDrives => :query,
      :supportsTeamDrives => :query,
      :transferOwnership => :query,
      :useDomainAdminAccess => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/drive/v3/files/{fileId}/permissions", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Permission{}])
  end

  @doc """
  Deletes a permission.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file or shared drive.
  *   `permission_id` (*type:* `String.t`) - The ID of the permission.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:supportsAllDrives` (*type:* `boolean()`) - Deprecated - Whether the requesting application supports both My Drives and shared drives. This parameter will only be effective until June 1, 2020. Afterwards all applications are assumed to support shared drives.
      *   `:supportsTeamDrives` (*type:* `boolean()`) - Deprecated use supportsAllDrives instead.
      *   `:useDomainAdminAccess` (*type:* `boolean()`) - Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_permissions_delete(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def drive_permissions_delete(
        connection,
        file_id,
        permission_id,
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
      :userIp => :query,
      :supportsAllDrives => :query,
      :supportsTeamDrives => :query,
      :useDomainAdminAccess => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/drive/v3/files/{fileId}/permissions/{permissionId}", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "permissionId" => URI.encode(permission_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets a permission by ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `permission_id` (*type:* `String.t`) - The ID of the permission.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:supportsAllDrives` (*type:* `boolean()`) - Deprecated - Whether the requesting application supports both My Drives and shared drives. This parameter will only be effective until June 1, 2020. Afterwards all applications are assumed to support shared drives.
      *   `:supportsTeamDrives` (*type:* `boolean()`) - Deprecated use supportsAllDrives instead.
      *   `:useDomainAdminAccess` (*type:* `boolean()`) - Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.Permission{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_permissions_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Permission.t()} | {:error, Tesla.Env.t()}
  def drive_permissions_get(connection, file_id, permission_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :supportsAllDrives => :query,
      :supportsTeamDrives => :query,
      :useDomainAdminAccess => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/files/{fileId}/permissions/{permissionId}", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "permissionId" => URI.encode(permission_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Permission{}])
  end

  @doc """
  Lists a file's or shared drive's permissions.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file or shared drive.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of permissions to return per page. When not set for files in a shared drive, at most 100 results will be returned. When not set for files that are not in a shared drive, the entire list will be returned.
      *   `:pageToken` (*type:* `String.t`) - The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.
      *   `:supportsAllDrives` (*type:* `boolean()`) - Deprecated - Whether the requesting application supports both My Drives and shared drives. This parameter will only be effective until June 1, 2020. Afterwards all applications are assumed to support shared drives.
      *   `:supportsTeamDrives` (*type:* `boolean()`) - Deprecated use supportsAllDrives instead.
      *   `:useDomainAdminAccess` (*type:* `boolean()`) - Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.PermissionList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_permissions_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.PermissionList.t()} | {:error, Tesla.Env.t()}
  def drive_permissions_list(connection, file_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :pageSize => :query,
      :pageToken => :query,
      :supportsAllDrives => :query,
      :supportsTeamDrives => :query,
      :useDomainAdminAccess => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/files/{fileId}/permissions", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.PermissionList{}])
  end

  @doc """
  Updates a permission with patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file or shared drive.
  *   `permission_id` (*type:* `String.t`) - The ID of the permission.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:removeExpiration` (*type:* `boolean()`) - Whether to remove the expiration date.
      *   `:supportsAllDrives` (*type:* `boolean()`) - Deprecated - Whether the requesting application supports both My Drives and shared drives. This parameter will only be effective until June 1, 2020. Afterwards all applications are assumed to support shared drives.
      *   `:supportsTeamDrives` (*type:* `boolean()`) - Deprecated use supportsAllDrives instead.
      *   `:transferOwnership` (*type:* `boolean()`) - Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect.
      *   `:useDomainAdminAccess` (*type:* `boolean()`) - Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.
      *   `:body` (*type:* `GoogleApi.Drive.V3.Model.Permission.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.Permission{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_permissions_update(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Permission.t()} | {:error, Tesla.Env.t()}
  def drive_permissions_update(
        connection,
        file_id,
        permission_id,
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
      :userIp => :query,
      :removeExpiration => :query,
      :supportsAllDrives => :query,
      :supportsTeamDrives => :query,
      :transferOwnership => :query,
      :useDomainAdminAccess => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/drive/v3/files/{fileId}/permissions/{permissionId}", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "permissionId" => URI.encode(permission_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Permission{}])
  end
end
