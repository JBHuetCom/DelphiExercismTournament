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
    // Structure de stockage intermédiaire : TDictionary<string, array[0..5] of integer>
    // Nom équipe 1 : tous les caractères compris entre le début de la chaîne en cours et le 1er ";"
    // Si le nom de l'équipe 1 n'est pas encore dans le dictionnaire, l'ajouter
    // Nom équipe 2 : tous les caractères compris entre le 1er ";" et le 2ème ";"
    // Si le nom de l'équipe 2 n'est pas encore dans le dictionnaire, l'ajouter
    // Résultat du match : tous les caractères compris entre le 2ème ";" et la fin de la chaîne
    // Interpréter le résultat et mettre à jour les chiffres des 2 équipes
  end;
  // 2ème boucle
  // Parcourir chaque ligne du dictionnaire :
  // 1 - dans un tableau de chaînes, ajouter le nom de l'équipe
  // 2 - Dans un tableau d'entiers, ajouter les P(oints)
  // 3ème boucle
  // Trier simultanément le tableau des P(oints) par ordre décroissant, et le nom des équipes associées
  // En cas d'égalité de P(oints) trier aussi par ordre alphabéthique
  SetLength(TableResult, 1);
  TableResult[0] := 'Team                           | MP |  W |  D |  L |  P';
  // 4ème boucle
  // Parcourir le tableau des équipes, et créer le tableau résultat à partir des données du dictionnaire
  // Idée pour créer le tableau résultat : copier TableResult[0] et insérer les différentes chaînes représentant les valeurs en remplaçant les chaînes existantes
  Result := TableResult;
  SetLength(TableResult, 0);
end;

end.
