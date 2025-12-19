# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "userplex/version"
require_relative "userplex/internal/util"
require_relative "userplex/internal/type/converter"
require_relative "userplex/internal/type/unknown"
require_relative "userplex/internal/type/boolean"
require_relative "userplex/internal/type/file_input"
require_relative "userplex/internal/type/enum"
require_relative "userplex/internal/type/union"
require_relative "userplex/internal/type/array_of"
require_relative "userplex/internal/type/hash_of"
require_relative "userplex/internal/type/base_model"
require_relative "userplex/internal/type/base_page"
require_relative "userplex/internal/type/request_parameters"
require_relative "userplex/internal"
require_relative "userplex/request_options"
require_relative "userplex/file_part"
require_relative "userplex/errors"
require_relative "userplex/internal/transport/base_client"
require_relative "userplex/internal/transport/pooled_net_requester"
require_relative "userplex/client"
require_relative "userplex/models/log_batch_params"
require_relative "userplex/models/log_batch_response"
require_relative "userplex/models/log_new_params"
require_relative "userplex/models/log_new_response"
require_relative "userplex/models/user_identify_params"
require_relative "userplex/models/user_identify_response"
require_relative "userplex/models"
require_relative "userplex/resources/logs"
require_relative "userplex/resources/users"
