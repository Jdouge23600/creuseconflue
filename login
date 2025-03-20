<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion - Service Technique</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #4CAF50, #2E7D32);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 350px;
        }

        .login-container img {
            width: 200px;
            margin-bottom: 20px;
            pointer-events: none;
        }

        .login-container h2 {
            margin-bottom: 15px;
            color: #2E7D32;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #388E3C;
        }

        .error-message {
            color: red;
            margin-top: 10px;
            display: none;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <img src="https://i.ibb.co/c4BwLYQ/creuse-confluence-removebg-preview.jpg" alt="Logo Creuse Confluence">
        <h2>Connexion</h2>
        <input type="text" id="username" class="input-field" placeholder="Nom d'utilisateur">
        <input type="password" id="password" class="input-field" placeholder="Mot de passe">
        <button class="btn" onclick="login()">Se connecter</button>
        <p class="error-message" id="error-message">Identifiants incorrects.</p>
    </div>

    <script>
        function login() {
            const users = {
                "JohannC": "admin", 
                "JessyD": "limited",
                "NicolasC": "limited",
                "Eric": "limited"
            };

            const username = document.getElementById("username").value;
            const password = document.getElementById("password").value;

            if (password === "123456" && users[username]) {
                localStorage.setItem("userRole", users[username]);
                window.location.href = "acceuil.html";
            } else {
                document.getElementById("error-message").style.display = "block";
            }
        }
    </script>

</body>
</html>
