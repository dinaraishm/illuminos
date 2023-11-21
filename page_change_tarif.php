<h1>tarif</h1>

<form action="controllers/change_tarif.php" method="post">
    <label>
        <input class="input" name="tarif" type="checkbox" value="prime">
        <p>Prime</p>
        <p>Эксклюзивные фильмы и сериалы<br>
        Основной каталог фильмов</p>
        <p>129 Rub</p>
        </div>
    </label>
    <label>
        <input class="input" name="tarif" type="checkbox" value="student">
        <p>Student</p>
        <p>Фильмы и сериалы Больше кино<br>
        Основные фильмы и сериалы</p>
        <p>99 Rub</p>
        </div>
    </label>

    <h1>contact details</h1>

<form action="index.php" method="POST">
   Пожалуйста, введите контактные данные:<br>
   <input type="text" name="email" value="" placeholder="mail" required><br>
   <input type="text" name="address" value="" placeholder="delivery address"><br>
</form>


<h1>payment method</h1>

<form action="controllers/change_card.php" method="post">
    <label>
        <input class="input" name="card" type="checkbox" value="card">
        <p>card</p>
        </div>
    </label>

    <label>
        <input class="input" name="card" type="checkbox" value="shares">
        <p>shares</p>
        </div>
    </label>

    <button>place an order</button>

    </form>

    <script>
        let checkboxes = document.querySelectorAll("[name=tarif]");
        let checkboxess = document.querySelectorAll("[name=card]");


        for (let checkbox of checkboxes) checkbox.onchange = checkbox_change;
        for (let checkbox of checkboxess) checkbox.onchange = checkbox_change;

 
        function checkbox_change() {
            if (this.checked && document.querySelectorAll("[name=tarif]:checked").length > 1)
                this.checked = false;
                if (this.checked && document.querySelectorAll("[name=card]:checked").length > 1)
                this.checked = false;


        }

    </script></div>