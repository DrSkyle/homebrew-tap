class Cloudslash < Formula
  desc "Autonomous infrastructure optimization and waste remediation platform"
  homepage "https://github.com/DrSkyle/CloudSlash"
  version "v2.2.6"

  on_macos do
    if Hardware::CPU.intel?
      # Note: Changed to .tar.gz and x86_64
      url "https://github.com/DrSkyle/cloudslash-private/releases/download/v2.2.6/cloudslash_Darwin_x86_64.tar.gz"
      sha256 "5036046b7a87e37702b523e245af36e786b7792bce39945fbd2828310090c08b"
    elsif Hardware::CPU.arm?
      # Note: Changed to .tar.gz and Capital D
      url "https://github.com/DrSkyle/cloudslash-private/releases/download/v2.2.6/cloudslash_Darwin_arm64.tar.gz"
      sha256 "9f282d61cc0ce21a03b71422777263e61982e9958fb69a9efa2ebe0f6c26ac5d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      # Note: Changed to .tar.gz and x86_64
      url "https://github.com/DrSkyle/cloudslash-private/releases/download/v2.2.6/cloudslash_Linux_x86_64.tar.gz"
      sha256 "8f335d7bfab56b095306e0af14e583f6542a97e21eb1faefd48aa104950373f1"
    elsif Hardware::CPU.arm?
      # Note: Changed to .tar.gz and Capital L
      url "https://github.com/DrSkyle/cloudslash-private/releases/download/v2.2.6/cloudslash_Linux_arm64.tar.gz"
      sha256 "ac3982a2ea6d1c4a8ac2fc3df113c3a917d42e66d3dcf203fb2040e8c9c569e5"
    end
  end

  def install
    # Since it is a tar.gz, Homebrew extracts it automatically.
    # We just install the binary named "cloudslash".
    bin.install "cloudslash"
  end

  test do
    system "#{bin}/cloudslash", "--version"
  end
end
