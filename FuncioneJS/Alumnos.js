resivirDatos();
resivirDatosCalificaciones();
cargarDatos();
function resivirDatos() {
  fetch('../FuncionesPHP/Trabajos.php')
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      var tbody = document.getElementById("trabajos");
      for (let i = 0; i < data.length; i++) {
        var tr = document.createElement("tr");
        tr.setAttribute("id", data[i].TrabajoId);
        var tdDocente = document.createElement("td");
        tdDocente.textContent = data[i].Docente;
        tr.appendChild(tdDocente);
        var tdMateria = document.createElement("td");
        tdMateria.textContent = data[i].MateriaId;
        tr.appendChild(tdMateria);
        var tdTarea = document.createElement("td");
        tdTarea.textContent = data[i].Trabajo;
        tr.appendChild(tdTarea);
        var tdFecha = document.createElement("td");
        tdFecha.textContent = data[i].FechaEntrega;
        tr.appendChild(tdFecha);
        var tdBtn = document.createElement("td");
        var btn = document.createElement("Button");
        btn.textContent = "Retroalimentacion";
        btn.setAttribute("type", "button");
        btn.classList.add("btn", "btn-outline-primary");
        btn.setAttribute("data-bs-toggle", "modal");
        btn.setAttribute("data-bs-target", "#retroalimentacionModal");
        btn.onclick = function () {
          var fila = this.closest('tr');
          var idFila = fila.getAttribute('id');

          var inputTrabajo = document.getElementById("trabajo");
          inputTrabajo.value = idFila;
        };
        tdBtn.appendChild(btn);
        tr.appendChild(tdBtn);
        tbody.appendChild(tr)
      }
    })
    .catch(error => {
      console.error('There has been a problem with your fetch operation:', error);
    });
}
function resivirDatosCalificaciones() {
  fetch('../FuncionesPHP/TablaCalificaciones.php')
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      var tbody = document.getElementById("calificacionestabla");
      for (let i = 0; i < data.length; i++) {
        var tr = document.createElement("tr");
        var tdId = document.createElement("td");
        tdId.textContent = data[i].Id;
        tr.appendChild(tdId);
        var tdnombre = document.createElement("td");
        tdnombre.textContent = data[i].Nombre;
        tr.appendChild(tdnombre);
        var tdtrabajo = document.createElement("td");
        tdtrabajo.textContent = data[i].Trabajo;
        tr.appendChild(tdtrabajo);
        var tdcalificacion = document.createElement("td");
        tdcalificacion.textContent = parseFloat(data[i].Calificacion.toFixed(1));
        tr.appendChild(tdcalificacion);

        tbody.appendChild(tr)
      }
    })
    .catch(error => {
      console.error('There has been a problem with your fetch operation:', error);
    });
}
function cargarDatos() {
  console.log("Entro a los datos");
  fetch('../FuncionesPHP/ObtenerUsuario.php')
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      var inputUsuario = document.getElementById("nombre");
      inputUsuario.value = data.Nombre;
      inputUsuario.disabled = true;
    })
    .catch(error => {
      console.error('There has been a problem with your fetch operation:', error);
    });
}