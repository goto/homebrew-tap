# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guardian < Formula
  desc "Universal data access tool"
  homepage "https://github.com/goto/guardian"
  version "0.10.1-alpha.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.3/guardian_0.10.1-alpha.3_Darwin_x86_64.tar.gz"
      sha256 "ad2b117ded2dc88c7cc6e98cf837423093817267aa31a5951bc412abb898678f"

      def install
        bin.install "guardian"
      end
    end
    on_arm do
      url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.3/guardian_0.10.1-alpha.3_Darwin_arm64.tar.gz"
      sha256 "647f308284bafe628810681a9d09c22d921e031982aae6f5c8f6e151bc766e84"

      def install
        bin.install "guardian"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.3/guardian_0.10.1-alpha.3_Linux_x86_64.tar.gz"
        sha256 "7c74734e625e3cd6680b09c6e38af78a5d5174ae3890400b6eda52947eee8b29"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.3/guardian_0.10.1-alpha.3_Linux_arm.tar.gz"
        sha256 "cbbade980d3fd2486109c80338bb4a7e12db8b96d482db18a339f6a8767ea3a2"

        def install
          bin.install "guardian"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goto/guardian/releases/download/v0.10.1-alpha.3/guardian_0.10.1-alpha.3_Linux_arm64.tar.gz"
        sha256 "f885cdc15ed52a5d0b2a2d84b30486eb015827256d9d006de40d72bcb35d6560"

        def install
          bin.install "guardian"
        end
      end
    end
  end
end
