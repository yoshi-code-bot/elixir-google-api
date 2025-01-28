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

defmodule GoogleApi.AppEngine.V1.Model.Application do
  @moduledoc """
  An Application resource contains the top-level configuration of an App Engine application.

  ## Attributes

  *   `authDomain` (*type:* `String.t`, *default:* `nil`) - Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.
  *   `codeBucket` (*type:* `String.t`, *default:* `nil`) - Output only. Google Cloud Storage bucket that can be used for storing files associated with this application. This bucket is associated with the application and can be used by the gcloud deployment commands.@OutputOnly
  *   `databaseType` (*type:* `String.t`, *default:* `nil`) - The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  *   `defaultBucket` (*type:* `String.t`, *default:* `nil`) - Output only. Google Cloud Storage bucket that can be used by this application to store content.@OutputOnly
  *   `defaultCookieExpiration` (*type:* `String.t`, *default:* `nil`) - Cookie expiration policy for this application.
  *   `defaultHostname` (*type:* `String.t`, *default:* `nil`) - Output only. Hostname used to reach this application, as resolved by App Engine.@OutputOnly
  *   `dispatchRules` (*type:* `list(GoogleApi.AppEngine.V1.Model.UrlDispatchRule.t)`, *default:* `nil`) - HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.
  *   `featureSettings` (*type:* `GoogleApi.AppEngine.V1.Model.FeatureSettings.t`, *default:* `nil`) - The feature specific settings to be used in the application.
  *   `gcrDomain` (*type:* `String.t`, *default:* `nil`) - Output only. The Google Container Registry domain used for storing managed build docker images for this application.
  *   `generatedCustomerMetadata` (*type:* `map()`, *default:* `nil`) - Additional Google Generated Customer Metadata, this field won't be provided by default and can be requested by setting the IncludeExtraData field in GetApplicationRequest
  *   `iap` (*type:* `GoogleApi.AppEngine.V1.Model.IdentityAwareProxy.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - Identifier of the Application resource. This identifier is equivalent to the project ID of the Google Cloud Platform project where you want to deploy your application. Example: myapp.
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Full path to the Application resource in the API. Example: apps/myapp.@OutputOnly
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.
  *   `servingStatus` (*type:* `String.t`, *default:* `nil`) - Serving status of this application.
  *   `sslPolicy` (*type:* `String.t`, *default:* `nil`) - The SSL policy that will be applied to the application. If set to Modern it will restrict traffic with TLS < 1.2 and allow only Modern Ciphers suite
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authDomain => String.t() | nil,
          :codeBucket => String.t() | nil,
          :databaseType => String.t() | nil,
          :defaultBucket => String.t() | nil,
          :defaultCookieExpiration => String.t() | nil,
          :defaultHostname => String.t() | nil,
          :dispatchRules => list(GoogleApi.AppEngine.V1.Model.UrlDispatchRule.t()) | nil,
          :featureSettings => GoogleApi.AppEngine.V1.Model.FeatureSettings.t() | nil,
          :gcrDomain => String.t() | nil,
          :generatedCustomerMetadata => map() | nil,
          :iap => GoogleApi.AppEngine.V1.Model.IdentityAwareProxy.t() | nil,
          :id => String.t() | nil,
          :locationId => String.t() | nil,
          :name => String.t() | nil,
          :serviceAccount => String.t() | nil,
          :servingStatus => String.t() | nil,
          :sslPolicy => String.t() | nil
        }

  field(:authDomain)
  field(:codeBucket)
  field(:databaseType)
  field(:defaultBucket)
  field(:defaultCookieExpiration)
  field(:defaultHostname)
  field(:dispatchRules, as: GoogleApi.AppEngine.V1.Model.UrlDispatchRule, type: :list)
  field(:featureSettings, as: GoogleApi.AppEngine.V1.Model.FeatureSettings)
  field(:gcrDomain)
  field(:generatedCustomerMetadata, type: :map)
  field(:iap, as: GoogleApi.AppEngine.V1.Model.IdentityAwareProxy)
  field(:id)
  field(:locationId)
  field(:name)
  field(:serviceAccount)
  field(:servingStatus)
  field(:sslPolicy)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.Application do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.Application.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.Application do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
