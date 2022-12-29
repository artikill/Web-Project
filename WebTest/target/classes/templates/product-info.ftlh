<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style type="text/css">
    h1 {
       color: black;
       display: flex;
       justify-content: center;
       background: black;
       }

    </style>
    <title>Информация</title>

</head>
<body>
<h1>Редактирование записи</h1><hr>
<h5>Актуальная информация:</h5><hr>
<h5>Фотография ПК</h5>
<#list images as img>
<img src="/images/${img.id?if_exists}" height="100px"/><br><br>
</#list>
<b>Процессор: </b>${product.title?if_exists}<br>
<b>Видеокартая: </b>${product.description?if_exists}<br>
<b>Количество ОЗУ: </b>${product.price?if_exists}<br>
<b>Материнская плата: </b>${product.author?if_exists}<br>
<b>Хранение данных: </b>${product.city?if_exists}<br>
<hr>

<h5>Редактирование:</h5><hr>
<form action="/product/edit/${product.id}" method="post" enctype="multipart/form-data">
    <!--<input type="number" name="id"/><br>-->

    <p class="form-p">Процессор: <input type="text" name="title"/><br></p>

    <p class="form-p">Видеокарта: <input type="text" name="description"/><br></p>

    <p class="form-p">Количество ОЗУ: <input type="number" name="price"/><br></p>

    <p class="form-p">Материнская плата: <input type="text" name="author"/><br></p>

    <p class="form-p">Хранение данных: <input type="text" name="city"/><br></p>

    <p class="form-p">Фотография: <input type="file" name="file1"/><br></p>

    <input type="submit" value="Обновить запись"/><br><hr>

<h4>Удаление</h4>
</form>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить запись"/>
</form>

</body>
</html>