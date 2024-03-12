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

defmodule GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1UploadedFileConstraints do
  @moduledoc """
  Constraints on the uploaded file of a file policy.

  ## Attributes

  *   `sizeLimitBytes` (*type:* `String.t`, *default:* `nil`) - The size limit of uploaded files for a setting, in bytes.
  *   `supportedContentTypes` (*type:* `list(String.t)`, *default:* `nil`) - File types that can be uploaded for a setting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sizeLimitBytes => String.t() | nil,
          :supportedContentTypes => list(String.t()) | nil
        }

  field(:sizeLimitBytes)
  field(:supportedContentTypes, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1UploadedFileConstraints do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1UploadedFileConstraints.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1UploadedFileConstraints do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end