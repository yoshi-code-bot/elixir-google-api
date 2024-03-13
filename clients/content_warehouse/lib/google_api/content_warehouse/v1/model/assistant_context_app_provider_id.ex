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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantContextAppProviderId do
  @moduledoc """
  LINT.IfChange Identifier for an application provider. NOTE: AppProviderId contains surface-specific info, such as the Android package name of the application. This was necessary for supporting current use cases that rely on surface-specific info in feature code. Eventually we want to deprecate AppProviderId and fetch surface-specific info in some other way (e.g. in a surface-translation layer). But until then, we may continue extending AppProviderId with other surface-specific info.

  ## Attributes

  *   `activityClassName` (*type:* `String.t`, *default:* `nil`) - The activity class name. E.g. com.google.android.gm.ui.MailActivityGmail
  *   `androidPackageName` (*type:* `String.t`, *default:* `nil`) - Unique package name that identifies an Android app of the provider.
  *   `castAppId` (*type:* `String.t`, *default:* `nil`) - Unique cast app id that identifies a Cast app of the provider.
  *   `versionCode` (*type:* `integer()`, *default:* `nil`) - Version code of the application.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activityClassName => String.t() | nil,
          :androidPackageName => String.t() | nil,
          :castAppId => String.t() | nil,
          :versionCode => integer() | nil
        }

  field(:activityClassName)
  field(:androidPackageName)
  field(:castAppId)
  field(:versionCode)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantContextAppProviderId do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantContextAppProviderId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantContextAppProviderId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end