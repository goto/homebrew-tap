# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.6.9-cortex"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.6.9-cortex/siren_Darwin_x86_64.tar.gz"
    sha256 "6b44ed95e73a4497de7269712717ba93221dc0edd1995a3b96a76fd947c14e43"

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
      url "https://github.com/goto/siren/releases/download/v0.6.9-cortex/siren_Linux_x86_64.tar.gz"
      sha256 "6bf5f9df8f75933a66d56021f0fdbb446fea6653b86d81828b9fb6413b2716a7"

      def install
        bin.install "siren"
      end
    end
  end
end
