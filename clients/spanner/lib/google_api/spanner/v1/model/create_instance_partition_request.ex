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

defmodule GoogleApi.Spanner.V1.Model.CreateInstancePartitionRequest do
  @moduledoc """
  The request for CreateInstancePartition.

  ## Attributes

  *   `instancePartition` (*type:* `GoogleApi.Spanner.V1.Model.InstancePartition.t`, *default:* `nil`) - Required. The instance partition to create. The instance_partition.name may be omitted, but if specified must be `/instancePartitions/`.
  *   `instancePartitionId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the instance partition to create. Valid identifiers are of the form `a-z*[a-z0-9]` and must be between 2 and 64 characters in length.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instancePartition => GoogleApi.Spanner.V1.Model.InstancePartition.t() | nil,
          :instancePartitionId => String.t() | nil
        }

  field(:instancePartition, as: GoogleApi.Spanner.V1.Model.InstancePartition)
  field(:instancePartitionId)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.CreateInstancePartitionRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.CreateInstancePartitionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.CreateInstancePartitionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end