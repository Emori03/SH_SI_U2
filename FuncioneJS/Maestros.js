resivirDatosCalificaciones();
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
            tdcalificacion.textContent = data[i].Calificacion;
            tr.appendChild(tdcalificacion);
            
            tbody.appendChild(tr)
        }
    })
    .catch(error => {
      console.error('There has been a problem with your fetch operation:', error);
    });
  }