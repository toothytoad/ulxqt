# ulxqt &nbsp; [![build-ublue](https://github.com/toothytoad/ulxqt/actions/workflows/build.yml/badge.svg)](https://github.com/toothytoad/ulxqt/actions/workflows/build.yml)


## What

 - An opinionated starting point for my daily driver based on [minimalblue LXQt](https://github.com/minimalblue/minimalblue) (in progress...)



See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

## Installation

> **Warning**  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/toothytoad/minimalblue-lxqt-main-userns-hardened:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/toothytoad/minimalblue-lxqt-main-userns-hardened:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/toothytoad/ulxqt
```


#### Credit:

[wayblue](https://github.com/wayblueorg/wayblue) 

#### Themes:

[catppuccin lxqt](https://github.com/catppuccin/lxqt)

[Phinger Cursors](https://github.com/phisch/phinger-cursors)

[catppuccin sddm](https://github.com/catppuccin/sddm)

[tinted-theming](https://github.com/tinted-theming/schemes)

[oomox](https://github.com/themix-project/oomox/)
