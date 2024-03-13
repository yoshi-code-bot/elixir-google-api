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

defmodule GoogleApi.CloudBuild.V2.Model.SkippedTask do
  @moduledoc """
  SkippedTask is used to describe the Tasks that were skipped due to their When Expressions evaluating to False.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name is the Pipeline Task name
  *   `reason` (*type:* `String.t`, *default:* `nil`) - Output only. Reason is the cause of the PipelineTask being skipped.
  *   `whenExpressions` (*type:* `list(GoogleApi.CloudBuild.V2.Model.WhenExpression.t)`, *default:* `nil`) - WhenExpressions is the list of checks guarding the execution of the PipelineTask
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :reason => String.t() | nil,
          :whenExpressions => list(GoogleApi.CloudBuild.V2.Model.WhenExpression.t()) | nil
        }

  field(:name)
  field(:reason)
  field(:whenExpressions, as: GoogleApi.CloudBuild.V2.Model.WhenExpression, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.SkippedTask do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.SkippedTask.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.SkippedTask do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end