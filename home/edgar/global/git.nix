{pkgs, ...}: {
  programs.git = {
    enable = true;

    userName = "Edgar B";
    userEmail = "39066502+Guekka@users.noreply.github.com";

    extraConfig = {
      feature.manyFiles = true;
      init.defaultBranch = "main";

      # preserve original committer when rebasing. See <https://stackoverflow.com/a/76325489/10796945>
      rebase = {
        instructionFormat = "%s%nexec GIT_COMMITTER_DATE=\"%cI\" GIT_COMMITTER_NAME=\"%cN\" GIT_COMMITTER_EMAIL=\"%cE\" git commit --amend --no-edit --allow-empty --allow-empty-message%n";
      };
    };
    ignores = [".direnv" "result"];

    difftastic = {
      enable = true;
    };
  };

  home.packages = [
    pkgs.git-absorb
  ];
}
