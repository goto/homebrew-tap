# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.7-alpha.1"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.7-alpha.1/guardian_0.12.7-alpha.1_Darwin_x86_64.tar.gz"
      sha256 "8415eebf199473a5fc929b052fc489dd0e2db15517a2fcda78f6d52de492e440"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.7-alpha.1/guardian_0.12.7-alpha.1_Darwin_arm64.tar.gz"
      sha256 "040954f8f4a7bdf0c272542796468e8033111f37ce5b3a1c387a6c8fd882b689"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.7-alpha.1/guardian_0.12.7-alpha.1_Linux_x86_64.tar.gz"
        sha256 "6321804bd68bb199c377bea9d936758b803ce834151418808c0a2859a5691911"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.7-alpha.1/guardian_0.12.7-alpha.1_Linux_arm.tar.gz"
        sha256 "2d282eb4f50faaacd9081061c505caa674205c8d2c6dbbd8a1fd8110a4494eb0"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.7-alpha.1/guardian_0.12.7-alpha.1_Linux_arm64.tar.gz"
        sha256 "ae72fc520dc0e7179789190cc8f58dbaff2e43d72108413a974b469abe9db526"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
