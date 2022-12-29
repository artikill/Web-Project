<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style type="text/css">
        h1 {
            color: black;
            display: flex;
            justify-content: center;
        }
        h3 {
            color: black;
            display: flex;
            justify-content: center;
        }
        form {
            padding: 10px;
            border: 10px solid black;
            color: black;
            background: orange;
            margin: 0 10vw;
        }
        .form-elem-wrapper {
            display: flex;
            flex-direction: table;
            justify-content: center;
            border: 2px solid red;
            margin: 20px;
        }
        .form-p {
            font-size: 20px;
            font-weight: bold;
            text-shadow: 1px 0 1px #000;
            margin: 3px auto;
        }
        .form-input {
            margin: 20px;
            border: 2px solid white;
            border-radius: 10px;
        }
        .submit-div {
            display: flex;
            justify-content: center;
        }
        .submit-input {
            margin: 0 auto;
        }
        .form-input-file {
            margin: 0 auto;
        }


    </style>
    <title>Добавление</title>
</head>
<body>
<h1>Создание информации о комплектующих</h1><hr>

<form action="/product/create" method="post" enctype="multipart/form-data"><br>
    <div class="form-elem-wrapper">
        <p class="form-p">Процессор:</p>
        <input class="form-input" type="text" name="title"/><br>
    </div>
    <div class="form-elem-wrapper">
        <p class="form-p">Видеокарта:</p>
        <input class="form-input" type="text" name="description"/><br>
    </div>
    <div class="form-elem-wrapper">
        <p class="form-p"> Количество ОЗУ:</p>
        <input class="form-input" type="number" name="price"/><br>
    </div>
    <div class="form-elem-wrapper">
        <P class="form-p">Материнская плата:</P>
        <input class="form-input" type="text" name="author"/><br>
    </div>
    <div class="form-elem-wrapper">
        <p class="form-p">Хранение данных:</p>
        <input class="form-input" type="text" name="city"/><br>
    </div>
    <div class="form-elem-wrapper">
        <p class="form-p">Фотография ПК:</p>
        <input class="form-input-file" type="file" name="file1"/><br>
    </div>
    <div class="submit-div">
        <input class="submit-input" type="submit" value="Добавить"/><br>
    </div>
</form><hr>
<!--<form action="/" method="get">
    <input type="text" name="title"/><br>
    <input type="submit" value="Поиск"/>
</form>-->
<h3>Созданные записи:</h3>
<p>
    <#list products as product>
        <div>
            <p>Процессор: ${product.title}</p>
            <p>Количество ОЗУ: ${product.price}</p>
            <p>Видеокарта: ${product.description} </p>
            <a href="/product/${product.id}">Детали</a>
            <hr>
        <#else>
            <h3>Записи отсутствуют</h3>
        </div>

    </#list>
</p>





</body>
</html>