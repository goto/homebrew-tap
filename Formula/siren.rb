# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.6.5"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.6.5/siren_Darwin_x86_64.tar.gz"
    sha256 "27493453b017fb5652e147d14a54e40919a9c8b930abb8dc9f38c8d1899a198a"

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
      url "https://github.com/goto/siren/releases/download/v0.6.5/siren_Linux_x86_64.tar.gz"
      sha256 "90b1374b934cb8814bbc4b2e4e14f62ad2294221a11e0fcadb4f00a92850ea6a"

      def install
        bin.install "siren"
      end
    end
  end
end
