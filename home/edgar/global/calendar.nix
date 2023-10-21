{
  accounts.calendar = {
    basePath = ".local/share/calendars";

    accounts.nextcloud = {
      khal = {
        enable = true;
        type = "discover";
      };

      vdirsyncer = {
        enable = true;
        collections = null;
        metadata = ["color" "displayname"];
      };

      local = {
        type = "filesystem";
        fileExt = ".ics";
      };

      remote = {
        type = "caldav";
        url = "https://domino.zdimension.fr/nextcloud/remote.php/dav";
        userName = "guekka";
        passwordCommand = ["cat" "/home/edgar/secrets/nextcloud_pass"];
      };
    };
  };

  programs.vdirsyncer.enable = true;
  programs.khal.enable = true;
}
