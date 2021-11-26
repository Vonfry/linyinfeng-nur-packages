# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl }:
{
  clash-for-windows = {
    pname = "clash-for-windows";
    version = "0.18.10";
    src = fetchurl {
      url = "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/0.18.10/Clash.for.Windows-0.18.10-x64-linux.tar.gz";
      sha256 = "0qz9w9pairsialzqyf444h9difvhc7cd0ph7gw43ilb8w2025vi1";
    };
  };
  clash-for-windows-icon = {
    pname = "clash-for-windows-icon";
    version = "0";
    src = fetchurl {
      url = "https://docs.cfw.lbyczf.com/favicon.ico";
      sha256 = "1zd453mwrlc9kafagyvmj9i8vd5a4akp9srbsy9mxa48x77ckqp2";
    };
  };
  clash-premium-aarch64-linux = {
    pname = "clash-premium-aarch64-linux";
    version = "2021.11.08";
    src = fetchurl {
      url = "https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-armv8-2021.11.08.gz";
      sha256 = "0qnrh2nlkjf9hm87lh2bnyn6m3jd46sjmr213flwwj39h8wqflw2";
    };
  };
  clash-premium-i686-linux = {
    pname = "clash-premium-i686-linux";
    version = "2021.11.08";
    src = fetchurl {
      url = "https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-386-2021.11.08.gz";
      sha256 = "01w66akjvhgr8kv349nf12pk03kxk2l4wzqjf2rm7pbxl99412vc";
    };
  };
  clash-premium-x86_64-darwin = {
    pname = "clash-premium-x86_64-darwin";
    version = "2021.11.08";
    src = fetchurl {
      url = "https://github.com/Dreamacro/clash/releases/download/premium/clash-darwin-amd64-2021.11.08.gz";
      sha256 = "1dj11yqlfgpyk3xgb2zl09a676b3l72qvrh0caaww5328d50bnwd";
    };
  };
  clash-premium-x86_64-linux = {
    pname = "clash-premium-x86_64-linux";
    version = "2021.11.08";
    src = fetchurl {
      url = "https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-amd64-2021.11.08.gz";
      sha256 = "0ry27dh7idp5hhgwlpifvayf0bswnkdh1rb3r5brrhbqgl7wkp7d";
    };
  };
  commit-notifier = {
    pname = "commit-notifier";
    version = "573c1eb7eabc97aa06e0e9ad85f5148110749876";
    src = fetchgit {
      url = "https://github.com/linyinfeng/commit-notifier.git";
      rev = "573c1eb7eabc97aa06e0e9ad85f5148110749876";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0al8rvczn99hymhnanfij2b3b35gzg59v2q24swsfrky625g08i6";
    };
    cargoLock = {
      lockFile = ./commit-notifier-573c1eb7eabc97aa06e0e9ad85f5148110749876/Cargo.lock;
      outputHashes = { };
    };
  };
  dot-tar = {
    pname = "dot-tar";
    version = "08f3652b54e8ee021bba933952df56aee22910b3";
    src = fetchgit {
      url = "https://github.com/linyinfeng/dot-tar.git";
      rev = "08f3652b54e8ee021bba933952df56aee22910b3";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0wl2nhp1ri32mpq6jgvnxi62qg5m841vqi6zdymlfilsiwjamq43";
    };
    cargoLock = {
      lockFile = ./dot-tar-08f3652b54e8ee021bba933952df56aee22910b3/Cargo.lock;
      outputHashes = { };
    };
  };
  dpt-rp1-py = {
    pname = "dpt-rp1-py";
    version = "v0.1.13";
    src = fetchgit {
      url = "https://github.com/janten/dpt-rp1-py";
      rev = "v0.1.13";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1jgkfn5kfnx98xs0dmym1h9mv1mrzlglk7x0fzs2jlc56c18w9dk";
    };
  };
  icalingua = {
    pname = "icalingua";
    version = "v2.4.4-Deus-non-vult";
    src = fetchurl {
      url = "https://github.com/Clansty/Icalingua/releases/download/v2.4.4-Deus-non-vult/app-x86_64.asar";
      sha256 = "10c35qcanjm1f0hbgvf8wia7qf3l5cpay4gwgxsjvjcza3fwsr5d";
    };
  };
  icalinguaIcon = {
    pname = "icalinguaIcon";
    version = "0";
    src = fetchurl {
      url = "https://aur.archlinux.org/cgit/aur.git/plain/512x512.png?h=icalingua";
      sha256 = "0f0fgnhv80fwwfwlram5n078z7svnlqrh68d7gc4wl0qiig5ij44";
    };
  };
  pisces = {
    pname = "pisces";
    version = "e45e0869855d089ba1e628b6248434b2dfa709c4";
    src = fetchgit {
      url = "https://github.com/laughedelic/pisces";
      rev = "e45e0869855d089ba1e628b6248434b2dfa709c4";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "073wb83qcn0hfkywjcly64k6pf0d7z5nxxwls5sa80jdwchvd2rs";
    };
  };
  plugin-bang-bang = {
    pname = "plugin-bang-bang";
    version = "f969c618301163273d0a03d002614d9a81952c1e";
    src = fetchgit {
      url = "https://github.com/oh-my-fish/plugin-bang-bang";
      rev = "f969c618301163273d0a03d002614d9a81952c1e";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1r3d4wgdylnc857j08lbdscqbm9lxbm1wqzbkqz1jf8bgq2rvk03";
    };
  };
  plugin-git = {
    pname = "plugin-git";
    version = "44a1eb5856cea43e4c01318120c1d4e1823d1e34";
    src = fetchgit {
      url = "https://github.com/jhillyerd/plugin-git";
      rev = "44a1eb5856cea43e4c01318120c1d4e1823d1e34";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "11pk1xkdsd98xszpr9vyajc40lv5hylqrqpw2kd7izr82z8k1rq3";
    };
  };
  replay-fish = {
    pname = "replay-fish";
    version = "1.2.0";
    src = fetchgit {
      url = "https://github.com/jorgebucaran/replay.fish";
      rev = "1.2.0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1aa3a7jdb8a9z9jd9ckf449zmf7cl7yl47yp94srqj4iv1amizs3";
    };
  };
  telegram-send = {
    pname = "telegram-send";
    version = "2eb23bde734137b10da80fdf2e8a48d34f074454";
    src = fetchgit {
      url = "https://github.com/rahiel/telegram-send.git";
      rev = "2eb23bde734137b10da80fdf2e8a48d34f074454";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0xix3fh1wjkcgmmhg2gkflzcdyzy3vzqabwwh566flggc619qb78";
    };
  };
  trojan = {
    pname = "trojan";
    version = "v1.16.0";
    src = fetchgit {
      url = "https://github.com/trojan-gfw/trojan";
      rev = "v1.16.0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0v24hy46vmbx4yjnf49w2ib5l893b19imykk86zbyj1sfh8ijakw";
    };
  };
  vlmcsd = {
    pname = "vlmcsd";
    version = "svn1113";
    src = fetchgit {
      url = "https://github.com/Wind4/vlmcsd";
      rev = "svn1113";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "19qfw4l4b5vi03vmv9g5i7j32nifvz8sfada04mxqkrqdqxarb1q";
    };
  };
  wemeet = {
    pname = "wemeet";
    version = "2.8.0.1";
    src = fetchurl {
      url = "https://updatecdn.meeting.qq.com/cos/196cdf1a3336d5dca56142398818545f/TencentMeeting_0300000000_2.8.0.1_x86_64.publish.deb";
      sha256 = "05r3l3cgbcqdkwyr60dz2pwlr5x3i5dghnpc6yqmhqbv6qncyqrd";
    };
  };
}
