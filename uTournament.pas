unit uTournament;

interface

type
  TTableMatch = TArray<string>;

  TTournament = class
    class function Tally(AInput: TTableMatch): TTableMatch;
  end;

implementation

{ TTournament }

class function TTournament.Tally(AInput: TTableMatch): TTableMatch;
var
  TableResult: TTableMatch;
  i: integer;
begin
  for i := Low(AInput) to High(AInput) do
  begin
    // Structure de stockage interm�diaire : TDictionary<string, array[0..5] of integer>
    // Nom �quipe 1 : tous les caract�res compris entre le d�but de la cha�ne en cours et le 1er ";"
    // Si le nom de l'�quipe 1 n'est pas encore dans le dictionnaire, l'ajouter
    // Nom �quipe 2 : tous les caract�res compris entre le 1er ";" et le 2�me ";"
    // Si le nom de l'�quipe 2 n'est pas encore dans le dictionnaire, l'ajouter
    // R�sultat du match : tous les caract�res compris entre le 2�me ";" et la fin de la cha�ne
    // Interpr�ter le r�sultat et mettre � jour les chiffres des 2 �quipes
  end;
  // 2�me boucle
  // Parcourir chaque ligne du dictionnaire :
  // 1 - dans un tableau de cha�nes, ajouter le nom de l'�quipe
  // 2 - Dans un tableau d'entiers, ajouter les P(oints)
  // 3�me boucle
  // Trier simultan�ment le tableau des P(oints) par ordre d�croissant, et le nom des �quipes associ�es
  // En cas d'�galit� de P(oints) trier aussi par ordre alphab�thique
  SetLength(TableResult, 1);
  TableResult[0] := 'Team                           | MP |  W |  D |  L |  P';
  // 4�me boucle
  // Parcourir le tableau des �quipes, et cr�er le tableau r�sultat � partir des donn�es du dictionnaire
  // Id�e pour cr�er le tableau r�sultat : copier TableResult[0] et ins�rer les diff�rentes cha�nes repr�sentant les valeurs en rempla�ant les cha�nes existantes
  Result := TableResult;
  SetLength(TableResult, 0);
end;

end.
