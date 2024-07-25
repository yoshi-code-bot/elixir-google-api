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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo do
  @moduledoc """
  Contains the details of the execution info: this includes the replay reason and replay tree connecting executions in a parent-child relationship

  ## Attributes

  *   `originalExecutionInfoId` (*type:* `String.t`, *default:* `nil`) - If this execution is a replay of another execution, then this field contains the original execution id.
  *   `replayReason` (*type:* `String.t`, *default:* `nil`) - reason for replay
  *   `replayedExecutionInfoIds` (*type:* `list(String.t)`, *default:* `nil`) - If this execution has been replayed, then this field contains the execution ids of the replayed executions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :originalExecutionInfoId => String.t() | nil,
          :replayReason => String.t() | nil,
          :replayedExecutionInfoIds => list(String.t()) | nil
        }

  field(:originalExecutionInfoId)
  field(:replayReason)
  field(:replayedExecutionInfoIds, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Integrations.V1.Model.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
