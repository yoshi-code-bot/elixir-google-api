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

defmodule GoogleApi.Dataform.V1beta1.Model.CompilationResultAction do
  @moduledoc """
  Represents a single Dataform action in a compilation result.

  ## Attributes

  *   `assertion` (*type:* `GoogleApi.Dataform.V1beta1.Model.Assertion.t`, *default:* `nil`) - The assertion executed by this action.
  *   `canonicalTarget` (*type:* `GoogleApi.Dataform.V1beta1.Model.Target.t`, *default:* `nil`) - The action's identifier if the project had been compiled without any overrides configured. Unique within the compilation result.
  *   `declaration` (*type:* `GoogleApi.Dataform.V1beta1.Model.Declaration.t`, *default:* `nil`) - The declaration declared by this action.
  *   `filePath` (*type:* `String.t`, *default:* `nil`) - The full path including filename in which this action is located, relative to the workspace root.
  *   `internalMetadata` (*type:* `String.t`, *default:* `nil`) - Output only. All the metadata information that is used internally to serve the resource. For example: timestamps, flags, status fields, etc. The format of this field is a JSON string.
  *   `notebook` (*type:* `GoogleApi.Dataform.V1beta1.Model.Notebook.t`, *default:* `nil`) - The notebook executed by this action.
  *   `operations` (*type:* `GoogleApi.Dataform.V1beta1.Model.Operations.t`, *default:* `nil`) - The database operations executed by this action.
  *   `relation` (*type:* `GoogleApi.Dataform.V1beta1.Model.Relation.t`, *default:* `nil`) - The database relation created/updated by this action.
  *   `target` (*type:* `GoogleApi.Dataform.V1beta1.Model.Target.t`, *default:* `nil`) - This action's identifier. Unique within the compilation result.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assertion => GoogleApi.Dataform.V1beta1.Model.Assertion.t() | nil,
          :canonicalTarget => GoogleApi.Dataform.V1beta1.Model.Target.t() | nil,
          :declaration => GoogleApi.Dataform.V1beta1.Model.Declaration.t() | nil,
          :filePath => String.t() | nil,
          :internalMetadata => String.t() | nil,
          :notebook => GoogleApi.Dataform.V1beta1.Model.Notebook.t() | nil,
          :operations => GoogleApi.Dataform.V1beta1.Model.Operations.t() | nil,
          :relation => GoogleApi.Dataform.V1beta1.Model.Relation.t() | nil,
          :target => GoogleApi.Dataform.V1beta1.Model.Target.t() | nil
        }

  field(:assertion, as: GoogleApi.Dataform.V1beta1.Model.Assertion)
  field(:canonicalTarget, as: GoogleApi.Dataform.V1beta1.Model.Target)
  field(:declaration, as: GoogleApi.Dataform.V1beta1.Model.Declaration)
  field(:filePath)
  field(:internalMetadata)
  field(:notebook, as: GoogleApi.Dataform.V1beta1.Model.Notebook)
  field(:operations, as: GoogleApi.Dataform.V1beta1.Model.Operations)
  field(:relation, as: GoogleApi.Dataform.V1beta1.Model.Relation)
  field(:target, as: GoogleApi.Dataform.V1beta1.Model.Target)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.CompilationResultAction do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.CompilationResultAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.CompilationResultAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
