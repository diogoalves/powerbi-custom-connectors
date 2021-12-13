section ContaAzul;
 
[DataSource.Kind="ContaAzul", Publish="ContaAzul.Publish"]
shared ContaAzul.Contents = (optional message as text) =>
    let
        message = if (message <> null) then message else "ContaAzul Hello world"
    in
        message;
 
ContaAzul = [
    Authentication = [
        Implicit = []
    ],
    // Label = Extension.LoadString("DataSourceLabel")
    Label = "Conta Azul"
];
 
ContaAzul.Publish = [
    Beta = true,
    ButtonText = { Extension.LoadString("FormulaTitle"), Extension.LoadString("FormulaHelp") },
    LearnMoreUrl = "https://github.com/diogoalves/powerbi-custom-connectors",
    SourceImage = ContaAzul.Icons,
    SourceTypeImage = ContaAzul.Icons
];
 
ContaAzul.Icons = [
    Icon16 = { Extension.Contents("ContaAzul16.png"), Extension.Contents("ContaAzul20.png"), Extension.Contents("ContaAzul24.png"), Extension.Contents("ContaAzul32.png") },
    Icon32 = { Extension.Contents("ContaAzul32.png"), Extension.Contents("ContaAzul40.png"), Extension.Contents("ContaAzul48.png"), Extension.Contents("ContaAzul64.png") }
];