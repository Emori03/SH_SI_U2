resivirDatos();
resivirDatosCalificaciones();
ponerAlumnos();
function resivirDatos() {
  fetch('../FuncionesPHP/Retroalimentacion.php')
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      var table = document.getElementById("trabajosTable");
      var trabajo = 0;
      var primera = true;
      for (let i = 0; i < data.length; i++) {
        if (primera) {
          var thead = document.createElement("thead");
          thead.className = "table-dark";
          var trhead = document.createElement("tr");
          var tdTrabajo = document.createElement("td");
          tdTrabajo.textContent = data[i].Trabajo;
          tdTrabajo.setAttribute("colspan", "2");
          trhead.appendChild(tdTrabajo);
          thead.appendChild(trhead);
          table.appendChild(thead);

          var tbody = document.createElement("tbody");
          var tr = document.createElement("tr");
          tr.setAttribute("id", data[i].TrabajoId);
          var tdAlumno = document.createElement("td");
          tdAlumno.textContent = data[i].Nombre;
          tr.appendChild(tdAlumno);
          var tdCometario = document.createElement("td");
          tdCometario.textContent = data[i].Comentario;
          tr.appendChild(tdCometario);
          tbody.appendChild(tr);
          table.appendChild(tbody);

          trabajo = data[i].TrabajoId;
          primera = false;
        }
        if (trabajo != data[i].TrabajoId) {
          var thead = document.createElement("thead");
          thead.className = "table-dark";
          var trhead = document.createElement("tr");
          var tdTrabajo = document.createElement("td");
          tdTrabajo.textContent = data[i].Trabajo;
          tdTrabajo.setAttribute("colspan", "2");
          trhead.appendChild(tdTrabajo);
          thead.appendChild(trhead);
          table.appendChild(thead);

          var tbody = document.createElement("tbody");
          var tr = document.createElement("tr");
          tr.setAttribute("id", data[i].TrabajoId);
          var tdAlumno = document.createElement("td");
          tdAlumno.textContent = data[i].Nombre;
          tr.appendChild(tdAlumno);
          var tdCometario = document.createElement("td");
          tdCometario.textContent = data[i].comentario;
          tr.appendChild(tdCometario);
          table.appendChild(tbody);
        } else {
          var tr = document.createElement("tr");
          tr.setAttribute("id", data[i].TrabajoId);
          var tdAlumno = document.createElement("td");
          tdAlumno.textContent = data[i].Nombre;
          tr.appendChild(tdAlumno);
          var tdCometario = document.createElement("td");
          tdCometario.textContent = data[i].comentario;
          tr.appendChild(tdCometario);
          table.appendChild(tbody);
        }
        
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
function ponerAlumnos() {
  fetch('../FuncionesPHP/ObtenerAlumnos.php')
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
      var select = document.getElementById("nombre");

      for (let i = 0; i < data.length; i++) {
        var option = document.createElement("option");
        option.value = data[i].UsuarioID;
        option.textContent = data[i].Nombre;

        select.appendChild(option);
      }
    })
    .catch(error => {
      console.error('There has been a problem with your fetch operation:', error);
    });
}