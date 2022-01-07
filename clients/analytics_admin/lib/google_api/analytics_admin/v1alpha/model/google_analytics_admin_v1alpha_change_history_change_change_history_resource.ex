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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource do
  @moduledoc """
  A snapshot of a resource as before or after the result of a change in change history.

  ## Attributes

  *   `account` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount.t`, *default:* `nil`) - A snapshot of an Account resource in change history.
  *   `conversionEvent` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaConversionEvent.t`, *default:* `nil`) - A snapshot of a ConversionEvent resource in change history.
  *   `customDimension` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaCustomDimension.t`, *default:* `nil`) - A snapshot of a CustomDimension resource in change history.
  *   `customMetric` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaCustomMetric.t`, *default:* `nil`) - A snapshot of a CustomMetric resource in change history.
  *   `dataRetentionSettings` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataRetentionSettings.t`, *default:* `nil`) - A snapshot of a data retention settings resource in change history.
  *   `dataStream` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataStream.t`, *default:* `nil`) - A snapshot of a DataStream resource in change history.
  *   `displayVideo360AdvertiserLink` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.t`, *default:* `nil`) - A snapshot of a DisplayVideo360AdvertiserLink resource in change history.
  *   `displayVideo360AdvertiserLinkProposal` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal.t`, *default:* `nil`) - A snapshot of a DisplayVideo360AdvertiserLinkProposal resource in change history.
  *   `firebaseLink` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaFirebaseLink.t`, *default:* `nil`) - A snapshot of a FirebaseLink resource in change history.
  *   `googleAdsLink` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink.t`, *default:* `nil`) - A snapshot of a GoogleAdsLink resource in change history.
  *   `googleSignalsSettings` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.t`, *default:* `nil`) - A snapshot of a GoogleSignalsSettings resource in change history.
  *   `measurementProtocolSecret` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.t`, *default:* `nil`) - A snapshot of a MeasurementProtocolSecret resource in change history.
  *   `property` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty.t`, *default:* `nil`) - A snapshot of a Property resource in change history.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount.t() | nil,
          :conversionEvent =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaConversionEvent.t()
            | nil,
          :customDimension =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaCustomDimension.t()
            | nil,
          :customMetric =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaCustomMetric.t()
            | nil,
          :dataRetentionSettings =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataRetentionSettings.t()
            | nil,
          :dataStream =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataStream.t() | nil,
          :displayVideo360AdvertiserLink =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.t()
            | nil,
          :displayVideo360AdvertiserLinkProposal =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal.t()
            | nil,
          :firebaseLink =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaFirebaseLink.t()
            | nil,
          :googleAdsLink =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink.t()
            | nil,
          :googleSignalsSettings =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.t()
            | nil,
          :measurementProtocolSecret =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.t()
            | nil,
          :property =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty.t() | nil
        }

  field(:account, as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount)

  field(:conversionEvent,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaConversionEvent
  )

  field(:customDimension,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaCustomDimension
  )

  field(:customMetric,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaCustomMetric
  )

  field(:dataRetentionSettings,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataRetentionSettings
  )

  field(:dataStream,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataStream
  )

  field(:displayVideo360AdvertiserLink,
    as:
      GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
  )

  field(:displayVideo360AdvertiserLinkProposal,
    as:
      GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
  )

  field(:firebaseLink,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaFirebaseLink
  )

  field(:googleAdsLink,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleAdsLink
  )

  field(:googleSignalsSettings,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
  )

  field(:measurementProtocolSecret,
    as:
      GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
  )

  field(:property, as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaProperty)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
