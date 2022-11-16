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

defmodule GoogleApi.CloudSupport.V2beta.Api.Cases do
  @moduledoc """
  API calls for all endpoints tagged `Cases`.
  """

  alias GoogleApi.CloudSupport.V2beta.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Close the specified case.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `name`. Required. The fully qualified name of the case resource to be closed.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `name`. See documentation of `v2betaId`.
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
      *   `:body` (*type:* `GoogleApi.CloudSupport.V2beta.Model.CloseCaseRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Case{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_close(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Case.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_close(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}:close", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Case{}])
  end

  @doc """
  Create a new case and associate it with the given Cloud resource. The case object must have the following fields set: display_name, description, classification, and severity.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `parent`. Required. The name of the Cloud resource under which the case should be created.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
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
      *   `:body` (*type:* `GoogleApi.CloudSupport.V2beta.Model.Case.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Case{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Case.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_create(
        connection,
        v2beta_id,
        v2beta_id1,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Case{}])
  end

  @doc """
  Escalate a case. Escalating a case will initiate the Cloud Support escalation management process. This operation is only available to certain Customer Care tiers. Go to https://cloud.google.com/support and look for 'Technical support escalations' in the feature list to find out which tiers are able to perform escalations.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `name`. Required. The fully qualified name of the Case resource to be escalated.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `name`. See documentation of `v2betaId`.
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
      *   `:body` (*type:* `GoogleApi.CloudSupport.V2beta.Model.EscalateCaseRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Case{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_escalate(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Case.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_escalate(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}:escalate", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Case{}])
  end

  @doc """
  Retrieve the specified case.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `name`. Required. The fully qualified name of a case to be retrieved.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `name`. See documentation of `v2betaId`.
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

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Case{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Case.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_get(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Case{}])
  end

  @doc """
  Retrieve all cases under the specified parent. Note: Listing cases under an Organization returns only the cases directly parented by that organization. To retrieve all cases under an organization, including cases parented by projects under that organization, use `cases.search`.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `parent`. Required. The fully qualified name of parent resource to list cases under.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
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
      *   `:filter` (*type:* `String.t`) - An expression written in filter language. If non-empty, the query returns the cases that match the filter. Else, the query doesn't filter the cases. Filter expressions use the following fields with the operators equals (`=`) and `AND`: - `state`: The accepted values are `OPEN` or `CLOSED`. - `priority`: The accepted values are `P0`, `P1`, `P2`, `P3`, or `P4`. You can specify multiple values for priority using the `OR` operator. For example, `priority=P1 OR priority=P2`. - [DEPRECATED] `severity`: The accepted values are `S0`, `S1`, `S2`, `S3`, or `S4`. - `creator.email`: The email address of the case creator. Examples: - `state=CLOSED` - `state=OPEN AND creator.email="tester@example.com"` - `state=OPEN AND (priority=P0 OR priority=P1)`
      *   `:pageSize` (*type:* `integer()`) - The maximum number of cases fetched with each request. Defaults to 10.
      *   `:pageToken` (*type:* `String.t`) - A token identifying the page of results to return. If unspecified, the first page is retrieved.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.ListCasesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.ListCasesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_list(
        connection,
        v2beta_id,
        v2beta_id1,
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
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.ListCasesResponse{}])
  end

  @doc """
  Update the specified case. Only a subset of fields (display_name, description, time_zone, subscriber_email_addresses, related_resources, severity, priority, primary_contact, and labels) can be updated.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `case.name`. The resource name for the case.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `case.name`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `case.name`. See documentation of `v2betaId`.
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
      *   `:updateMask` (*type:* `String.t`) - A field that represents attributes of a case object that should be updated as part of this request. Supported values are severity, display_name, and subscriber_email_addresses. If no fields are specified, all supported fields will be updated. WARNING: If you do not provide a field mask then you may accidentally clear some fields. For example, if you leave field mask empty and do not provide a value for subscriber_email_addresses then subscriber_email_addresses will be updated to empty.
      *   `:body` (*type:* `GoogleApi.CloudSupport.V2beta.Model.Case.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Case{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Case.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_patch(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
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
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Case{}])
  end

  @doc """
  Search cases using the specified query.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
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
      *   `:pageSize` (*type:* `integer()`) - The maximum number of cases fetched with each request. The default page size is 10.
      *   `:pageToken` (*type:* `String.t`) - A token identifying the page of results to return. If unspecified, the first page is retrieved.
      *   `:query` (*type:* `String.t`) - An expression written in filter language. A query uses the following fields with the operators equals (`=`) and `AND`: - `organization`: An organization name in the form `organizations/`. - `project`: A project name in the form `projects/`. - `state`: The accepted values are `OPEN` or `CLOSED`. - `priority`: The accepted values are `P0`, `P1`, `P2`, `P3`, or `P4`. You can specify multiple values for priority using the `OR` operator. For example, `priority=P1 OR priority=P2`. - [DEPRECATED] `severity`: The accepted values are `S0`, `S1`, `S2`, `S3`, or `S4`. - `creator.email`: The email address of the case creator. - `billingAccount`: A billing account in the form `billingAccounts/` You must specify eitehr `organization` or `project`. To search across `displayName`, `description`, and comments, use a global restriction with no keyword or operator. For example, `"my search"`. To search only cases updated after a certain date, use `update_time` retricted with that particular date, time, and timezone in ISO datetime format. For example, `update_time>"2020-01-01T00:00:00-05:00"`. `update_time` only supports the greater than operator (`>`). Examples: - `organization="organizations/123456789"` - `project="projects/my-project-id"` - `project="projects/123456789"` - `billing_account="billingAccounts/123456-A0B0C0-CUZ789"` - `organization="organizations/123456789" AND state=CLOSED` - `project="projects/my-project-id" AND creator.email="tester@example.com"` - `project="projects/my-project-id" AND (priority=P0 OR priority=P1)`
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.SearchCasesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_search(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.SearchCasesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_search(connection, optional_params \\ [], opts \\ []) do
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
      :pageSize => :query,
      :pageToken => :query,
      :query => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2beta/cases:search", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.SearchCasesResponse{}]
    )
  end

  @doc """
  Retrieve all attachments associated with a support case.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `parent`. Required. The resource name of Case object for which attachments should be listed.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
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
      *   `:pageSize` (*type:* `integer()`) - The maximum number of attachments fetched with each request. If not provided, the default is 10. The maximum page size that will be returned is 100.
      *   `:pageToken` (*type:* `String.t`) - A token identifying the page of results to return. If unspecified, the first page is retrieved.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.ListAttachmentsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_attachments_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.ListAttachmentsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_attachments_list(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
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
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}/attachments", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.ListAttachmentsResponse{}]
    )
  end

  @doc """
  Add a new comment to the specified Case. The comment object must have the following fields set: body.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `parent`. Required. The resource name of Case to which this comment should be added.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
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
      *   `:body` (*type:* `GoogleApi.CloudSupport.V2beta.Model.Comment.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.Comment{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_comments_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.Comment.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_comments_create(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}/comments", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.Comment{}])
  end

  @doc """
  Retrieve all Comments associated with the Case object.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudSupport.V2beta.Connection.t`) - Connection to server
  *   `v2beta_id` (*type:* `String.t`) - Part of `parent`. Required. The resource name of Case object for which comments should be listed.
  *   `v2beta_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
  *   `cases_id` (*type:* `String.t`) - Part of `parent`. See documentation of `v2betaId`.
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
      *   `:pageSize` (*type:* `integer()`) - The maximum number of comments fetched with each request. Defaults to 10.
      *   `:pageToken` (*type:* `String.t`) - A token identifying the page of results to return. If unspecified, the first page is retrieved.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudSupport.V2beta.Model.ListCommentsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudsupport_cases_comments_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudSupport.V2beta.Model.ListCommentsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def cloudsupport_cases_comments_list(
        connection,
        v2beta_id,
        v2beta_id1,
        cases_id,
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
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2beta/{v2betaId}/{v2betaId1}/cases/{casesId}/comments", %{
        "v2betaId" => URI.encode(v2beta_id, &URI.char_unreserved?/1),
        "v2betaId1" => URI.encode(v2beta_id1, &URI.char_unreserved?/1),
        "casesId" => URI.encode(cases_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudSupport.V2beta.Model.ListCommentsResponse{}]
    )
  end
end
