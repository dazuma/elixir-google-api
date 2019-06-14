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

defmodule GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4 do
  @moduledoc """


  ## Attributes

  - captchaResult (String.t): The captcha verify result Defaults to `nil`.
  - formattedResults (GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4FormattedResults.t): Localized PageSpeed results. Contains a ruleResults entry for each PageSpeed rule instantiated and run by the server. Defaults to `nil`.
  - id (String.t): Canonicalized and final URL for the document, after following page redirects (if any). Defaults to `nil`.
  - invalidRules (list(String.t)): List of rules that were specified in the request, but which the server did not know how to instantiate. Defaults to `nil`.
  - kind (String.t): Kind of result. Defaults to `pagespeedonline#result`.
  - loadingExperience (GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4LoadingExperience.t): Metrics of end users' page loading experience. Defaults to `nil`.
  - pageStats (GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4PageStats.t): Summary statistics for the page, such as number of JavaScript bytes, number of HTML bytes, etc. Defaults to `nil`.
  - responseCode (integer()): Response code for the document. 200 indicates a normal page load. 4xx/5xx indicates an error. Defaults to `nil`.
  - ruleGroups (map()): A map with one entry for each rule group in these results. Defaults to `nil`.
  - screenshot (GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiImageV4.t): Base64-encoded screenshot of the page that was analyzed. Defaults to `nil`.
  - snapshots (list(GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiImageV4.t)): Additional base64-encoded screenshots of the page, in various partial render states. Defaults to `nil`.
  - title (String.t): Title of the page, as displayed in the browser's title bar. Defaults to `nil`.
  - version (GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4Version.t): The version of PageSpeed used to generate these results. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :captchaResult => String.t(),
          :formattedResults =>
            GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4FormattedResults.t(),
          :id => String.t(),
          :invalidRules => list(String.t()),
          :kind => String.t(),
          :loadingExperience =>
            GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4LoadingExperience.t(),
          :pageStats =>
            GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4PageStats.t(),
          :responseCode => integer(),
          :ruleGroups => map(),
          :screenshot => GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiImageV4.t(),
          :snapshots => list(GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiImageV4.t()),
          :title => String.t(),
          :version =>
            GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4Version.t()
        }

  field(:captchaResult)

  field(
    :formattedResults,
    as: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4FormattedResults
  )

  field(:id)
  field(:invalidRules, type: :list)
  field(:kind)

  field(
    :loadingExperience,
    as: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4LoadingExperience
  )

  field(
    :pageStats,
    as: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4PageStats
  )

  field(:responseCode)
  field(:ruleGroups, type: :map)
  field(:screenshot, as: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiImageV4)
  field(:snapshots, as: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiImageV4, type: :list)
  field(:title)
  field(:version, as: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4Version)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4 do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiPagespeedResponseV4 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
