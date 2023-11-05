# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.6.10"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.6.10/siren_Darwin_x86_64.tar.gz"
    sha256 "d4f524b7a8d9be9725267f0daf7970d19bec90302d4ddbe17479c402a1855bd2"

    def install
      bin.install "siren"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Siren
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goto/siren/releases/download/v0.6.10/siren_Linux_x86_64.tar.gz"
      sha256 "9c71ccf236b3f784f31b1c3bec430e7050cf993ee5b4d1374a2c71f01bbaaa26"

      def install
        bin.install "siren"
      end
    end
  end
end
