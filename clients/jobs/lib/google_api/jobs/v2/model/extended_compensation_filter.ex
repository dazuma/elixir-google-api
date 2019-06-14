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

defmodule GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter do
  @moduledoc """
  Deprecated. Always use CompensationFilter.

  Input only.

  Filter on job compensation type and amount.

  ## Attributes

  - compensationRange (GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange.t): Optional.

  Compensation range. Defaults to `nil`.
  - compensationUnits (list(String.t)): Required.

  Specify desired `base compensation entry's`
  ExtendedCompensationInfo.CompensationUnit. Defaults to `nil`.
  - currency (String.t): Optional.

  Specify currency in 3-letter
  [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html) format. If
  unspecified, jobs are returned regardless of currency. Defaults to `nil`.
  - includeJobWithUnspecifiedCompensationRange (boolean()): Optional.

  Whether to include jobs whose compensation range is unspecified. Defaults to `nil`.
  - type (String.t): Required.

  Type of filter. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compensationRange =>
            GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange.t(),
          :compensationUnits => list(String.t()),
          :currency => String.t(),
          :includeJobWithUnspecifiedCompensationRange => boolean(),
          :type => String.t()
        }

  field(:compensationRange, as: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange)
  field(:compensationUnits, type: :list)
  field(:currency)
  field(:includeJobWithUnspecifiedCompensationRange)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
