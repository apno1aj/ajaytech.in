<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AjayTech.in | Cloud & Systems Portal</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, sans-serif;
        }
        body {
            background: radial-gradient(circle at 20% 20%, #0d2f1f 0%, #04140c 100%);
            color: #f1f5f9;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        header {
            padding: 1.25rem 6%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid rgba(255, 255, 255, 0.08);
            background: rgba(13, 21, 39, 0.7);
            backdrop-filter: blur(12px);
        }
        .brand {
            font-size: 1.5rem;
            font-weight: 800;
            letter-spacing: -0.5px;
            background: linear-gradient(135deg, #38bdf8 0%, #818cf8 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 14px;
            border-radius: 9999px;
            background: rgba(34, 197, 94, 0.12);
            color: #4ade80;
            border: 1px solid rgba(74, 222, 128, 0.25);
            font-size: 0.85rem;
            font-weight: 600;
        }
        .indicator {
            width: 8px;
            height: 8px;
            background: #4ade80;
            border-radius: 50%;
            box-shadow: 0 0 10px #4ade80;
        }
        main {
            flex: 1;
            padding: 4.5rem 6%;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        h1 {
            font-size: 3.2rem;
            font-weight: 800;
            letter-spacing: -1px;
            margin-bottom: 1rem;
        }
        h1 span {
            color: #38bdf8;
        }
        p.desc {
            max-width: 650px;
            font-size: 1.15rem;
            line-height: 1.6;
            color: #94a3b8;
            margin-bottom: 3.5rem;
        }
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.75rem;
            width: 100%;
            max-width: 1050px;
        }
        .card {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.08);
            padding: 2rem;
            border-radius: 14px;
            text-align: left;
            transition: all 0.25s ease;
        }
        .card:hover {
            transform: translateY(-4px);
            border-color: #38bdf8;
            background: rgba(255, 255, 255, 0.05);
        }
        .card-tag {
            font-size: 0.75rem;
            font-weight: 700;
            color: #38bdf8;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 0.75rem;
        }
        .card h3 {
            font-size: 1.25rem;
            color: #ffffff;
            margin-bottom: 0.5rem;
        }
        .card p {
            color: #94a3b8;
            font-size: 0.95rem;
            line-height: 1.5;
        }
        footer {
            padding: 1.5rem;
            text-align: center;
            font-size: 0.85rem;
            color: #64748b;
            border-top: 1px solid rgba(255, 255, 255, 0.05);
        }
    </style>
</head>
<body>
    <header>
        <div class="brand">ajaytech.in</div>
        <div class="badge"><span class="indicator"></span> Production Ready</div>
    </header>

    <main>
        <h1>Engineered with <span>Jenkins & Tomcat</span></h1>
        <p class="desc">Automated CI pipeline pulling source code, inspecting quality with SonarQube, and hosting dynamically via Apache Tomcat servlet container.</p>

        <div class="grid">
            <div class="card">
                <div class="card-tag">CI Engine</div>
                <h3>Jenkins Pipeline</h3>
                <p>Monitors <code>main</code> branch commits, automates code builds, runs test suites, and archives the WAR artifact.</p>
            </div>
            <div class="card">
                <div class="card-tag">Quality Gate</div>
                <h3>SonarQube Scanner</h3>
                <p>Scans the Maven target outputs for bugs, security vulnerabilities, and code smell thresholds before deployment.</p>
            </div>
            <div class="card">
                <div class="card-tag">Web Container</div>
                <h3>Apache Tomcat</h3>
                <p>Serves the dynamic <code>ajaytech.war</code> archive with full context mappings on port 8080.</p>
            </div>
        </div>
    </main>

    <footer>
        Deployed automatically via Jenkins &bull; Domain Context: <code>/ajaytech</code>
    </footer>
</body>
</html>
