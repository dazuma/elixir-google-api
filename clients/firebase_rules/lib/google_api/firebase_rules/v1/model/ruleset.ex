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

defmodule GoogleApi.FirebaseRules.V1.Model.Ruleset do
  @moduledoc """
  `Ruleset` is an immutable copy of `Source` with a globally unique identifier
  and a creation time.

  ## Attributes

  - createTime (DateTime.t): Time the `Ruleset` was created.
  Output only. Defaults to `nil`.
  - name (String.t): Name of the `Ruleset`. The ruleset_id is auto generated by the service.
  Format: `projects/{project_id}/rulesets/{ruleset_id}`
  Output only. Defaults to `nil`.
  - source (GoogleApi.FirebaseRules.V1.Model.Source.t): `Source` for the `Ruleset`. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :name => String.t(),
          :source => GoogleApi.FirebaseRules.V1.Model.Source.t()
        }

  field(:createTime, as: DateTime)
  field(:name)
  field(:source, as: GoogleApi.FirebaseRules.V1.Model.Source)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.Ruleset do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.Ruleset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.Ruleset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
