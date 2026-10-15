<p align="center">
  <h1 align="center">⚡ Antigravity Web DevKit</h1>
  <p align="center">
    <strong>El kit definitivo de Desarrollo Web, Diseño UI/UX, Motion Graphics y Senior Engineering para Google Antigravity.</strong>
  </p>
  <p align="center">
    <img src="https://img.shields.io/badge/Antigravity-Plugin-blue?style=flat-square" alt="Antigravity">
    <img src="https://img.shields.io/badge/Skills-38%20incluidas-green?style=flat-square" alt="Skills">
    <img src="https://img.shields.io/badge/License-MIT-black?style=flat-square" alt="License">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square" alt="PRs Welcome">
  </p>
</p>

---

## 🚀 ¿Qué es Antigravity Web DevKit?

**Antigravity Web DevKit** es un paquete integral y modular que transforma tu agente de **Google Antigravity** en un equipo senior de desarrollo web de élite. Reúne en un solo repositorio las mejores prácticas de la industria:

1. **Disciplina Senior Dev (Ponytail):** Elimina la sobreingeniería, reduce hasta un 53% de código superfluo y enfoca los esfuerzos en cobertura de tests y seguridad.
2. **Video & Motion Graphics desde Código (HyperFrames):** Renderiza videos, animaciones, overlays y transiciones directamente desde HTML, CSS, timelines y diseños de Figma.
3. **Diseño UI/UX de Alta Gama (Emil Kowalski + UIUX Designer Engine):** 50+ estilos visuales, 97 paletas cromáticas armónicas, 57 combinaciones tipográficas y física de interacción estilo Apple.
4. **Ingeniería Frontend y Rendimiento:** Estándares de Vercel para React y Next.js (cero cascadas async), Tailwind CSS v4 y arquitectura de APIs limpias.
5. **Testing Automatizado E2E:** Suites de pruebas con Playwright en navegadores reales y depuración sistemática.
6. **Conectores MCP Integrados:** Servidores listos para Playwright, Context7 (documentación en tiempo real), 21st.dev (Magic UI) y Supabase.

---

## 📦 Instalación Rápida

### Opción 1: Instalación Global como Plugin (Recomendado)
Para que todas las habilidades estén disponibles en **todos tus proyectos**:

#### Windows (PowerShell):
`powershell
git clone https://github.com/TU-USUARIO/antigravity-web-devkit.git "C:\Users\NGZPA\.gemini\config\plugins\antigravity-web-devkit"
`

#### macOS / Linux:
`ash
git clone https://github.com/TU-USUARIO/antigravity-web-devkit.git ~/.gemini/config/plugins/antigravity-web-devkit
`

---

### Opción 2: Instalación por Proyecto (Carpeta .agents)
Si solo deseas usar este kit dentro de un repositorio de código específico:

`ash
git clone https://github.com/TU-USUARIO/antigravity-web-devkit.git .agents
`

---

### Opción 3: Mediante el Instalador Interactivo
Clona el repositorio y ejecuta el instalador que verificará Node.js y Playwright automáticamente:

* **Windows:**
  `powershell
  .\install.ps1
  `
* **macOS / Linux:**
  `ash
  chmod +x install.sh
  ./install.sh
  `

---

## 🛠️ Servidores MCP Soportados

El archivo mcp_config.template.json incluye la configuración para:

| Servidor | Comando | Función |
| :--- | :--- | :--- |
| **playwright** | 
px @playwright/mcp@latest --headless | Navegación autónoma, scraping, capturas y testing E2E en Chromium real. |
| **context7** | 
px -y @upstash/context7-mcp@latest | Consulta en tiempo real de documentación oficial de librerías modernas. |
| **21st-mcp** | 
px -y @21st-dev/magic@latest | Búsqueda y generación de componentes UI pulidos desde 21st.dev (Magic UI). |
| **supabase** | 
px -y @supabase/mcp-server-supabase@latest | Gestión de bases de datos, consultas SQL, migraciones y edge functions. |

> Para activarlos, copia el contenido de mcp_config.template.json a tu ~/.gemini/config/mcp_config.json e inserta tus claves API si las utilizas.

---

## 📚 Catálogo de Skills Incluidas (38 Habilidades)

