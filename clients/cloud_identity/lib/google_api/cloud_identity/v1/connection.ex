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

defmodule GoogleApi.CloudIdentity.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.CloudIdentity.V1.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # Private Service: https://www.googleapis.com/auth/cloud-identity.devices
      "https://www.googleapis.com/auth/cloud-identity.devices",

      # See your device details
      "https://www.googleapis.com/auth/cloud-identity.devices.lookup",

      # Private Service: https://www.googleapis.com/auth/cloud-identity.devices.readonly
      "https://www.googleapis.com/auth/cloud-identity.devices.readonly",

      # See, change, create, and delete any of the Cloud Identity Groups that you can access, including the members of each group
      "https://www.googleapis.com/auth/cloud-identity.groups",

      # See any Cloud Identity Groups that you can access, including group members and their emails
      "https://www.googleapis.com/auth/cloud-identity.groups.readonly",

      # See and edit all of the Inbound SSO profiles and their assignments to any Org Units or Google Groups in your Cloud Identity Organization.
      "https://www.googleapis.com/auth/cloud-identity.inboundsso",

      # See all of the Inbound SSO profiles and their assignments to any Org Units or Google Groups in your Cloud Identity Organization.
      "https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly",

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      "https://www.googleapis.com/auth/cloud-platform"
    ],
    otp_app: :google_api_cloud_identity,
    base_url: "https://cloudidentity.googleapis.com/"
end
