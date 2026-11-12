# Masterbatch Lead Gen 🎨 Generación de clientes en el extranjero

Un **Skill** de IA para la generación de clientes en el extranjero en la industria del **masterbatch**. Convierte el ciclo de ventas de exportación "encontrar → calificar → escribir → dar seguimiento" en una metodología reutilizable + biblioteca de prompts que convierte a tu asistente de IA en un equipo de comercio exterior 24/7.

> **Esto es un Skill de metodología + prompts + conocimiento, no una aplicación.** Funciona en cualquier asistente de IA compatible con Skills (WorkBuddy, Claude, Cursor, etc.) y reutiliza la búsqueda web, lectura/escritura de archivos y programación integradas del asistente — sin backend, base de datos ni aplicación de escritorio.

🌐 **Idiomas**: [English](README.md) · [简体中文](README.zh-CN.md) · [Tiếng Việt](README.vi.md) · [Türkçe](README.tr.md) · [Español](README.es.md)

## ¿Para quién es?

Fabricantes de:
- **Masterbatch de color a medida**
- **Igualación de color / muestras** (muestra física / Pantone / RAL)
- **Masterbatch retardante de llama**

Mercados objetivo: Sudeste Asiático (Vietnam, Tailandia, Indonesia), Medio Oriente (Turquía, Arabia Saudita), América Latina (Brasil, México), Europa...

## Qué hace

Un ciclo completo de generación de clientes, expresado como "roles" de agente:

| Rol | Tarea |
|---|---|
| 🎯 Investigación de mercado | Análisis de país, estrategia, palabras clave locales |
| 🗺️ Extracción de mapas | Extraer empresas por país vía Google Places API |
| 🔍 Prospección | Descubrir empresas extranjeras por búsqueda web |
| 📄 Investigación de sitio web | Extraer info pública, correos, pistas de compradores |
| ✍️ Redacción | Redactar correos / WhatsApp / LinkedIn multilingües |
| 🧮 Evaluación de clientes | Puntuar y clasificar (A/B/C) |
| 👔 Gerente general | Resumir, alertar riesgos, revisión de cumplimiento |

```
① Investigación → ② Extracción Google Maps → ③ Descubrimiento
  → ④ Análisis de sitio → ⑤ Puntuación → ⑥ Borrador de correo
  → ⑦ Contacto multicanal → ⑧ Seguimiento y auditoría
```

> **Automatización pragmática**: la IA hace todo el trabajo pesado (extraer, filtrar, escribir, dar seguimiento, auditar), pero **los envíos salientes (correo/WhatsApp/LinkedIn) siempre los hace manualmente el humano** — así tus cuentas están a salvo de bloqueos.

## Inicio rápido

1. **Instala** el Skill (ver [Instalación](#instalación)).
2. Ejecuta un ciclo completo:

```
Ejecuta un ciclo completo de generación de clientes masterbatch para Vietnam:
productos = masterbatch de color a medida + retardante de llama.
1. Investigación de mercado (palabras clave en vietnamita)
2. Encuentra 20 procesadores de plástico
3. Puntúa y clasifica
4. Redacta correos en vietnamita para los 5 mejores
5. Compila los resultados en un CSV local
```

## Instalación

### WorkBuddy (recomendado)

```bash
git clone https://github.com/<your-org>/masterbatch-lead-gen.git
cp -r masterbatch-lead-gen ~/.workbuddy/skills/masterbatch-lead-gen
```

Luego di en WorkBuddy: *"Usa el skill masterbatch para encontrar clientes vietnamitas"*.

### Claude Desktop / Cursor / otros asistentes

Copia `SKILL.md` y `references/` a la carpeta de skills de tu asistente, o pega el contenido de `SKILL.md` en la conversación como instrucción.

### Script de instalación en una línea

```bash
curl -fsSL https://raw.githubusercontent.com/<your-org>/masterbatch-lead-gen/main/install.sh | bash
```

## Seguridad (no negociable)

- **Nunca inventes** nombres de empresa, URLs, correos o certificaciones.
- **Los envíos salientes nunca se automatizan** — correo, WhatsApp y LinkedIn los envía el humano; la IA solo prepara el texto.
- **Sin automatización no oficial de WhatsApp / scraping de LinkedIn** (bloqueo de cuenta).
- **Los datos de clientes permanecen locales**, nunca se suben a un repo público.
- **Idioma local primero**.

## Licencia

[MIT](LICENSE)
