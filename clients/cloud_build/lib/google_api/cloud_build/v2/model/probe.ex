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

defmodule GoogleApi.CloudBuild.V2.Model.Probe do
  @moduledoc """
  Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

  ## Attributes

  *   `exec` (*type:* `GoogleApi.CloudBuild.V2.Model.ExecAction.t`, *default:* `nil`) - Optional. Exec specifies the action to take. +optional
  *   `periodSeconds` (*type:* `integer()`, *default:* `nil`) - Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exec => GoogleApi.CloudBuild.V2.Model.ExecAction.t() | nil,
          :periodSeconds => integer() | nil
        }

  field(:exec, as: GoogleApi.CloudBuild.V2.Model.ExecAction)
  field(:periodSeconds)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.Probe do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.Probe.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.Probe do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end