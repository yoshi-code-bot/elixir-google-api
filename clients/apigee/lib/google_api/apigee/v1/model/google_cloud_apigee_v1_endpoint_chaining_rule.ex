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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EndpointChainingRule do
  @moduledoc """
  EndpointChainingRule specifies the proxies contained in a particular deployment group, so that other deployment groups can find them in chaining calls.

  ## Attributes

  *   `deploymentGroup` (*type:* `String.t`, *default:* `nil`) - The deployment group to target for cross-shard chaining calls to these proxies.
  *   `proxyIds` (*type:* `list(String.t)`, *default:* `nil`) - List of proxy ids which may be found in the given deployment group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deploymentGroup => String.t() | nil,
          :proxyIds => list(String.t()) | nil
        }

  field(:deploymentGroup)
  field(:proxyIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EndpointChainingRule do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EndpointChainingRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EndpointChainingRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end