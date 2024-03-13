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

defmodule GoogleApi.MigrationCenter.V1.Model.OpenFileDetails do
  @moduledoc """
  Open file Information.

  ## Attributes

  *   `command` (*type:* `String.t`, *default:* `nil`) - Opened file command.
  *   `filePath` (*type:* `String.t`, *default:* `nil`) - Opened file file path.
  *   `fileType` (*type:* `String.t`, *default:* `nil`) - Opened file file type.
  *   `user` (*type:* `String.t`, *default:* `nil`) - Opened file user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :command => String.t() | nil,
          :filePath => String.t() | nil,
          :fileType => String.t() | nil,
          :user => String.t() | nil
        }

  field(:command)
  field(:filePath)
  field(:fileType)
  field(:user)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.OpenFileDetails do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.OpenFileDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.OpenFileDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
