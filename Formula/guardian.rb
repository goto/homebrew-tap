# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "10.0-alpha.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v10.0-alpha.3/guardian_10.0-alpha.3_Darwin_x86_64.tar.gz"
      sha256 "2218288f4251686270d81ad97941bccf5312408447055589a12575a1726504a7"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goto/guardian/releases/download/v10.0-alpha.3/guardian_10.0-alpha.3_Darwin_arm64.tar.gz"
      sha256 "ff8eb5af13b39b2908380eaef01ffe3c5818aff7778fa9cfac46d5591b28c926"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/guardian/releases/download/v10.0-alpha.3/guardian_10.0-alpha.3_Linux_x86_64.tar.gz"
      sha256 "0ed9f60986af600348774a70307ca1c47c73366512673e5a137656e360ff42c5"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v10.0-alpha.3/guardian_10.0-alpha.3_Linux_arm.tar.gz"
      sha256 "be5dfed29f6c14663ac06e5f90a54eacc651e641a1471e94c5370bf706946ec5"

      def install
        bin.install "guardian"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goto/guardian/releases/download/v10.0-alpha.3/guardian_10.0-alpha.3_Linux_arm64.tar.gz"
      sha256 "99647bd708c1594802c8aff3377e529ec015946412fb1b8d1ce34756927fc8e3"

      def install
        bin.install "guardian"
      end
    end
  end
end
