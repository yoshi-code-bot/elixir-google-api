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

defmodule GoogleApi.AndroidManagement.V1.Model.GoogleAuthenticationSettings do
  @moduledoc """
  Contains settings for Google-provided user authentication.

  ## Attributes

  *   `googleAuthenticationRequired` (*type:* `String.t`, *default:* `nil`) - Output only. Whether users need to be authenticated by Google during the enrollment process. IT admin can specify if Google authentication is enabled for the enterprise for knowledge worker devices. This value can be set only via the Google Admin Console. Google authentication can be used with signin_url In the case where Google authentication is required and a signin_url is specified, Google authentication will be launched before signin_url.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googleAuthenticationRequired => String.t() | nil
        }

  field(:googleAuthenticationRequired)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.GoogleAuthenticationSettings do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.GoogleAuthenticationSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.GoogleAuthenticationSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
