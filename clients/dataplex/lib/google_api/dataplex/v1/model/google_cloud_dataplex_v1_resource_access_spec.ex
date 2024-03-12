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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ResourceAccessSpec do
  @moduledoc """
  ResourceAccessSpec holds the access control configuration to be enforced on the resources, for example, Cloud Storage bucket, BigQuery dataset, BigQuery table.

  ## Attributes

  *   `owners` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The set of principals to be granted owner role on the resource.
  *   `readers` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}, serviceAccount:{email} group:{email}. The set of principals to be granted reader role on the resource.
  *   `writers` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The set of principals to be granted writer role on the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :owners => list(String.t()) | nil,
          :readers => list(String.t()) | nil,
          :writers => list(String.t()) | nil
        }

  field(:owners, type: :list)
  field(:readers, type: :list)
  field(:writers, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ResourceAccessSpec do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ResourceAccessSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ResourceAccessSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end