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

defmodule GoogleApi.NetworkServices.V1.Model.ListTlsRoutesResponse do
  @moduledoc """
  Response returned by the ListTlsRoutes method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.
  *   `tlsRoutes` (*type:* `list(GoogleApi.NetworkServices.V1.Model.TlsRoute.t)`, *default:* `nil`) - List of TlsRoute resources.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Unreachable resources. Populated when the request opts into return_partial_success and reading across collections e.g. when attempting to list all resources across all supported locations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :tlsRoutes => list(GoogleApi.NetworkServices.V1.Model.TlsRoute.t()) | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:nextPageToken)
  field(:tlsRoutes, as: GoogleApi.NetworkServices.V1.Model.TlsRoute, type: :list)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.ListTlsRoutesResponse do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.ListTlsRoutesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.ListTlsRoutesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
