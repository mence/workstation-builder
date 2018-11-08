[Source](https://ungoogled-software.github.io/ungoogled-chromium-wiki/faq#can-i-install-extensions-from-the-chrome-webstore)

# [Can I install extensions from the Chrome Webstore into Ungoogled Chromium?](https://ungoogled-software.github.io/ungoogled-chromium-wiki/faq#can-i-install-extensions-from-the-chrome-webstore)

## TL;DR Steps

1. Download Extensions as CRX format from Chrome Webstore (see below)
2. Enable Developer mode in `chrome://extensions/`
3. Drag and drop extensions into Chromium Extensions window

## Downloading Extensions

_Example query format_

```
https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=[VERSION]&x=id%3D[EXTENSION_ID]%26installsource%3Dondemand%26uc
```

_Current version: 68.0_

### Extensions

| Extension ID                     | Extension Name                | Links for Downloads                                                                                                                                                                                                | Filename Prefix for Chrome Extension Download                     |
| -------------------------------- | ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------- |
| aomjjhallfgjeglblehebfpbcfeobpgk | 1Password                     | [1Password](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Daomjjhallfgjeglblehebfpbcfeobpgk%26installsource%3Dondemand%26uc)                     | `1Password_aomjjhallfgjeglblehebfpbcfeobpgk_`                     |
| jebljoacamdppgjiachpgaighglhkgpe | Anylist Recipe Importer       | [Anylist Recipe Importer](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Djebljoacamdppgjiachpgaighglhkgpe%26installsource%3Dondemand%26uc)       | `Anylist-Recipe-Importer_jebljoacamdppgjiachpgaighglhkgpe_`       |
| dgoenpnkphkichnohepecnmpmihnabdg | Copy as Markdown              | [Copy as Markdown](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Ddgoenpnkphkichnohepecnmpmihnabdg%26installsource%3Dondemand%26uc)              | `Copy-as-Markdown_dgoenpnkphkichnohepecnmpmihnabdg_`              |
| bkdgflcldnnnapblkhphbgpggdiikppg | DuckDuckGo Privacy Essentials | [DuckDuckGo Privacy Essentials](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dbkdgflcldnnnapblkhphbgpggdiikppg%26installsource%3Dondemand%26uc) | `DuckDuckGo-Privacy-Essentials_bkdgflcldnnnapblkhphbgpggdiikppg_` |
| ldjkgaaoikpmhmkelcgkgacicjfbofhh | Instapaper                    | [Instapaper](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dldjkgaaoikpmhmkelcgkgacicjfbofhh%26installsource%3Dondemand%26uc)                    | `Instapaper_ldjkgaaoikpmhmkelcgkgacicjfbofhh_`                    |
| daoolpmoieinofbnddaofhkhmbagfmnj | Outline                       | [Outline](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Ddaoolpmoieinofbnddaofhkhmbagfmnj%26installsource%3Dondemand%26uc)                       | `Outline_daoolpmoieinofbnddaofhkhmbagfmnj_`                       |
| kbmfpngjjgdllneeigpgjifpgocmfgmb | Reddit Enhancement Suite      | [Reddit Enhancement Suite](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dkbmfpngjjgdllneeigpgjifpgocmfgmb%26installsource%3Dondemand%26uc)      | `Reddit-Enhancement-Suite_kbmfpngjjgdllneeigpgjifpgocmfgmb_`      |
| bdakmnplckeopfghnlpocafcepegjeap | RescueTime                    | [RescueTime](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dbdakmnplckeopfghnlpocafcepegjeap%26installsource%3Dondemand%26uc)                    | `RescueTime_bdakmnplckeopfghnlpocafcepegjeap_`                    |
| oklfoejikkmejobodofaimigojomlfim | Shut Up: Comment Blocker      | [Shut Up: Comment Blocker](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Doklfoejikkmejobodofaimigojomlfim%26installsource%3Dondemand%26uc)      | `Shut-Up-Comment-Blocker_oklfoejikkmejobodofaimigojomlfim_`       |
| ifmhoabcaeehkljcfclfiieohkohdgbb | Social Fixer for Facebook     | [Social Fixer for Facebook](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Difmhoabcaeehkljcfclfiieohkohdgbb%26installsource%3Dondemand%26uc)     | `Social-Fixer-for-Facebook_ifmhoabcaeehkljcfclfiieohkohdgbb_`     |
| dhdgffkkebhmkfjojejmpbldmpobfkfo | Tampermonkey                  | [Tampermonkey](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Ddhdgffkkebhmkfjojejmpbldmpobfkfo%26installsource%3Dondemand%26uc)                  | `Tampermonkey_dhdgffkkebhmkfjojejmpbldmpobfkfo_`                  |
| cjpalhdlnbpafiamejdnhcphjbkeiagm | uBlock Origin                 | [uBlock Origin](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dcjpalhdlnbpafiamejdnhcphjbkeiagm%26installsource%3Dondemand%26uc)                 | `uBlock-Origin_cjpalhdlnbpafiamejdnhcphjbkeiagm_`                 |
| pgdnlhfefecpicbbihgmbmffkjpaplco | uBlock Origin Extra           | [uBlock Origin Extra](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dpgdnlhfefecpicbbihgmbmffkjpaplco%26installsource%3Dondemand%26uc)           | `uBlock-Origin-Extra_pgdnlhfefecpicbbihgmbmffkjpaplco_`           |
| ogfcmafjalglgifnmanfmnieipoejdcf | uMatrix                       | [uMatrix](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dogfcmafjalglgifnmanfmnieipoejdcf%26installsource%3Dondemand%26uc)                       | `uMatrix_ogfcmafjalglgifnmanfmnieipoejdcf_`                       |
| iplffkdpngmdjhlpjmppncnlhomiipha | Unpaywall                     | [Unpaywall](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Diplffkdpngmdjhlpjmppncnlhomiipha%26installsource%3Dondemand%26uc)                     | `Unpaywall_iplffkdpngmdjhlpjmppncnlhomiipha_`                     |
| gbobdaaeaihkghbokihkofcbndhmbdpd | Unshorten.link                | [Unshorten.link](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dgbobdaaeaihkghbokihkofcbndhmbdpd%26installsource%3Dondemand%26uc)                | `Unshorten-link_gbobdaaeaihkghbokihkofcbndhmbdpd_`                |
| hhinaapppaileiechjoiifaancjggfjm | Web Scrobbler                 | [Web Scrobbler](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dhhinaapppaileiechjoiifaancjggfjm%26installsource%3Dondemand%26uc)                 | `Web-Scrobbler_hhinaapppaileiechjoiifaancjggfjm_`                 |
| gcbommkclmclpchllfjekcdonpmejbdp | HTTPS Everywhere              | [HTTPS Everywhere](https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=68.0&x=id%3Dgcbommkclmclpchllfjekcdonpmejbdp%26installsource%3Dondemand%26uc)              | `HTTPS-Everywhere_gcbommkclmclpchllfjekcdonpmejbdp_`              |
