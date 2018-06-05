<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
   <style>
        body {
        font-family: Arial, Helvetica, sans-serif;
        width: 1500px;
        text-align: center;
        margin: 20px auto;
        color: #ebc5cf;
        }

        hr {
            border: 0;
            background-color: #333;
            height: 1px;
        }

        table {
            margin: 0 20px;
            border-spacing: 0;
            text-align: center;
            border: solid 1px #f5eabe;
        }

        a {
            color: inherit;
            text-decoration: underline;
        }

        a:hover { text-decoration: none }

        a:visited { color: inherit }

        img { border: none }

        input, select { margin: 5px }

        li { margin: 10px 0 }

        label { line-height: 30px }

        label.error {
            font-size: smaller;
            line-height: 20px;
            font-style: italic;
        }
    #main { background: #ebc5cf }

    #singleColumn {
        margin: 20px 30px;
        text-align: left;
    }

    .lightBlue { background-color: #edf8f7 }

    .white { background-color: #fff }

    .bubble {
        font-weight: bold;
        background-color: #f5eabe;
        padding: 5px;
        color: inherit;
        display: inline;
        border-radius: 4px;
    }

    .hMargin { margin: 0 30px }

    .smallText { font-size: small }

    .reallySmallText { font-size: xx-small }

    .header {
        background-color: #ffffff;
        height: 30px;
    }

    .error {
        color: #c00;
        font-style: italic;
    }

    .tableHeading {
        font-weight: bold;
        background-color: #edf8f7;
    }

    #indexLeftColumn {
        text-align: left;
        height: 600px;
        width: 350px;
        float: left;
        background-color: #c3e3e0
    }

    #indexRightColumn {
        text-align: right;
        height: 600px;
        width: 900px;
        float: right;
        
    }

    #welcomeText {
        margin: 30px 5px 0 30px;
        line-height: 1.4em;
    }

    .categoryBox {
        height: 260px;
        width: 260px;
        margin: 21px 14px 6px;
        float: left;
        background-color: #c3e3e5
    }

    .categoryBox a { text-decoration: none }

    .categoryLabel {
        position: absolute;
        background-color: #fff;
        opacity: 0.7;
        height: 40px;
        width: 260px;
        margin: 2px;
    }

    .categoryLabelText {
        position: absolute;
        line-height: 150%;
        font-size: x-large;
        margin: 3px 10px;
    }

    .categoryImage {
        padding: 1px;
        border:solid 1px #555;
    }
</style>
</head>
<body>        
<c:set var='view' value='/index' scope='session' />


<%-- HTML markup starts below --%>
<sql:query var="category" dataSource="jdbc/mcofoodsmarket">
    SELECT* FROM category
</sql:query>
    
<div id="indexLeftColumn">
    <div id="welcomeText">
        <p style="font-size: larger"><fmt:message key='greeting' /></p>

        <p><fmt:message key='introText' /></p>
        <!-- test to access context parameters -->
        
    </div>
</div>

<div id="indexRightColumn">
    <c:forEach var="category" items="${category.rows}">
    </c:forEach>
    <c:forEach var="category" items="${categories}">
        <div class="categoryBox">
            <a href="<c:url value='category?${category.id}'/>">
                <span class="categoryLabel"></span>
                <span class="categoryLabelText">${category.name}</span>

                <img src="${initParam.categoryImagePath}${category.name}.jpg"
                     alt="<fmt:message key='${category.name}'/>" class="categoryImage">
            </a>
        </div>
    </c:forEach>
</div>
</body>
</html>