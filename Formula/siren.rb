# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.7.4"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.7.4/siren_Darwin_x86_64.tar.gz"
    sha256 "f1a958c34315cf49dd4e40d1c51b1b55d0507ff820bd8577091422d5ba0f505c"

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
      url "https://github.com/goto/siren/releases/download/v0.7.4/siren_Linux_x86_64.tar.gz"
      sha256 "a765895c646050ea7a23feaf927461855bfb5eb7c466229a00a85ff0d88230b1"

      def install
        bin.install "siren"
      end
    end
  end
end
