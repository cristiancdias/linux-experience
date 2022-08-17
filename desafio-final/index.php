<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Exemplo</title>
</head>
<body>
  <?php
    ini_set("display_errors", 1);
    header('Content-Type: text/hmtl; charset=iso-8859-1');

    echo 'Versao Atual do PHP: ' . phpversion() . '<br>';

    $servername = "54.234.153.24";
    $username = "root";
    $password = "Senha123";
    $database = "meubanco";

    //Criar conexão

    $link = new mysqli($servername, $username, $password, $database);

    if (mysqli_connect_errno()) {
      printf("Connect failed: %s\n", mysqli_connect_error());
      exit();
    }

    $valor_rand1 = rand(1,999);
    $valor_rand2 = strtoupper(substr(bin2hex(random_bytes(4)),1));
    $host_name = gethostname();

    $query = "INSERT INTO dados (AlunoID, Nome, Sobrenome, Endereco, Cidade, Host) VALUES ('$valor_rand1', '$valor_rand2', '$valor_rand2', '$valor_rand2', '$valor_rand2', '$host_name')";

    if ($link->query($query) === true) {
      echo "New record created succesfully";
    } else {
      echo "Error: " . $link->error;
    }
  ?>
</body>
</html>