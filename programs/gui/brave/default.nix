{ pkgs, ... }:
{
  programs.chromium = {
    enable = true;
    package = pkgs.brave;

    extensions = [
      { id = "nngceckbapebfimnlniiiahkandclblb"; } # Bitwarden
      { id = "dbbopjndlaginbghfoibbndhlbpdpapd"; } # IGPlus
      { id = "neebplgakaahbhdphmkckjjcegoiijjo"; } # Keepa
      { id = "pnidmkljnhbjfffciajlcpeldoljnidn"; } # Linkwarden
      { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; } # Vimium
      { id = "efbjojhplkelaegfbieplglfidafgoka"; } # VT4Browsers
    ];
  };
}