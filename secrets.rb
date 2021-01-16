class Secrets < Formula
  desc "Tool for storing and managing encrypted text, like passwords or whatever else"
  homepage "https://github.com/lewesche/secrets"
  url "https://github.com/lewesche/secrets/releases/download/v0.1.0/secrets-mac.tar.gz"
  sha256 "29944417baf7c3a2a8ead6855f27c4a6e550aa873531827f2d2e7198a0e63cc0"

  def install
    bin.install "secrets"
  end

  test do
    # Try running the program with "test" arg, check the return value is 0
    assert_equal system "0", shell_output("#{bin}/secrets test; echo $?")
  end
end
