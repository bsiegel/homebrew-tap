cask "azureauth" do
  arch arm: "arm64", intel: "x64"

  version "0.8.6"
  sha256 arm:   "839476d45973fbb687e6bfccb8d546745d81d51a24608228a796045f97dfac43",
         intel: "067e9ed42cc84d1da3159508fd280d3f63c4e6f5778ffc18c653d0d50ffd1ed1"

  url "https://github.com/AzureAD/microsoft-authentication-cli/releases/download/#{version}/azureauth-#{version}-osx-#{arch}.tar.gz"
  name "azureauth"
  desc "CLI wrapper for performing AAD Authentication"
  homepage "https://github.com/AzureAD/microsoft-authentication-cli"

  binary "azureauth"
end
