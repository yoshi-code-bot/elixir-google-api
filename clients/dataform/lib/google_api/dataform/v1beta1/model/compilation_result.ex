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

defmodule GoogleApi.Dataform.V1beta1.Model.CompilationResult do
  @moduledoc """
  Represents the result of compiling a Dataform project.

  ## Attributes

  *   `codeCompilationConfig` (*type:* `GoogleApi.Dataform.V1beta1.Model.CodeCompilationConfig.t`, *default:* `nil`) - Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  *   `compilationErrors` (*type:* `list(GoogleApi.Dataform.V1beta1.Model.CompilationError.t)`, *default:* `nil`) - Output only. Errors encountered during project compilation.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp of when the compilation result was created.
  *   `dataEncryptionState` (*type:* `GoogleApi.Dataform.V1beta1.Model.DataEncryptionState.t`, *default:* `nil`) - Output only. Only set if the repository has a KMS Key.
  *   `dataformCoreVersion` (*type:* `String.t`, *default:* `nil`) - Output only. The version of `@dataform/core` that was used for compilation.
  *   `gitCommitish` (*type:* `String.t`, *default:* `nil`) - Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  *   `internalMetadata` (*type:* `String.t`, *default:* `nil`) - Output only. All the metadata information that is used internally to serve the resource. For example: timestamps, flags, status fields, etc. The format of this field is a JSON string.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The compilation result's name.
  *   `releaseConfig` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the release config to compile. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  *   `resolvedGitCommitSha` (*type:* `String.t`, *default:* `nil`) - Output only. The fully resolved Git commit SHA of the code that was compiled. Not set for compilation results whose source is a workspace.
  *   `workspace` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :codeCompilationConfig =>
            GoogleApi.Dataform.V1beta1.Model.CodeCompilationConfig.t() | nil,
          :compilationErrors => list(GoogleApi.Dataform.V1beta1.Model.CompilationError.t()) | nil,
          :createTime => DateTime.t() | nil,
          :dataEncryptionState => GoogleApi.Dataform.V1beta1.Model.DataEncryptionState.t() | nil,
          :dataformCoreVersion => String.t() | nil,
          :gitCommitish => String.t() | nil,
          :internalMetadata => String.t() | nil,
          :name => String.t() | nil,
          :releaseConfig => String.t() | nil,
          :resolvedGitCommitSha => String.t() | nil,
          :workspace => String.t() | nil
        }

  field(:codeCompilationConfig, as: GoogleApi.Dataform.V1beta1.Model.CodeCompilationConfig)
  field(:compilationErrors, as: GoogleApi.Dataform.V1beta1.Model.CompilationError, type: :list)
  field(:createTime, as: DateTime)
  field(:dataEncryptionState, as: GoogleApi.Dataform.V1beta1.Model.DataEncryptionState)
  field(:dataformCoreVersion)
  field(:gitCommitish)
  field(:internalMetadata)
  field(:name)
  field(:releaseConfig)
  field(:resolvedGitCommitSha)
  field(:workspace)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.CompilationResult do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.CompilationResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.CompilationResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
