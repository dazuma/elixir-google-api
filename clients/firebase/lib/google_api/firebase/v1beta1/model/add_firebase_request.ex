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

defmodule GoogleApi.Firebase.V1beta1.Model.AddFirebaseRequest do
  @moduledoc """
  All fields are required.

  ## Attributes

  *   `locationId` (*type:* `String.t`, *default:* `nil`) - Deprecated. Instead, to set a Project's default GCP resource location, call [`FinalizeDefaultLocation`](../projects.defaultLocation/finalize) after you add Firebase resources to the GCP `Project`. The ID of the Project's default GCP resource location. The location must be one of the available [GCP resource locations](https://firebase.google.com/docs/projects/locations).
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Deprecated. Instead, to link a Project with a Google Analytics account, call [`AddGoogleAnalytics`](../../v1beta1/projects/addGoogleAnalytics) after you add Firebase resources to the GCP `Project`. The region code (CLDR) that the account will use for Google Analytics data For example: US, GB, or DE In Java, use `com.google.i18n.identifiers.RegionCode`.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - Deprecated. Instead, to link a Project with a Google Analytics account, call [`AddGoogleAnalytics`](../../v1beta1/projects/addGoogleAnalytics) after you add Firebase resources to the GCP `Project`. The time zone that the account will use for Google Analytics data. For example: America/Los_Angeles or Africa/Abidjan
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :locationId => String.t() | nil,
          :regionCode => String.t() | nil,
          :timeZone => String.t() | nil
        }

  field(:locationId)
  field(:regionCode)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.AddFirebaseRequest do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.AddFirebaseRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.AddFirebaseRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
