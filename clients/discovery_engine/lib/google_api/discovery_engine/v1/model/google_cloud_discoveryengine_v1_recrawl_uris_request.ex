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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1RecrawlUrisRequest do
  @moduledoc """
  Request message for SiteSearchEngineService.RecrawlUris method.

  ## Attributes

  *   `siteCredential` (*type:* `String.t`, *default:* `nil`) - Optional. Full resource name of the `SiteCredential`, such as `projects/*/locations/*/collections/*/dataStores/*/siteSearchEngine/siteCredentials/*`. Only set to crawl private URIs.
  *   `uris` (*type:* `list(String.t)`, *default:* `nil`) - Required. List of URIs to crawl. At most 10K URIs are supported, otherwise an INVALID_ARGUMENT error is thrown. Each URI should match at least one TargetSite in `site_search_engine`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :siteCredential => String.t() | nil,
          :uris => list(String.t()) | nil
        }

  field(:siteCredential)
  field(:uris, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1RecrawlUrisRequest do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1RecrawlUrisRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1RecrawlUrisRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
