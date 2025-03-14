
// This M script allows you to mass rename all your columns written in snake_case to get cleaner labels.
let
    // Sample
    MyTable = #table(
        {"purchase_store_description","purchase_store_type"},
        {
            {"Av. Montaigne, Paris, France", "Point of Sales"},
            {"Oxford st., London, United Kingdom", "Corner"}
        }
    ),
    // Replace underscores by blank spaces and add Text.Proper()
    MyTableWithNiceColumns = Table.TransformColumnNames(MyTable, each Text.Proper(Text.Replace(_, "_", " ")))
in MyTableWithNiceColumns
