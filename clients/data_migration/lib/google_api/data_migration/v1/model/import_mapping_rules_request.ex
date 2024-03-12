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

defmodule GoogleApi.DataMigration.V1.Model.ImportMappingRulesRequest do
  @moduledoc """
  Request message for 'ImportMappingRules' request.

  ## Attributes

  *   `autoCommit` (*type:* `boolean()`, *default:* `nil`) - Required. Should the conversion workspace be committed automatically after the import operation.
  *   `rulesFiles` (*type:* `list(GoogleApi.DataMigration.V1.Model.RulesFile.t)`, *default:* `nil`) - Required. One or more rules files.
  *   `rulesFormat` (*type:* `String.t`, *default:* `nil`) - Required. The format of the rules content file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoCommit => boolean() | nil,
          :rulesFiles => list(GoogleApi.DataMigration.V1.Model.RulesFile.t()) | nil,
          :rulesFormat => String.t() | nil
        }

  field(:autoCommit)
  field(:rulesFiles, as: GoogleApi.DataMigration.V1.Model.RulesFile, type: :list)
  field(:rulesFormat)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.ImportMappingRulesRequest do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.ImportMappingRulesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.ImportMappingRulesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end