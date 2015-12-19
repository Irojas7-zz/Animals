<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Hola Mundo</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Menu Chico</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">ZOO</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Animales <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Alta</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Baja</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Edicion</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Genero <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Alta</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Baja</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Edicion</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Color <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Alta</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Baja</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Edicion</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Tipo <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Alta</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Baja</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Edicion</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="img/perro.jpg" />
                                <div class="carousel-caption">
                                    <h3>Perros</h3>
                                    <p>El mejor amigo del Hombre.</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="img/gato.jpg" />
                                <div class="carousel-caption">
                                    <h3>Gatos</h3>
                                    <p>La mejor amiga de la mujer.</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="img/tiburon.jpg" />
                                <div class="carousel-caption">
                                    <h3>Tiburon</h3>
                                    <p>Tiburon tiburon.</p>
                                </div>
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="myCarouselTwo" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarouselTwo" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarouselTwo" data-slide-to="1"></li>
                            <li data-target="#myCarouselTwo" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="img/leon.jpg" />
                                <div class="carousel-caption">
                                    <h3>Leones</h3>
                                    <p>Rey de la Selva.</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="img/pantera.jpg" />
                                <div class="carousel-caption">
                                    <h3>Pantera</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, molestiae, esse libero reprehenderit ullam assumenda sapiente placeat perspiciatis iusto et consequatur doloremque amet rerum vero saepe iure fuga at hic!</p>
                                </div>
                            </div>

                            <div class="item">
                                <img src="img/vivora.jpg" />
                                <div class="carousel-caption">
                                    <h3>Vibora</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, esse veniam similique facilis itaque laboriosam id quaerat impedit cupiditate perspiciatis odio quidem consectetur repudiandae suscipit quasi deleniti et praesentium magni.</p>
                                </div>
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarouselTwo" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarouselTwo" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <hr />
        <div class="container">
            <div class="row">
                <asp:PlaceHolder runat="server" ID="phAnimales" />
                <%--<div class="col-md-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">                            
                            <a href="Informacion.aspx?id=2"><img src="img/hipopotamo.jpg" class="img-responsive" title="Descricion de Imagenes" /></a>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="img/hipoMini.jpg" class="img-responsive" />
                                </div>
                                <div class="col-md-8">
                                    <label id="Nombre">Nombre Animal:</label><br />
                                    <label id="Tipo">Tipo de Animal:</label><br />
                                    <label id="Genero">Genero Animal:</label><br />                                    
                                </div>
                                <div class="col-md-6">
                                    <label id="Peso">Peso Animal:</label><br />                                    
                                    <label id="FecAlta">Fecha de Ingreso:</label><br />
                                    <label id="Edad">Edad del Animal:</label>
                                </div>
                                <div class="col-md-6">
                                    <label id="Color">Color del Animal:</label><br />
                                    <label id="Existencias">Existencias:</label>
                                </div>
                            </div>
                            <iframe width="640" height="360" src="https://www.youtube.com/embed/MrNUMWUKE2A" frameborder="0" allowfullscreen class="img-responsive" controls></iframe>
                        </div>
                        <div class="panel-footer">
                            <a href="Informacion.aspx" id="lnkIr">Ir a Información</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">                            
                            <a href="Informacion.aspx?id=2"><img src="img/hipopotamo.jpg" class="img-responsive" title="Descricion de Imagenes" /></a>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="img/hipoMini.jpg" class="img-responsive" />
                                </div>
                                <div class="col-md-8">
                                    <label id="Nombre">Nombre Animal:</label><br />
                                    <label id="Tipo">Tipo de Animal:</label><br />
                                    <label id="Genero">Genero Animal:</label><br />                                    
                                </div>
                                <div class="col-md-6">
                                    <label id="Peso">Peso Animal:</label><br />                                    
                                    <label id="FecAlta">Fecha de Ingreso:</label><br />
                                    <label id="Edad">Edad del Animal:</label>
                                </div>
                                <div class="col-md-6">
                                    <label id="Color">Color del Animal:</label><br />
                                    <label id="Existencias">Existencias:</label>
                                </div>
                            </div>
                            <iframe width="640" height="360" src="https://www.youtube.com/embed/MrNUMWUKE2A" frameborder="0" allowfullscreen class="img-responsive" controls></iframe>
                        </div>
                        <div class="panel-footer">
                            <a href="Informacion.aspx" id="lnkIr">Ir a Información</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">                            
                            <a href="Informacion.aspx?id=2"><img src="img/hipopotamo.jpg" class="img-responsive" title="Descricion de Imagenes" /></a>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="img/hipoMini.jpg" class="img-responsive" />
                                </div>
                                <div class="col-md-8">
                                    <label id="Nombre">Nombre Animal:</label><br />
                                    <label id="Tipo">Tipo de Animal:</label><br />
                                    <label id="Genero">Genero Animal:</label><br />                                    
                                </div>
                                <div class="col-md-6">
                                    <label id="Peso">Peso Animal:</label><br />                                    
                                    <label id="FecAlta">Fecha de Ingreso:</label><br />
                                    <label id="Edad">Edad del Animal:</label>
                                </div>
                                <div class="col-md-6">
                                    <label id="Color">Color del Animal:</label><br />
                                    <label id="Existencias">Existencias:</label>
                                </div>
                            </div>
                            <iframe width="640" height="360" src="https://www.youtube.com/embed/MrNUMWUKE2A" frameborder="0" allowfullscreen class="img-responsive" controls></iframe>
                        </div>
                        <div class="panel-footer">
                            <a href="Informacion.aspx" id="lnkIr">Ir a Información</a>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </form>
    <script src="js/jquery-2.1.4.js"></script>
    <script src="js/bootstrap.js"></script>
    <%--<form id="form1" runat="server">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Brand</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTJEur7bqysMYU_KDFK1zrhLJUvmyryQz5wWUoeKrt_2DHC2My8" alt="Chania" />
                    <div class="carousel-caption">
                        <h3>Chania</h3>
                        <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcREOZxv8HgDroeSCkDkT_bireqWb2dYFYVwyEMSJqHhA3pByNAv" alt="Chania" />
                    <div class="carousel-caption">
                        <h3>Chania</h3>
                        <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRGUOoRN-NuL1-pTVZ92hdp1p_YH309dDQOMM-DhjkszHjRj0-Z" alt="Flower" />
                    <div class="carousel-caption">
                        <h3>Flowers</h3>
                        <p>Beatiful flowers in Kolymbari, Crete.</p>
                    </div>
                </div>

                <div class="item">
                    <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS1xnuRH7Xq9_Gyws1PorZ4wccrC08hV2_qlQ4AdgcxMhp49ZXV" alt="Flower" />
                    <div class="carousel-caption">
                        <h3>Flowers</h3>
                        <p>Beatiful flowers in Kolymbari, Crete.</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

    </form>--%>
</body>
</html>
