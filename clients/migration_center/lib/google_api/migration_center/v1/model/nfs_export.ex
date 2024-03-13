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

defmodule GoogleApi.MigrationCenter.V1.Model.NfsExport do
  @moduledoc """
  NFS export.

  ## Attributes

  *   `exportDirectory` (*type:* `String.t`, *default:* `nil`) - The directory being exported.
  *   `hosts` (*type:* `list(String.t)`, *default:* `nil`) - The hosts or networks to which the export is being shared.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exportDirectory => String.t() | nil,
          :hosts => list(String.t()) | nil
        }

  field(:exportDirectory)
  field(:hosts, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.NfsExport do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.NfsExport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.NfsExport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
