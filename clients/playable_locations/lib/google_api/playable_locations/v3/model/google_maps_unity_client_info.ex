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

defmodule GoogleApi.PlayableLocations.V3.Model.GoogleMapsUnityClientInfo do
  @moduledoc """
  Client information.

  ## Attributes

  *   `apiClient` (*type:* `String.t`, *default:* `nil`) - API client name and version. For example, the SDK calling the API. The exact format is up to the client.
  *   `applicationId` (*type:* `String.t`, *default:* `nil`) - Application ID, such as the package name on Android and the bundle identifier on iOS platforms.
  *   `applicationVersion` (*type:* `String.t`, *default:* `nil`) - Application version number, such as "1.2.3". The exact format is application-dependent.
  *   `deviceModel` (*type:* `String.t`, *default:* `nil`) - Device model as reported by the device. The exact format is platform-dependent.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Language code (in BCP-47 format) indicating the UI language of the client. Examples are "en", "en-US" or "ja-Latn". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  *   `operatingSystem` (*type:* `String.t`, *default:* `nil`) - Operating system name and version as reported by the OS. For example, "Mac OS X 10.10.4". The exact format is platform-dependent.
  *   `operatingSystemBuild` (*type:* `String.t`, *default:* `nil`) - Build number/version of the operating system. e.g., the contents of android.os.Build.ID in Android, or the contents of sysctl "kern.osversion" in iOS.
  *   `platform` (*type:* `String.t`, *default:* `nil`) - Platform where the application is running.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiClient => String.t() | nil,
          :applicationId => String.t() | nil,
          :applicationVersion => String.t() | nil,
          :deviceModel => String.t() | nil,
          :languageCode => String.t() | nil,
          :operatingSystem => String.t() | nil,
          :operatingSystemBuild => String.t() | nil,
          :platform => String.t() | nil
        }

  field(:apiClient)
  field(:applicationId)
  field(:applicationVersion)
  field(:deviceModel)
  field(:languageCode)
  field(:operatingSystem)
  field(:operatingSystemBuild)
  field(:platform)
end

defimpl Poison.Decoder, for: GoogleApi.PlayableLocations.V3.Model.GoogleMapsUnityClientInfo do
  def decode(value, options) do
    GoogleApi.PlayableLocations.V3.Model.GoogleMapsUnityClientInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlayableLocations.V3.Model.GoogleMapsUnityClientInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
