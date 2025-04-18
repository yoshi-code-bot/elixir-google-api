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

defmodule GoogleApi.IAM.V1.Model.AttestationRule do
  @moduledoc """
  Defines which workloads can receive an identity within a pool. When an AttestationRule is defined under a managed identity, matching workloads may receive that identity.

  ## Attributes

  *   `googleCloudResource` (*type:* `String.t`, *default:* `nil`) - Optional. A single workload operating on Google Cloud. For example: `//compute.googleapis.com/projects/123/uid/zones/us-central1-a/instances/12345`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googleCloudResource => String.t() | nil
        }

  field(:googleCloudResource)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.AttestationRule do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.AttestationRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.AttestationRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
