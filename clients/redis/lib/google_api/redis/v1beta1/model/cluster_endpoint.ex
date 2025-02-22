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

defmodule GoogleApi.Redis.V1beta1.Model.ClusterEndpoint do
  @moduledoc """
  ClusterEndpoint consists of PSC connections that are created as a group in each VPC network for accessing the cluster. In each group, there shall be one connection for each service attachment in the cluster.

  ## Attributes

  *   `connections` (*type:* `list(GoogleApi.Redis.V1beta1.Model.ConnectionDetail.t)`, *default:* `nil`) - Required. A group of PSC connections. They are created in the same VPC network, one for each service attachment in the cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connections => list(GoogleApi.Redis.V1beta1.Model.ConnectionDetail.t()) | nil
        }

  field(:connections, as: GoogleApi.Redis.V1beta1.Model.ConnectionDetail, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.ClusterEndpoint do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.ClusterEndpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.ClusterEndpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
