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

defmodule GoogleApi.FirebaseHosting.V1.Model.HttpUpdate do
  @moduledoc """
  A file you can add to your existing, non-Hosting hosting service that confirms your intent to allow Hosting's Certificate Authorities to create an SSL certificate for your domain.

  ## Attributes

  *   `checkError` (*type:* `GoogleApi.FirebaseHosting.V1.Model.Status.t`, *default:* `nil`) - Output only. An error encountered during the last contents check. If null, the check completed successfully.
  *   `desired` (*type:* `String.t`, *default:* `nil`) - Output only. A text string to serve at the path.
  *   `discovered` (*type:* `String.t`, *default:* `nil`) - Output only. Whether Hosting was able to find the required file contents on the specified path during its last check.
  *   `lastCheckTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last time Hosting systems checked for the file contents.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Output only. The path to the file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checkError => GoogleApi.FirebaseHosting.V1.Model.Status.t() | nil,
          :desired => String.t() | nil,
          :discovered => String.t() | nil,
          :lastCheckTime => DateTime.t() | nil,
          :path => String.t() | nil
        }

  field(:checkError, as: GoogleApi.FirebaseHosting.V1.Model.Status)
  field(:desired)
  field(:discovered)
  field(:lastCheckTime, as: DateTime)
  field(:path)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1.Model.HttpUpdate do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1.Model.HttpUpdate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1.Model.HttpUpdate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end