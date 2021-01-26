class Secrets < Formula
  desc "Tool for storing and managing encrypted text, like passwords or whatever else"
  homepage "https://github.com/lewesche/secrets"
  url "https://github.com/lewesche/secrets/releases/download/v0.1.1/secrets-mac.tar.gz"
  sha256 "d71a5fe2c4012de4192917adcc74ebab531cf5e3356801778d943c56c4d4c846"

  def install
    bin.install "secrets"
  end

  test do
    # Try running the program with "test" arg, check the return value is 0
    assert_equal system "0", shell_output("#{bin}/secrets test; echo $?")
  end
end
