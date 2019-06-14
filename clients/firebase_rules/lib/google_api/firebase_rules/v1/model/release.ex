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

defmodule GoogleApi.FirebaseRules.V1.Model.Release do
  @moduledoc """
  `Release` is a named reference to a `Ruleset`. Once a `Release` refers to a
  `Ruleset`, rules-enabled services will be able to enforce the `Ruleset`.

  ## Attributes

  - createTime (DateTime.t): Time the release was created.
  Output only. Defaults to `nil`.
  - name (String.t): Resource name for the `Release`.

  `Release` names may be structured `app1/prod/v2` or flat `app1_prod_v2`
  which affords developers a great deal of flexibility in mapping the name
  to the style that best fits their existing development practices. For
  example, a name could refer to an environment, an app, a version, or some
  combination of three.

  In the table below, for the project name `projects/foo`, the following
  relative release paths show how flat and structured names might be chosen
  to match a desired development / deployment strategy.

  Use Case     | Flat Name           | Structured Name
  -------------|---------------------|----------------
  Environments | releases/qa         | releases/qa
  Apps         | releases/app1_qa    | releases/app1/qa
  Versions     | releases/app1_v2_qa | releases/app1/v2/qa

  The delimiter between the release name path elements can be almost anything
  and it should work equally well with the release name list filter, but in
  many ways the structured paths provide a clearer picture of the
  relationship between `Release` instances.

  Format: `projects/{project_id}/releases/{release_id}` Defaults to `nil`.
  - rulesetName (String.t): Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must
  exist the `Release` to be created. Defaults to `nil`.
  - updateTime (DateTime.t): Time the release was updated.
  Output only. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :name => String.t(),
          :rulesetName => String.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:name)
  field(:rulesetName)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.Release do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.Release.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.Release do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
