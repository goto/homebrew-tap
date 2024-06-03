# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Siren < Formula
  desc "Universal data observability tool."
  homepage "https://github.com/goto/siren"
  version "0.7.6"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    url "https://github.com/goto/siren/releases/download/v0.7.6/siren_Darwin_x86_64.tar.gz"
    sha256 "d9e24e03778cf68943b7c09e83847b51a3f8fb6f9b3e255461e5b817eaf528bc"

    def install
      bin.install "siren"
    end

    on_arm do
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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/siren/releases/download/v0.7.6/siren_Linux_x86_64.tar.gz"
        sha256 "7a61823a1ae0bd6852f3bb689090b681fe1015d1feaf6107e84a3d7d63d5b6b5"

        def install
          bin.install "siren"
        end
      end
    end
  end
end
