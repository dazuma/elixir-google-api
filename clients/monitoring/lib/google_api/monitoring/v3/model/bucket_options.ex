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

defmodule GoogleApi.Monitoring.V3.Model.BucketOptions do
  @moduledoc """
  BucketOptions describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. BucketOptions does not include the number of values in each bucket.A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.

  ## Attributes

  - explicitBuckets (GoogleApi.Monitoring.V3.Model.Explicit.t): The explicit buckets. Defaults to `nil`.
  - exponentialBuckets (GoogleApi.Monitoring.V3.Model.Exponential.t): The exponential buckets. Defaults to `nil`.
  - linearBuckets (GoogleApi.Monitoring.V3.Model.Linear.t): The linear bucket. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :explicitBuckets => GoogleApi.Monitoring.V3.Model.Explicit.t(),
          :exponentialBuckets => GoogleApi.Monitoring.V3.Model.Exponential.t(),
          :linearBuckets => GoogleApi.Monitoring.V3.Model.Linear.t()
        }

  field(:explicitBuckets, as: GoogleApi.Monitoring.V3.Model.Explicit)
  field(:exponentialBuckets, as: GoogleApi.Monitoring.V3.Model.Exponential)
  field(:linearBuckets, as: GoogleApi.Monitoring.V3.Model.Linear)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.BucketOptions do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.BucketOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.BucketOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
