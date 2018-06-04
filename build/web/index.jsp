<!DOCTYPE html>
<html>
<head>
    <style>
        body {
    font-family: Arial, Helvetica, sans-serif;
    width: 850px;
    text-align: center;
    margin: 20px auto;
}

#main { background: #ebc5cf }

#header {
    height: 250px;
    background: #ebc5cf;
}
#logo {
    height: 155px;
    width: 155px;
    float: left;
    margin-left: 30px;
    margin-top: -20px;
}

#logoText {
    float: left;
    margin: 20px 0 0 70px;
    /* font styles apply to text within alt tags */
    font-family: 'American Typewriter', Courier, monospace;
    font-size: 50px;
    color: #333;
}

#widgetBar {
    height: 50px;
    width: 850px;
    float: right;
    background: #ccc;
}

.headerWidget {
    width: 194px;
    margin: 20px 2px;
    font-size: small;
    float: right;
    line-height: 25px;
    background: #aaa;
}

#footer {
    height: 60px;
    width: 350px;
    clear: left;
    background: #aaa;
}

hr {
    border: 0;
    background-color: #333;
    height: 1px;
    margin: 0 25px;
    width: 300px;
}

#indexLeftColumn {
    height: 400px;
    width: 350px;
    float: left;
    background: #ccc;
}

#indexRightColumn {
    height: 400px;
    width: 500px;
    float: left;
    background: #eee;
}
.categoryBox {
    height: 176px;
    width: 212px;
    margin: 21px 14px 6px;
    float: inherit;
    background: #ccc;
}

.categoryLabelText {
    line-height: 150%;
    font-size: x-large;
}

    </style>
</head>
<body>      
    <div id="main">
        <div id="header">
            <div id="widgetBar">

        <div class="headerWidget">
            [ language toggle ]
        </div>

        <div class="headerWidget">
            [ shopping cart widget ]
        </div>

    </div>

        <a href="#">
            <img src="#" id="logo" alt="MCO logo">
        </a>

        <img src="#" id="logoText" alt="MCO Food Market">
            </div>

        <div id="indexLeftColumn">
           <div id="welcomeText">
                <p>[ welcome text ]</p>
           </div>
        </div>

        <div id="indexRightColumn">
            <div class="categoryBox">
                <a href="#">
                    <span class="categoryLabelText">American</span>
                </a>
            </div>
            <div class="categoryBox">
                <a href="#">
                    <span class="categoryLabelText">Japanese</span>
                </a>
            </div>
            <div class="categoryBox">
                <a href="#">
                    <span class="categoryLabelText">Italian</span>
                </a>
            </div>
            <div class="categoryBox">
                <a href="#">
                    <span class="categoryLabelText">Chinese</span>
                </a>
            </div>
        </div>

        <div id="footer">
            <hr>
            <p id="footerText">[ footer text ]</p>
        </div>
    </div>
</body>
</html>