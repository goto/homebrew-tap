# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.12.2-alpha.8"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.12.2-alpha.8/guardian_0.12.2-alpha.8_Darwin_x86_64.tar.gz"
      sha256 "ab978eaf8ec67f9e277f1f37ca681accc9c0f10f4ce3e20ab6654a7e2687e046"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.12.2-alpha.8/guardian_0.12.2-alpha.8_Darwin_arm64.tar.gz"
      sha256 "edd31b2747b4bb781a23390e2548d39c73201c23a17c2d41d767b15113a6b03d"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.2-alpha.8/guardian_0.12.2-alpha.8_Linux_x86_64.tar.gz"
        sha256 "d773ee214bc7cbdf7f89332365c2cdb28e987d3926f5152a6d1757ea7d5bcdf0"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.2-alpha.8/guardian_0.12.2-alpha.8_Linux_arm.tar.gz"
        sha256 "7de7ca29667627465b95d2ac61a65849bfc3e8fa832d35fa1805eb6d28acca59"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.12.2-alpha.8/guardian_0.12.2-alpha.8_Linux_arm64.tar.gz"
        sha256 "199c4057406679bf7eb0b752d73e4657fd3da1d72f7f639443a40d8f1d564ba3"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
