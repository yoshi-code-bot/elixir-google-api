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

defmodule GoogleApi.CloudBuild.V2.Model.WorkspacePipelineTaskBinding do
  @moduledoc """
  WorkspacePipelineTaskBinding maps workspaces from the PipelineSpec to the workspaces declared in the Task.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the workspace as declared by the task.
  *   `subPath` (*type:* `String.t`, *default:* `nil`) - Optional. SubPath is optionally a directory on the volume which should be used for this binding (i.e. the volume will be mounted at this sub directory). +optional
  *   `workspace` (*type:* `String.t`, *default:* `nil`) - Name of the workspace declared by the pipeline.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :subPath => String.t() | nil,
          :workspace => String.t() | nil
        }

  field(:name)
  field(:subPath)
  field(:workspace)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.WorkspacePipelineTaskBinding do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.WorkspacePipelineTaskBinding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.WorkspacePipelineTaskBinding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end