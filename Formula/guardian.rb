# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.4"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.4/guardian_0.12.4_Darwin_x86_64.tar.gz"
      sha256 "44d93ee4023349ee3b8e7fdde6effd40f73ba1da04201fb10b57177377cf5a1c"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.4/guardian_0.12.4_Darwin_arm64.tar.gz"
      sha256 "019ec204c5200659ed0e61b9ac3cf1617ab75929a9155f4a29f8eddd951c05c0"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.4/guardian_0.12.4_Linux_x86_64.tar.gz"
        sha256 "5d77b7e3d9deff4e84d93821bd13e0b405100b912ffdea0916dc43d3ce451bfa"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.4/guardian_0.12.4_Linux_arm.tar.gz"
        sha256 "48d37eab1a9cc5672d895bfbf35246ed1ea22f97919905d20a062bde04c7bb1f"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.4/guardian_0.12.4_Linux_arm64.tar.gz"
        sha256 "78a72962d2e27d730df22715ab08b9c94f9143cf96cd515fa0a9722056ceb130"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
