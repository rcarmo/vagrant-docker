require "vagrant"

module VagrantPlugins
  module Docker
    module Errors
      class VagrantAWSError < Vagrant::Errors::VagrantError
        error_namespace("vagrant_aws.errors")
      end

      class DockerError < VagrantAWSError
        error_key(:docker_error)
      end

      class RsyncError < VagrantAWSError
        error_key(:rsync_error)
      end
    end
  end
end
