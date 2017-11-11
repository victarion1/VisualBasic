<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FichaPersonal.aspx.vb" Inherits="FichaPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ficha Personal</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://vinceg.github.io/twitter-bootstrap-wizard/jquery.bootstrap.wizard.js"></script>

</head>

<body>
    <div class="container">
        <br />
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <h1><span class="label label-default">Ficha personal</span></h1>
            </div>
        </div>
        <hr />
        <form id="form1" runat="server">
            <div class="panel panel-default">
               <div id="rootwizard">
                <div class="navbar">
                    <div class="navbar-inner">
                        <div class="container">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#tab1" data-toggle="tab" aria-expanded="true">Datos Personales</a></li>
                                <li><a href="#tab2" data-toggle="tab">Vivienda</a></li>
                                <li><a href="#tab3" data-toggle="tab">Salud</a></li>
                                <li><a href="#tab4" data-toggle="tab">Prevision</a></li>
                                <li><a href="#tab5" data-toggle="tab">Ocupacion</a></li>
                                <li><a href="#tab6" data-toggle="tab">Asistencia</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div id="bar" class="progress progress-striped active">
                    <div class="progress-bar"></div>
                </div>

                <div class="tab-content">

                    <div class="tab-pane active" id="tab1">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="form-group row">
                                    <label for="txtRut">Ingrese rut</label>
                                    <asp:TextBox ID="txtRut" runat="server" type="text" class="form-control" aria-describedby="rutAyuda" placeholder="999999999-0"></asp:TextBox>
                                    <small id="rutAyuda" class="form-text text-muted">Ingrese su rut sin puntos y con guion</small>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                             <div class="panel-body">
                                  <div class="form-group row">
                                <label for="txtNombre">Nombre</label>
                                <asp:TextBox ID="TextNombre" runat="server" type="text" class="form-control" aria-describedby="ayudaNombre" placeholder="Nombre"></asp:TextBox>
                                <small id="ayudaNombre" class="form-text text-muted">ingrese su nombre</small>
                       </div>
                    </div>

                    <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="form-group row">
                                <label for="txtDireccion">Direccion</label>
                                <asp:TextBox ID="TextDireccion" runat="server" type="text" class="form-control" aria-describedby="ayudaDireccion" placeholder="Direccion"></asp:TextBox>
                                <small id="ayudaDireccion" class="form-text text-muted">ingrese su direccion</small>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane" id="tab2">
                    </div>

                    <div class="tab-pane" id="tab3">
                        
                    </div>


                    <div class="tab-pane" id="tab4">
                        4
                    </div>

                    <div class="tab-pane" id="tab5">
                        5
                    </div>

                    <div class="tab-pane" id="tab6">
                        <div class="form-group row">
                            <label for="example-date-input" class="col-2 col-form-label">Fecha de Nacimiento</label>
                            <div class="col-10">
                                <input class="form-control" type="date" value="2011-08-19" id="example-date-input" />
                            </div>
                        </div>
                    </div>


                    <ul class="pager wizard">
                        <li class="previous first disabled" style="display: none;"><a href="javascript:;">Atras</a></li>
                        <li class="previous disabled"><a href="javascript:;">Atras</a></li>
                        <li class="next last" style="display: none;"><a href="javascript:;">Siguiente</a></li>
                        <li class="next"><a href="javascript:;">Siguiente</a></li>
                    </ul>

                </div>

            </div>
         </div>

            <hr />

            <div class="btn-group pull-right" role="group">
                <button type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-erase" aria-hidden="true"></span>&nbsp &nbsp;Limpiar
                </button>
                <button type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-save-file" aria-hidden="true"></span>&nbsp &nbsp;Ver Boleta
                </button>
            </div>
            <div class="clearfix"></div>

            <script>
                $(document).ready(function () {
                    $('#rootwizard').bootstrapWizard({
                        onTabShow: function (tab, navigation, index) {
                            var $total = navigation.find('li').length;
                            var $current = index + 1;
                            var $percent = ($current / $total) * 100;
                            $('#rootwizard').find('.progress-bar').css({ width: $percent + '%' });
                        }
                    });
                });
            </script>
        </form>
    </div>
</body>
</html>
