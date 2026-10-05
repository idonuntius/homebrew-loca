# Homebrew formula for the Loca Location Engine (GPL-3.0-or-later).
#
# SKELETON — fill the placeholders at release time:
#   * url / sha256  → the `idonuntius/loca-engine` release tarball + its SHA256
#   * resource "…"  → generated, not hand-written. After setting url/sha256, run:
#       brew update-python-resources Formula/loca-engine.rb
#     (or homebrew-pypi-poet) to emit a `resource` block per bundled dependency.
#
# This formula installs the engine into its own virtualenv and exposes the
# `loca-engine` console script (defined in Engine/pyproject.toml). The Loca GUI
# cask depends on it and spawns `loca-engine serve`.
class LocaEngine < Formula
  include Language::Python::Virtualenv

  desc "Location Engine for Loca — simulates iPhone GPS via pymobiledevice3"
  homepage "https://github.com/idonuntius/loca-engine"
  url "https://github.com/idonuntius/loca-engine/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "37a334e881f0380de2445623a955e837a24950501e6491a04e50184a667b3ae1"
  license "GPL-3.0-or-later"

  depends_on "python@3.13"

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/41/c3/534eac40372d8ee36ef40df62ec129bee4fdb5ad9706e58a29be53b2c970/aiofiles-25.1.0.tar.gz"
    sha256 "a8d728f0a29de45dc521f18f07297428d56992a742f0cd2701ba86e44d23d5b2"
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5a/8e/38aa427ed5402449e226975b649c5dc73ccadfefeb95e6aecb8f8ea4b6b6/annotated_doc-0.0.5.tar.gz"
    sha256 "c7e58ce09192557605d8bbd92836d7e1d520ac9580096042c0bfd197efacf1bb"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/5f/56/a8120250d128bed162cd73c76d45f6ef9991f3e068f62a8ee060afa3104a/annotated_types-0.8.0.tar.gz"
    sha256 "13b2beaad985e05e2d6407ee4c4f35590b11f8d693a258a561055cac8f64cab7"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/d2/f4d173e22df740bc37b1db102b386ba719b66e95b0f0d751f556b387e6d2/anyio-4.15.1.tar.gz"
    sha256 "9f28306018cbd6d329e64a36d58256edff76dd996fe423bc957326e578b82a94"
  end

  resource "apple-compress" do
    url "https://files.pythonhosted.org/packages/91/14/cdb0bdb6147a019d2d8a1e144910c6a8d257d0e58f63bbd105bda0fce7dc/apple_compress-0.2.3.tar.gz"
    sha256 "a1c855cec8bd73210ae9522c53a841ca515ded2f0c9d5b4e728d0d93fee46a29"
  end

  resource "arrow" do
    url "https://files.pythonhosted.org/packages/b9/33/032cdc44182491aa708d06a68b62434140d8c50820a087fac7af37703357/arrow-1.4.0.tar.gz"
    sha256 "ed0cc050e98001b8779e84d461b0098c4ac597e88704a655582b21d116e526d7"
  end

  resource "ASGIMiddlewareStaticFile" do
    url "https://files.pythonhosted.org/packages/d7/25/14ec3488ee466dd2b3c63e3cdb1f9b032d90c0c9d65ca68d25c59b74bc22/asgimiddlewarestaticfile-0.7.0.tar.gz"
    sha256 "70935ab3bb9cdde5cf96dcc4eed2fce39c9cf51ec371490265e673df099ddf72"
  end

  resource "asgiref" do
    url "https://files.pythonhosted.org/packages/e6/26/3b59f2bdae5f640389becb1f673cded775287f5fc4f816309d9ca9a3f93d/asgiref-3.12.1.tar.gz"
    sha256 "59dcb51c272ad209d59bed5708a64a333083e86017d7fcdd67498eeab7784340"
  end

  resource "ASGIWebDAV" do
    url "https://files.pythonhosted.org/packages/55/70/d14d53453f00a7a9c1d187a4abe5b01bb8a7f837f7eabbbb3968613b93ef/asgiwebdav-2.0.1.tar.gz"
    sha256 "4bcb0cdb05661db79fa1af73184fde4de6f81ff2ecb6c8716b5ba182ef7d4460"
  end

  resource "asn1" do
    url "https://files.pythonhosted.org/packages/00/35/9d0709bf09340ddb1796dfc52d1b1ef2f18e690b5cbf32b7be02c702532c/asn1-2.8.0.tar.gz"
    sha256 "adf77ddc2707cf420c0eae3b99ee30e913afcf0936467d42669820ce6b7d150a"
  end

  resource "asttokens" do
    url "https://files.pythonhosted.org/packages/25/1e/faf0f247f6f881b98fc4d6d07e14085cb89d13665084e6d6ac1dc2c03d0b/asttokens-3.0.2.tar.gz"
    sha256 "3ecdbd8f2cc195f53ccada3a613538bb5f9ef6f6869129f13e03c30a677b8fe2"
  end

  resource "backports.zstd" do
    url "https://files.pythonhosted.org/packages/75/f0/9ba1b05811aa5f5434f69768253129460a5744e1814f359efba39a01ce20/backports_zstd-1.7.0.tar.gz"
    sha256 "1a967189c1822b6e85a2e550fdfc88a3272c17633ea0a4732dac5911a8034f2b"
  end

  resource "bpylist2" do
    url "https://files.pythonhosted.org/packages/ca/34/eb90ff6be953f6e4df08d4e8c0b761bea144242b6d711e922113411cc631/bpylist2-4.1.1.tar.gz"
    sha256 "0cc63284aee42f5c7e0ec87f8f59cdd35aaed05ad12d866b1868ea0c0caaafe1"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/9e/ef/008a1939e372c06329a3fce4279c02f328488f3526744906eeec3da7ad5f/cffi-2.1.1.tar.gz"
    sha256 "dd31f52ea1086513bb9df30f8fcee9b8918323ae067a3d5b78bc826a000712be"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/b1/51/cd61c567092a6cec796144510a68aff158ebfc1df82950a45bae65f28413/chardet-7.6.0.tar.gz"
    sha256 "93d9df6089ded42ed1fe9f57e272c0b74bd0464d45c0c7d50f09f26f31105c3c"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/33/1c/f41d4e74c28ab327ff3acd36053f7ea506c55872d7a90b0fa71aa3ab0c89/charset_normalizer-3.5.2.tar.gz"
    sha256 "39de2a259fc954455c57274dc94c79d5842774e1247a016aff30bc0efed0f4ef"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
  end

  resource "coloredlogs" do
    url "https://files.pythonhosted.org/packages/cc/c7/eed8f27100517e8c0e6b923d5f0845d0cb99763da6fdee00478f91db7325/coloredlogs-15.0.1.tar.gz"
    sha256 "7c991aa71a4577af2f82600d8f8f3a89f936baeaf9b50a9c197da014e5bf16b0"
  end

  resource "construct" do
    url "https://files.pythonhosted.org/packages/02/77/8c84b98eca70d245a2a956452f21d57930d22ab88cbeed9290ca630cf03f/construct-2.10.70.tar.gz"
    sha256 "4d2472f9684731e58cc9c56c463be63baa1447d674e0d66aeb5627b22f512c29"
  end

  resource "construct-typing" do
    url "https://files.pythonhosted.org/packages/61/de/de378332a7cb2f62df134e0b5915a0fea939219c80ecee99b29da8ba49c7/construct_typing-0.8.1.tar.gz"
    sha256 "b3c33246b83f187f21fbfa9e229cf7225fe42823f3d598328b973c844071c456"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/9d/af/182eb91b0df3fe75c4d9f26fe70684569566745f6ba7e5c9c73a862c5252/cryptography-50.0.2.tar.gz"
    sha256 "7b46165bb56eb4704e2eaaf86f3c940d19154535d9b0ca7d6d590b04060e00d5"
  end

  resource "daemonize" do
    url "https://files.pythonhosted.org/packages/8c/20/96f7dbc23812cfe4cf479c87af3e4305d0d115fd1fffec32ddeee7b9c82b/daemonize-2.5.0.tar.gz"
    sha256 "dd026e4ff8d22cb016ed2130bc738b7d4b1da597ef93c074d2adb9e4dea08bc3"
  end

  resource "dataclass-wizard" do
    url "https://files.pythonhosted.org/packages/36/ea/6b2811092feecbe9d672e3641196ac5fcbec6664074da5dec8b9fd9b9059/dataclass_wizard-0.39.1.tar.gz"
    sha256 "1679948ed7c62103f40b34df97d03b35e6b2ad50f58173fdbe30074e2e4730f2"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
    sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
  end

  resource "developer_disk_image" do
    url "https://files.pythonhosted.org/packages/52/f5/16c742e98191761d0925ed424468e3bec14503644c84851046602667d3c3/developer_disk_image-0.3.0.tar.gz"
    sha256 "1fb9841dcc5cf81e697b6e0a9c14909c059c1893d675b38398a91c08cb7ba8bc"
  end

  resource "enum-compat" do
    url "https://files.pythonhosted.org/packages/41/46/8ed2368976d934652d8f33f1fdd86f5580fab45e890c90a848e83097a093/enum-compat-0.0.3.tar.gz"
    sha256 "3677daabed56a6f724451d585662253d8fb4e5569845aafa8bb0da36b1a8751e"
  end

  resource "executing" do
    url "https://files.pythonhosted.org/packages/cc/28/c14e053b6762b1044f34a13aab6859bbf40456d37d23aa286ac24cfd9a5d/executing-2.2.1.tar.gz"
    sha256 "3632cc370565f6648cc328b32435bd120a1e4ebb20c77e3fdde9a13cd1e533c4"
  end

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/56/4f/f7c30a73127e0a8bbffe788369b8359e530b01ae06e2757936fa35bc5e6d/fastapi-0.142.2.tar.gz"
    sha256 "06366626f2e70576367714d9ab2fe8472e6c8456dba69b399f9f797ab5e92570"
  end

  resource "gpxpy" do
    url "https://files.pythonhosted.org/packages/20/ad/6f1a34e702c72cb495bb258396f237ded76c00f9fe67054a44d778d24ed9/gpxpy-1.6.2.tar.gz"
    sha256 "a72c484b97ec42b80834353b029cc8ee1b79f0ffca1179b2210bb3baf26c01ae"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "hexdump" do
    url "https://files.pythonhosted.org/packages/55/b3/279b1d57fa3681725d0db8820405cdcb4e62a9239c205e4ceac4391c78e4/hexdump-3.3.zip"
    sha256 "d781a43b0c16ace3f9366aade73e8ad3a7bd5137d58f0b45ab2d3f54876f20db"
  end

  resource "httptools" do
    url "https://files.pythonhosted.org/packages/43/e5/d471fcb0e14523fe1c3f4ba58ca52480e7bd70ad7109a3846bc75892f7fb/httptools-0.8.0.tar.gz"
    sha256 "6b2a32f18d97e16e90827d7a819ffa8dbd8cc245fc4e1fa9d1095b54ef4bd999"
  end

  resource "humanfriendly" do
    url "https://files.pythonhosted.org/packages/cc/3f/2c29224acb2e2df4d2046e4c73ee2662023c58ff5b113c4c1adac0886c43/humanfriendly-10.0.tar.gz"
    sha256 "6b0b831ce8f15f7300721aa49829fc4e83921a9a301cc7f606be6686a2288ddc"
  end

  resource "hyperframe" do
    url "https://files.pythonhosted.org/packages/02/e7/94f8232d4a74cc99514c13a9f995811485a6903d48e5d952771ef6322e30/hyperframe-6.1.0.tar.gz"
    sha256 "f630908a00854a7adeabd6382b43923a4c4cd4b821fcb527e6ab9e15382a3b08"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "ifaddr" do
    url "https://files.pythonhosted.org/packages/e8/ac/fb4c578f4a3256561548cd825646680edcadb9440f3f68add95ade1eb791/ifaddr-0.2.0.tar.gz"
    sha256 "cc0cbfcaabf765d44595825fb96a99bb12c79716b73b44330ea38ee2b0c4aed4"
  end

  resource "ioregistry" do
    url "https://files.pythonhosted.org/packages/b0/97/9ca4605f8850c51c390103d2322df789210769bc6017f1d19c5d2b3bc3f3/ioregistry-0.0.6.tar.gz"
    sha256 "d7187ad5f93276f1ca981f72f8bee74f6bef4754d9a058643d0726b611844f32"
  end

  resource "ipsw-parser" do
    url "https://files.pythonhosted.org/packages/ab/ca/40960ace6e13f05101e05ad9695c54969d4943588930c27dca153db56d82/ipsw_parser-1.7.5.tar.gz"
    sha256 "e49682388731cc9c2a275bf0d2b35746d7619bd352e4a46189efb2f50acc3e1f"
  end

  resource "ipython" do
    url "https://files.pythonhosted.org/packages/b9/32/99451b1283ec5d92ad77073f12e1c667dc10775384d8f15c2914207149dd/ipython-9.17.1.tar.gz"
    sha256 "8919be8c27f20a6f4423145028063f6637b42a03ce57665bb12015ee1f073529"
  end

  resource "ipython_pygments_lexers" do
    url "https://files.pythonhosted.org/packages/ef/4c/5dd1d8af08107f88c7f741ead7a40854b8ac24ddf9ae850afbcf698aa552/ipython_pygments_lexers-1.1.1.tar.gz"
    sha256 "09c0138009e56b6854f9535736f4171d855c8c08a563a0dcd8022f78355c7e81"
  end

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/46/b7/a3635f6a2d7cf5b5dd98064fc1d5fbbafcb25477bcea204a3a92145d158b/jedi-0.20.0.tar.gz"
    sha256 "c3f4ccbd276696f4b19c54618d4fb18f9fc24b0aef02acf704b23f487daa1011"
  end

  resource "loguru" do
    url "https://files.pythonhosted.org/packages/3a/05/a1dae3dffd1116099471c643b8924f5aa6524411dc6c63fdae648c4f1aca/loguru-0.7.3.tar.gz"
    sha256 "19480589e77d47b8d85b2c827ad95d49bf31b0dcde16593892eb51dd18706eb6"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/06/ff/7841249c247aa650a76b9ee4bbaeae59370dc8bfd2f6c01f3630c35eb134/markdown_it_py-4.2.0.tar.gz"
    sha256 "04a21681d6fbb623de53f6f364d352309d4094dd4194040a10fd51833e418d49"
  end

  resource "matplotlib-inline" do
    url "https://files.pythonhosted.org/packages/bd/c0/9f7c9a46090390368a4d7bcb76bb87a4a36c421e4c0792cdb53486ffac7a/matplotlib_inline-0.2.2.tar.gz"
    sha256 "72f3fe8fce36b70d4a5b612f899090cd0401deddc4ea90e1572b9f4bfb058c79"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "opack2" do
    url "https://files.pythonhosted.org/packages/b3/ac/8e7d6698282a2130c99fab2fffa3cb1910688ffee16ec36e3d1f71375adf/opack2-0.0.1.tar.gz"
    sha256 "0deb0b5d7094253f631db201f3493094a5821404f736ab0234ba805ee93d57b2"
  end

  resource "opentelemetry-api" do
    url "https://files.pythonhosted.org/packages/1f/dc/e12c1fe1ed8a7b7149777127b1a0e12ce5bd5a81d97408bedc2128c260f5/opentelemetry_api-1.45.0.tar.gz"
    sha256 "711ede81773c8025c2c03dac0450bc89f3d30aea6eabcc815c570d4e35a963f7"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "parameter-decorators" do
    url "https://files.pythonhosted.org/packages/40/b9/03b5e409930cb4cff0f25f6f3199145f4319a88d5f9be7ee17882359f72d/parameter_decorators-0.0.2.tar.gz"
    sha256 "499ec96e71394705be9e3eeb28542aab4875694042516c31051d5dcb0488028e"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/30/4b/90c937815137d43ce71ba043cd3566221e9df6b9c805f24b5d138c9d40a7/parso-0.8.7.tar.gz"
    sha256 "eaaac4c9fdd5e9e8852dc778d2d7405897ec510f2a298071453e5e3a07914bb1"
  end

  resource "pexpect" do
    url "https://files.pythonhosted.org/packages/42/92/cc564bf6381ff43ce1f4d06852fc19a2f11d180f23dc32d9588bee2f149d/pexpect-4.9.0.tar.gz"
    sha256 "ee7d41123f3c9911050ea2c2dac107568dc43b2d3b0c7557a33212c398ead30f"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/1c/3d/bb7fca845737cf9d7dbde16ed1843984665ff2e0a518f5db43e77ec540b9/pillow-12.3.0.tar.gz"
    sha256 "3b8182a766685eaa002637e28b4ec8d6b18819a0c71f579bf0dbaa5830297cce"
  end

  resource "plumbum" do
    url "https://files.pythonhosted.org/packages/6c/d2/578712a979a50e9aba08ea173a38e7598461130d3c9899f176373bc03280/plumbum-2.0.2.tar.gz"
    sha256 "233751d7819c9e6743ec1c2405927eb4fa52a284c7b894bd10e28106a9309a92"
  end

  resource "pmd-net-addr" do
    url "https://files.pythonhosted.org/packages/ce/bb/e24ffb9af4243050b54fbaf08393879456f1bd98996b66c6df509106ad2b/pmd_net_addr-0.0.3.tar.gz"
    sha256 "1b0fcb3b77f30076237360eb4cf0243483278a2650fd4a194985cc69b1de07e5"
  end

  resource "pmd-net-proto" do
    url "https://files.pythonhosted.org/packages/59/ec/eed1b9570cec3e30b993dee84fa5d16be3399189ffce8c0b46373727d20e/pmd_net_proto-0.0.3.tar.gz"
    sha256 "e23d7d68cd13399ff2bf0613f9756e221ead6fd54010cf85186c2ab650631cd7"
  end

  resource "pmd-pytcp" do
    url "https://files.pythonhosted.org/packages/84/fb/0acdc66ee6800f83a3972fecbf09520663f8095eb7417ed9949e6949421b/pmd_pytcp-0.3.7.tar.gz"
    sha256 "8861c091f3fae56f89d10136e2cbcfcb108eaf529d09ab9b9894a2910948b138"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/7d/ea/39b988c938f75cb75d7045b5c69f8bfed47ee2152c8837fb403de29d6fb8/prompt_toolkit-3.0.53.tar.gz"
    sha256 "9ec8a0ad96d5c56148b3f914aa79c1564c3fde5d2e6b876e7bc327e353cf8fa6"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/aa/c6/d1ddf4abb55e93cebc4f2ed8b5d6dbad109ecb8d63748dd2b20ab5e57ebe/psutil-7.2.2.tar.gz"
    sha256 "0746f5f8d406af344fd547f1c8daa5f5c33dbc293bb8d6a16d80b4bb88f59372"
  end

  resource "ptyprocess" do
    url "https://files.pythonhosted.org/packages/20/e5/16ff212c1e452235a90aeb09066144d0c5a6a8c0834397e03f5224495c4e/ptyprocess-0.7.0.tar.gz"
    sha256 "5c5d0a3b48ceee0b48485e0c26037c0acd7d29765ca3fbb5cb3831d347423220"
  end

  resource "pure_eval" do
    url "https://files.pythonhosted.org/packages/da/9f/abfd2959e9261dd5217ca8551d4de211ca6ab26fe9b72cf44731ff6c4442/pure_eval-0.2.4.tar.gz"
    sha256 "260c2774686e651b79f8b8e7fc9d80b3599ea6a66334b47d5f4abb69fc2c0ea1"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1b/7d/92392ff7815c21062bea51aa7b87d45576f649f16458d78b7cf94b9ab2e6/pycparser-3.0.tar.gz"
    sha256 "600f49d217304a5902ac3c37e1281c9fe94e4d0489de643a9504c5cdfdfc6b29"
  end

  resource "pycrashreport" do
    url "https://files.pythonhosted.org/packages/aa/9c/1e1c2d84f746972cbe4d5e65f816008c64e427fc680f55115aa313683c23/pycrashreport-2.0.0.tar.gz"
    sha256 "31d5e32faa3a047fe01e923bde3eaf1ec86b23e264babf2fc8f7b61fe4812342"
  end

  resource "pycryptodome" do
    url "https://files.pythonhosted.org/packages/34/e0/0d0bd5b1089a4bf5ef48164459289ddf02a9110ca1db854edaad25127e64/pycryptodome-3.24.0.tar.gz"
    sha256 "9140779b40405476a799305b9ac1bcaab4ee6791dc3d38b12a9aa84ffbd6aabf"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/53/ef/fc4f868f4e2cee79f863883abffceff107875f569b848507319842d2a681/pydantic-2.13.5.tar.gz"
    sha256 "51a9c5f7b2f8e636f04c6cada605d9b6a3bf1348fdf945a3d8869b19bba0ee08"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/af/f9/8a06bea35ef8daf588f707784c973a7046e0034c8d8cfb08828eeffb8b75/pydantic_core-2.46.5.tar.gz"
    sha256 "10416c15b8839ecc4ef4d0885da76da6fd0f67333a0eb8aff6d93c4b8f2910fc"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "pygnuutils" do
    url "https://files.pythonhosted.org/packages/03/20/6a828fe03d6586241b824ee06c7da854ea351716006a62fd2548eaa5710b/pygnuutils-0.1.1.tar.gz"
    sha256 "51ab4f27deb59102b7a04192f7585ff2b3a9de03739982f0b19d3cd4d16bea76"
  end

  resource "pyimg4" do
    url "https://files.pythonhosted.org/packages/3c/5c/69bad79b4e9d7be46063e9ea15e82c79ae0dec90811501453003588aab62/pyimg4-0.8.8.tar.gz"
    sha256 "aafebb2bc7922f6cf551b1b9e982d2da039cbeb08f0a2e2048a1818d51c76da1"
  end

  resource "pyiosbackup" do
    url "https://files.pythonhosted.org/packages/46/ab/c7c3caf6785ced43d02c8c37be3c84720c40d6a9b237eb2ff560af4114e1/pyiosbackup-0.2.4.tar.gz"
    sha256 "10b4d2a11c9bedc93a5467cad3addbe18bc2dc434156920e7223226ed4d0beb7"
  end

  resource "pykdebugparser" do
    url "https://files.pythonhosted.org/packages/6b/32/9838c8e756717fecf47f1aedd1e21ec70dbe1e4bd6d96f9060d7274aae72/pykdebugparser-1.2.8.tar.gz"
    sha256 "fa692b469874c2bfb830f55f854648e5f5641353e3b7be16573286ef0c05fabc"
  end

  resource "pylzss" do
    url "https://files.pythonhosted.org/packages/7d/dc/9ae75ede398b7adf538f2d1dca0f96c645c4e96789f8039340a0ed6a8a8f/pylzss-0.3.4.tar.gz"
    sha256 "16818631742488e53a34fda0d402d80edb2b812e11877801e21a9e5ce9b9db1c"
  end

  resource "pymobiledevice3" do
    url "https://files.pythonhosted.org/packages/4e/e9/29103692d51ff4c12ab495bb112f3ee21bbd27bbad31114c23bb7b1aa8f4/pymobiledevice3-11.22.0.tar.gz"
    sha256 "d149c1b1508dcf55e541c588108c005da9a3bcebc942e78228a7a7a3f8bd0160"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/74/26/2fbeedb218a787a5eea551c7532cac4e009f83d689dd2faa0d0353473f86/python_dotenv-1.2.4.tar.gz"
    sha256 "f0d53e69935a851c0dcc78f3ab7aaccd8cabef0b92382b576b824212902873c0"
  end

  resource "python-pcapng" do
    url "https://files.pythonhosted.org/packages/3c/2f/72534730a81205cd3ca32d65b4760c927e6ffc69a3d06ff3d1edda64ae3e/python-pcapng-2.1.1.tar.gz"
    sha256 "6477e72513165954e56d5836ebbd43ac7f8d28c4640f78d63d6506d1692ddc74"
  end

  resource "pytun-pmd3" do
    url "https://files.pythonhosted.org/packages/5e/8a/6e73c70ddf5fdf9cf359cdc458f38cf795c4a653c870a4a49c8768e5db86/pytun_pmd3-3.0.3.tar.gz"
    sha256 "7fa822092139b4b77e08fad9233dbd4a6fcca2cf2423b0775db962ca5e87a017"
  end

  resource "pyusb" do
    url "https://files.pythonhosted.org/packages/00/6b/ce3727395e52b7b76dfcf0c665e37d223b680b9becc60710d4bc08b7b7cb/pyusb-1.3.1.tar.gz"
    sha256 "3af070b607467c1c164f49d5b0caabe8ac78dbed9298d703a8dbf9df4052d17e"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "qh3" do
    url "https://files.pythonhosted.org/packages/72/ae/9d42d6df0ab9a014138332346fd690f7b0be0556861421d2459caec28d6f/qh3-1.9.4.tar.gz"
    sha256 "bd2ea9baf19656c544a48a56a195f2ac257cd973b566f5f2998fa3b7446281a1"
  end

  resource "questionary" do
    url "https://files.pythonhosted.org/packages/f6/45/eafb0bba0f9988f6a2520f9ca2df2c82ddfa8d67c95d6625452e97b204a5/questionary-2.1.1.tar.gz"
    sha256 "3d7e980292bb0107abaa79c68dd3eee3c561b83a0f89ae482860b181c8bd412d"
  end

  resource "remotezip2" do
    url "https://files.pythonhosted.org/packages/3f/47/94335875a4d5339f64943c1a68900f59a91ad987ab8fcd8e5201839e7cc5/remotezip2-0.0.2.tar.gz"
    sha256 "db38fb14d0c297af6da8756808bb25f9d3b2c23c7639a14f7a74794b2fc9a261"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "srptools" do
    url "https://files.pythonhosted.org/packages/a1/8a/d62af55a56d56216e96563bc9c29c2d16d957317742c2e5bd4e79a524b06/srptools-1.0.1.tar.gz"
    sha256 "7fa4337256a1542e8f5bb4bed19e1d9aea98fe5ff9baf76693342a1dd6ac7c96"
  end

  resource "stack-data" do
    url "https://files.pythonhosted.org/packages/28/e3/55dcc2cfbc3ca9c29519eb6884dd1415ecb53b0e934862d3559ddcb7e20b/stack_data-0.6.3.tar.gz"
    sha256 "836a778de4fec4dcd1dcd89ed8abff8a221f58308462e1c4aa2a3cf30148f0b9"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/7b/2b/3850dc6bf7ef71b088962eba31dafc6cffd2f96e577ebb0bb316df96da3e/starlette-1.7.0.tar.gz"
    sha256 "c79f74ea63cff761804fbbfb182f1e0b440c2d07b164d24700c5a1bab5d6ff5d"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/46/79/cf31d7a93a8fdc6aa0fbb665be84426a8c5a557d9240b6239e9e11e35fc5/termcolor-3.3.0.tar.gz"
    sha256 "348871ca648ec6a9a983a13ab626c0acce02f515b9e1983332b17af7979521c5"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/0d/ea/b2a5bd54b28a324dae8211928b2d730b6547500342c7e6c6dea08bd0a485/tqdm-4.70.1.tar.gz"
    sha256 "cefd0eca11b2a37a3aee776544d4f4ae913f02688135b5556b8788dfa474afc4"
  end

  resource "traitlets" do
    url "https://files.pythonhosted.org/packages/2c/2e/a7fbfe268c8a3b32546930c0297c101d65a4a14c304ad5790a9f478f0e4e/traitlets-5.16.1.tar.gz"
    sha256 "ed900c2b631aa3a112811139fa97b8d2c3bad5e989656bba4b7e52c7852c18c1"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/16/f7/57713ba479fd405eb76de31404b2c744c289e336b2d999511ebf51e496f7/typer-0.27.2.tar.gz"
    sha256 "269b7eb9d3c202ca84b4bc9618cb04ebb43d3d4d1e567e4c768607232c05f945"
  end

  resource "typer-injector" do
    url "https://files.pythonhosted.org/packages/b3/11/7da0c6019c26cb660acc3329b44c3247286469de3dcd94013d0793598ecb/typer_injector-0.3.0.tar.gz"
    sha256 "7fa5b411b86c31aeeb22fc180d0ebf615c2a71c8f2b1dc97ad4d06a4c235b3a5"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/a3/26/b09b8010994eccc3c09092e6b34058f36a460eea2d4c3e8b910c695975a0/typing_inspection-0.4.4.tar.gz"
    sha256 "547274fa6b0a561ccf549cc9524b999a578e737d015d8709d021f9d0d13bea47"
  end

  resource "typing_extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/d9/68/f1b440335057bfce71b6e50a9d09445aa2ecbd08359a337976627b8409e7/tzdata-2026.5.tar.gz"
    sha256 "8cc73c0a0bfca7dbfa59235d60b2eff82231dee33f53d206db1acd9173cfc0a7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/da/34/30e9280707135d2cfc589dfff3cb796bd07a3aeb1a3e415ba09dd89d7bb4/uvicorn-0.54.0.tar.gz"
    sha256 "a2e33cbfaa0306f8e6b0c13e0cb89d7d7a2da3e62b90c66e18c33d9807b28620"
  end

  resource "uvloop" do
    url "https://files.pythonhosted.org/packages/fa/42/02c739ce85fb2ee8d99212c61417da8140c6b87e9d97c430bea520d76044/uvloop-0.23.0.tar.gz"
    sha256 "28d160f51ab4da3b187063652e643dea6831072add4adc1e6d62afbe73b6be27"
  end

  resource "watchfiles" do
    url "https://files.pythonhosted.org/packages/b3/68/e6aa0b77d217b31f8f486ec0cdfe5e00e6e38dc0be657e7d85819b9faf0a/watchfiles-1.3.0.tar.gz"
    sha256 "99aee4a07847c06820765fd7b1b49ceac4f3f711ccb7d104655a33231de1c207"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/f0/b4/7830542634bb2d3e62aa3b586a72d5b3b6c91c3168929e7000ef3fed041d/wcwidth-0.9.2.tar.gz"
    sha256 "ae0ef90b90f6af38b54f1fe6d58662ec33b3cb4b8391958a62416d654231727b"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/01/89/3f825ab71c242fffb62ea8fe638741c290f62f8d7aadf8125ff897747af3/websockets-17.2.tar.gz"
    sha256 "36c2fb94c990cc2545143b12690e2de6c16300f9dbe5b4f33fa300cf57dc8792"
  end

  resource "wsproto" do
    url "https://files.pythonhosted.org/packages/c7/79/12135bdf8b9c9367b8701c2c19a14c913c120b882d50b014ca0d38083c2c/wsproto-1.3.2.tar.gz"
    sha256 "b86885dcf294e15204919950f666e06ffc6c7c114ca900b060d6e16293528294"
  end

  resource "xmltodict" do
    url "https://files.pythonhosted.org/packages/19/70/80f3b7c10d2630aa66414bf23d210386700aa390547278c789afa994fd7e/xmltodict-1.0.4.tar.gz"
    sha256 "6d94c9f834dd9e44514162799d344d815a3a4faec913717a9ecbfa5be1bb8e61"
  end

  resource "xonsh" do
    url "https://files.pythonhosted.org/packages/c1/28/974f44afd5c05bcfb012d52a91b514e629706048c85d669a29eab2f0369a/xonsh-0.24.2.tar.gz"
    sha256 "461244cf1de8ed28d0c07cc548342b9e7969d46e17ef8d71b5d3064307930a25"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # The engine prints `LOCA_ENGINE_PORT=<n>` then serves on loopback; just check it starts.
    assert_match "loca", shell_output("#{bin}/loca-engine --help")
  end
end
