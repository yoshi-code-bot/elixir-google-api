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

defmodule GoogleApi.NetworkServices.V1.Model.ListServiceLbPoliciesResponse do
  @moduledoc """
  Response returned by the ListServiceLbPolicies method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.
  *   `serviceLbPolicies` (*type:* `list(GoogleApi.NetworkServices.V1.Model.ServiceLbPolicy.t)`, *default:* `nil`) - List of ServiceLbPolicy resources.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Unreachable resources. Populated when the request attempts to list all resources across all supported locations, while some locations are temporarily unavailable.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :serviceLbPolicies =>
            list(GoogleApi.NetworkServices.V1.Model.ServiceLbPolicy.t()) | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:nextPageToken)
  field(:serviceLbPolicies, as: GoogleApi.NetworkServices.V1.Model.ServiceLbPolicy, type: :list)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.ListServiceLbPoliciesResponse do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.ListServiceLbPoliciesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.ListServiceLbPoliciesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
