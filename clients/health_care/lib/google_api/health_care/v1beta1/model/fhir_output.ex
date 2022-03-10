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

defmodule GoogleApi.HealthCare.V1beta1.Model.FhirOutput do
  @moduledoc """
  Details about the FHIR store to write the output to.

  ## Attributes

  *   `fhirStore` (*type:* `String.t`, *default:* `nil`) - Name of the output FHIR store, which must already exist. You must grant the healthcare.fhirResources.update permission on the destination store to your project's **Cloud Healthcare Service Agent** [service account](https://cloud.google.com/healthcare/docs/how-tos/permissions-healthcare-api-gcp-products#the_cloud_healthcare_service_agent). The destination store must set `enable_update_create` to true. The destination store must use FHIR version R4. Writing these resources will consume FHIR operations quota from the project containing the source data. De-identify operation metadata is only generated for DICOM de-identification operations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fhirStore => String.t() | nil
        }

  field(:fhirStore)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.FhirOutput do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.FhirOutput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.FhirOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end