### 1. Disciplina & Calidad de Código (Ponytail Suite)
* **ponytail**: Modo senior dev perezoso: la solución más concisa y robusta posible (YAGNI, stdlib primero).
* **ponytail-review**: Auditoría de código, PRs y diffs con mentalidad de ingeniero senior.
* **ponytail-audit**: Escaneo y diagnóstico de deuda técnica y código sobrante.
* **ponytail-debt**: Detección de patrones redundantes o malas prácticas acumuladas.
* **ponytail-gain**: Medición de ahorro de complejidad y líneas reducidas.
* **ponytail-help**: Guía y comandos rápidos del modo Ponytail.

### 2. Video & Motion Graphics (HyperFrames Suite)
* **hyperframes**: Orquestador principal de renderizado de video y animación desde HTML/CSS.
* **hyperframes-core**: Contratos DOM, especificación de atributos data-* y timing.
* **hyperframes-animation**: Animación programática basada en timelines y funciones de easing.
* **hyperframes-keyframes**: Control fino de fotogramas clave y estados reactivos.
* **hyperframes-studio**: Entorno interactivo de inspección, notas visuales y preview.
* **hyperframes-cli**: Herramientas de línea de comandos para compilación y exportación.
* **hyperframes-audio**: Sincronización de pistas de audio y efectos.
* **emotion-to-hyperframes**: Migración y portabilidad desde proyectos Remotion a HTML nativo.
* **motion-graphics**: Creación de overlays dinámicos, títulos y banners animados.
* **igma**: Integración para transformar vectores y frames de Figma en composiciones web animadas.

### 3. Ingeniería de Interacción & Animación (Emil Kowalski)
* **nimate**: Creación de animaciones web fluidas desde cero (curvas, físicas, salidas limpias).
* **nimation-vocabulary**: Glosario inverso para nombrar efectos visuales con terminología técnica precisa.
* **pple-design**: Principios de diseño táctil, física de resortes y materiales de Apple para la web.
* **sk-sonner**: Guía experta para la librería de notificaciones Sonner en React.
* **emil-design-eng**: Filosofía de ingeniería de diseño y cuidado del microdetalle.
* **ind-animation-opportunities**: Búsqueda asistida de momentos donde la animación aporta valor.
* **improve-animations**: Auditoría y plan de mejora de animaciones existentes.
* **pick-ui-library**: Selección fundamentada de librerías para tareas específicas de frontend.
* **prototype**: Generación rápida de variantes alternativas de un componente UI.
* **eview-animations**: Revisión de código de animación con criterios de alta exigencia.

### 4. Sistema de Diseño UI/UX
* **uiux-designer**: Motor completo con más de 50 estilos visuales, 97 paletas cromáticas probadas, 57 combinaciones de fuentes y directrices para React, Next.js, Vue, Tailwind, Flutter y SwiftUI.

### 5. Desarrollo Web & Rendimiento
* **
extjs-react-expert**: Optimización de rendimiento Next.js según estándares oficiales de Vercel.
* **	ailwind-patterns**: Patrones modernos para Tailwind CSS v4 y variables CSS nativas.
* **rontend-design**: Principios de composición visual, espaciado armónico y tipografía.
* **web-design-guidelines**: Auditoría de cumplimiento de estándares web y accesibilidad (WCAG).
* **webapp-testing**: Testing automatizado E2E con Playwright.
* **performance-profiling**: Auditoría Core Web Vitals, métricas de carga y análisis de cuellos de botella.
* **pi-patterns**: Arquitectura y diseño de APIs robustas (REST, GraphQL, tRPC).
* **clean-code**: Código conciso, legible y sin sobreingeniería.
* **systematic-debugging**: Metodología de depuración de errores en 4 fases basada en evidencia.

---

## 🎯 Workflows Guiados

Ejecuta flujos paso a paso escribiendo /workflow <nombre>:
* **ui-ux-pro-max.md**: Flujo completo de diseño y pulido visual de componentes.
* **	est.md**: Protocolo de testing automatizado y verificación funcional.
* **debug.md**: Localización sistemática de bugs y regresiones.
* **preview.md**: Previsualización interactiva de interfaces.

---

## 📄 Licencia

Distribuido bajo la Licencia **MIT**. Consulta LICENSE para más información.
