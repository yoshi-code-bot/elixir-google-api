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

defmodule GoogleApi.WalletObjects.V1.Model.SaveRestrictions do
  @moduledoc """
  Defines restrictions on the object that will be verified during save. Note: this is an advanced feature, please contact Google for implementation support.

  ## Attributes

  *   `restrictToEmailSha256` (*type:* `String.t`, *default:* `nil`) - Restrict the save of the referencing object to the given email address only. This is the hex output of SHA256 sum of the email address, all lowercase and without any notations like "." or "+", except "@". For example, for example@example.com, this value will be 31c5543c1734d25c7206f5fd591525d0295bec6fe84ff82f946a34fe970a1e66 and for Example@example.com, this value will be bc34f262c93ad7122763684ccea6f07fb7f5d8a2d11e60ce15a6f43fe70ce632 If email address of the logged-in user who tries to save this pass does not match with the defined value here, users won't be allowed to save this pass. They will instead be prompted with an error to contact the issuer. This information should be gathered from the user with an explicit consent via Sign in with Google integration https://developers.google.com/identity/authentication. Please contact with support before using Save Restrictions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :restrictToEmailSha256 => String.t() | nil
        }

  field(:restrictToEmailSha256)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.SaveRestrictions do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.SaveRestrictions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.SaveRestrictions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
