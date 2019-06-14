# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Calendar.V3.Model.EntryPoint do
  @moduledoc """


  ## Attributes

  - accessCode (String.t): The access code to access the conference. The maximum length is 128 characters.
  When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.
  Optional. Defaults to `nil`.
  - entryPointFeatures (list(String.t)): Features of the entry point, such as being toll or toll-free. One entry point can have multiple features. However, toll and toll-free cannot be both set on the same entry point. Defaults to `nil`.
  - entryPointType (String.t): The type of the conference entry point.
  Possible values are:  
  - "video" - joining a conference over HTTP. A conference can have zero or one video entry point.
  - "phone" - joining a conference by dialing a phone number. A conference can have zero or more phone entry points.
  - "sip" - joining a conference over SIP. A conference can have zero or one sip entry point.
  - "more" - further conference joining instructions, for example additional phone numbers. A conference can have zero or one more entry point. A conference with only a more entry point is not a valid conference. Defaults to `nil`.
  - label (String.t): The label for the URI. Visible to end users. Not localized. The maximum length is 512 characters.
  Examples:  
  - for video: meet.google.com/aaa-bbbb-ccc
  - for phone: +1 123 268 2601
  - for sip: 12345678@altostrat.com
  - for more: should not be filled  
  Optional. Defaults to `nil`.
  - meetingCode (String.t): The meeting code to access the conference. The maximum length is 128 characters.
  When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.
  Optional. Defaults to `nil`.
  - passcode (String.t): The passcode to access the conference. The maximum length is 128 characters.
  When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed. Defaults to `nil`.
  - password (String.t): The password to access the conference. The maximum length is 128 characters.
  When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.
  Optional. Defaults to `nil`.
  - pin (String.t): The PIN to access the conference. The maximum length is 128 characters.
  When creating new conference data, populate only the subset of {meetingCode, accessCode, passcode, password, pin} fields that match the terminology that the conference provider uses. Only the populated fields should be displayed.
  Optional. Defaults to `nil`.
  - regionCode (String.t): The CLDR/ISO 3166 region code for the country associated with this phone access. Example: "SE" for Sweden.
  Calendar backend will populate this field only for EntryPointType.PHONE. Defaults to `nil`.
  - uri (String.t): The URI of the entry point. The maximum length is 1300 characters.
  Format:  
  - for video, http: or https: schema is required.
  - for phone, tel: schema is required. The URI should include the entire dial sequence (e.g., tel:+12345678900,,,123456789;1234).
  - for sip, sip: schema is required, e.g., sip:12345678@myprovider.com.
  - for more, http: or https: schema is required. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessCode => String.t(),
          :entryPointFeatures => list(String.t()),
          :entryPointType => String.t(),
          :label => String.t(),
          :meetingCode => String.t(),
          :passcode => String.t(),
          :password => String.t(),
          :pin => String.t(),
          :regionCode => String.t(),
          :uri => String.t()
        }

  field(:accessCode)
  field(:entryPointFeatures, type: :list)
  field(:entryPointType)
  field(:label)
  field(:meetingCode)
  field(:passcode)
  field(:password)
  field(:pin)
  field(:regionCode)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.EntryPoint do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EntryPoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.EntryPoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
