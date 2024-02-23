resivirDatos();
function resivirDatos() {
    fetch('../FuncionesPHP/Trabajos.php')
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
    })
    .then(data => {
        console.log(data)
        var tbody = document.getElementById("trabajos");
        for (let i = 0; i < data.length; i++) {
            console.log(data[i].DocenteId)
            var tr = document.createElement("tr");
            var tdDocente = document.createElement("td");
            tdDocente.textContent = data[i].DocenteId;
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
            var a = document.createElement("a");
            a.setAttribute("href", "../FuncionesPHP/retro.php");
            a.textContent = "Deja tu retroalimentacion";
            btn.appendChild(a);
            tdBtn.appendChild(btn);
            tr.appendChild(tdBtn);
            tbody.appendChild(tr)
        }
    })
    .catch(error => {
      console.error('There has been a problem with your fetch operation:', error);
    });
  }