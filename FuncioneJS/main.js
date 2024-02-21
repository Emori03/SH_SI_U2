    // Script para mostrar y ocultar las secciones según el enlace seleccionado en el navbar
    $(document).ready(function(){
      $('a.nav-link').click(function(){
        var target = $(this).attr('href');
        $('.container').hide();
        $(target).show();
      });
    });
