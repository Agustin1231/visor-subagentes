# Visor de subagentes

Página que muestra en tiempo real la orquestación de un agente principal y sus
subagentes especialistas: cuando llega una solicitud, el orquestador (centro)
delega a un especialista, se anima la conexión y se registra cada paso en el
panel de actividad. Tema claro y oscuro.

## Uso

Es una página estática autocontenida (`index.html`). Se controla desde JS:

```js
viz.request('llega una solicitud');     // el orquestador recibe
viz.delegate('diagramas', 'arma esto'); // delega a un especialista
viz.agentMsg('diagramas', 'trabajando');
viz.done('diagramas', 'listo');         // especialista termina
viz.deliver('entregado');               // el orquestador responde
```

La información mostrada en el panel de actividad se enmascara con asteriscos
para no exponer datos sensibles (correos, rutas, tokens, identificadores).

## Despliegue

Imagen estática servida con nginx:

```bash
docker build -t visor-subagentes .
docker run -p 8080:80 visor-subagentes
```
