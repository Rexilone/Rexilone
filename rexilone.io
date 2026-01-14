<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rexilone - Developer & System Enthusiast</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            background-attachment: fixed;
            color: #fff;
            overflow-x: hidden;
        }

        .stars {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 0;
        }

        .star {
            position: absolute;
            background: white;
            border-radius: 50%;
            animation: twinkle 3s infinite;
        }

        @keyframes twinkle {
            0%, 100% { opacity: 0.3; }
            50% { opacity: 1; }
        }

        .glass {
            background: rgba(30, 20, 60, 0.3);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(147, 51, 234, 0.3);
            border-radius: 20px;
            box-shadow: 0 8px 32px 0 rgba(147, 51, 234, 0.2);
        }

        .glow {
            box-shadow: 0 0 20px rgba(147, 51, 234, 0.5);
            transition: all 0.3s ease;
        }

        .glow:hover {
            box-shadow: 0 0 30px rgba(147, 51, 234, 0.8);
            transform: translateY(-5px);
        }

        .fade-in {
            animation: fadeIn 1s ease-out forwards;
            opacity: 0;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }

        .slide-up {
            animation: slideUp 0.8s ease-out forwards;
            opacity: 0;
            transform: translateY(30px);
        }

        @keyframes slideUp {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .gradient-text {
            background: linear-gradient(45deg, #a855f7, #ec4899);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .link-hover {
            position: relative;
            transition: all 0.3s ease;
        }

        .link-hover::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: linear-gradient(45deg, #a855f7, #ec4899);
            transition: width 0.3s ease;
        }

        .link-hover:hover::after {
            width: 100%;
        }

        .device-card {
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .device-card:hover {
            transform: scale(1.05);
        }

        .skill-badge {
            background: linear-gradient(135deg, rgba(147, 51, 234, 0.3), rgba(168, 85, 247, 0.3));
            border: 1px solid rgba(147, 51, 234, 0.5);
            transition: all 0.3s ease;
        }

        .skill-badge:hover {
            background: linear-gradient(135deg, rgba(147, 51, 234, 0.5), rgba(168, 85, 247, 0.5));
            transform: translateY(-3px);
        }

        .project-card {
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
        }

        .project-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(147, 51, 234, 0.3), transparent);
            transition: left 0.5s ease;
        }

        .project-card:hover::before {
            left: 100%;
        }

        .contact-btn {
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .contact-btn::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            background: rgba(168, 85, 247, 0.3);
            border-radius: 50%;
            transform: translate(-50%, -50%);
            transition: width 0.5s ease, height 0.5s ease;
        }

        .contact-btn:hover::before {
            width: 300px;
            height: 300px;
        }

        .contact-btn span {
            position: relative;
            z-index: 1;
        }
    </style>
</head>
<body>
    <div class="stars" id="stars"></div>

    <div class="relative z-10">
        <!-- Hero Section -->
        <section class="min-h-screen flex items-center justify-center px-4 py-20">
            <div class="text-center fade-in">
                <h1 class="text-6xl md:text-8xl font-bold mb-4 gradient-text" style="animation-delay: 0.2s;">
                    Rexilone
                </h1>
                <p class="text-2xl md:text-3xl text-purple-300 mb-6 slide-up" style="animation-delay: 0.4s;">
                    Nick, 19 y.o.
                </p>
                <p class="text-lg md:text-xl text-gray-300 max-w-2xl mx-auto slide-up" style="animation-delay: 0.6s;">
                    Developer & System Enthusiast
                </p>
                <div class="mt-10 slide-up" style="animation-delay: 0.8s;">
                    <a href="#about" class="inline-block px-8 py-3 bg-purple-600 hover:bg-purple-700 rounded-full font-semibold transition-all duration-300 glow">
                        Explore More
                    </a>
                </div>
            </div>
        </section>

        <!-- Devices Section -->
        <section id="devices" class="container mx-auto px-4 py-20">
            <h2 class="text-4xl md:text-5xl font-bold text-center mb-12 gradient-text">Devices</h2>
            <div class="grid md:grid-cols-3 gap-6 max-w-5xl mx-auto">
                <div class="glass p-6 device-card">
                    <h3 class="text-xl font-bold text-purple-300 mb-3">Poco X4 GT</h3>
                    <p class="text-gray-300 mb-2">8/256 GB</p>
                    <p class="text-sm text-purple-400">Rooted • Main Device</p>
                </div>
                <div class="glass p-6 device-card">
                    <h3 class="text-xl font-bold text-purple-300 mb-3">Redmi Note 5</h3>
                    <p class="text-gray-300 mb-2">Rooted</p>
                    <p class="text-sm text-purple-400">Secondary Device</p>
                </div>
                <div class="glass p-6 device-card">
                    <h3 class="text-xl font-bold text-purple-300 mb-3">Poco X3 PRO</h3>
                    <p class="text-gray-300 mb-2">Ubuntu Server</p>
                    <p class="text-sm text-purple-400">Server Setup</p>
                </div>
            </div>
        </section>

        <!-- Development Skills Section -->
        <section id="development" class="container mx-auto px-4 py-20">
            <h2 class="text-4xl md:text-5xl font-bold text-center mb-12 gradient-text">Development</h2>
            <div class="max-w-4xl mx-auto">
                <div class="glass p-8">
                    <div class="grid md:grid-cols-2 gap-4">
                        <div class="skill-badge p-4 rounded-lg">
                            <h3 class="text-lg font-semibold text-purple-200 mb-2">🔧 Custom ROM Flashing</h3>
                            <p class="text-sm text-gray-300">Expert in flashing and configuring custom ROMs</p>
                        </div>
                        <div class="skill-badge p-4 rounded-lg">
                            <h3 class="text-lg font-semibold text-purple-200 mb-2">⚙️ System-level Customizations</h3>
                            <p class="text-sm text-gray-300">Deep system modifications and optimizations</p>
                        </div>
                        <div class="skill-badge p-4 rounded-lg">
                            <h3 class="text-lg font-semibold text-purple-200 mb-2">📜 Scripts & Automation</h3>
                            <p class="text-sm text-gray-300">Building automation tools and utilities</p>
                        </div>
                        <div class="skill-badge p-4 rounded-lg">
                            <h3 class="text-lg font-semibold text-purple-200 mb-2">🛠️ Module Development</h3>
                            <p class="text-sm text-gray-300">Magisk & KernelSU module creation</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Systems Section -->
        <section id="systems" class="container mx-auto px-4 py-20">
            <h2 class="text-4xl md:text-5xl font-bold text-center mb-12 gradient-text">Systems</h2>
            <div class="max-w-4xl mx-auto grid md:grid-cols-2 gap-8">
                <div class="glass p-8">
                    <h3 class="text-2xl font-bold text-purple-300 mb-4">📱 Mobile</h3>
                    <div class="space-y-3">
                        <div class="flex items-center space-x-3">
                            <div class="w-2 h-2 bg-purple-500 rounded-full"></div>
                            <span class="text-gray-200">HyperOS (Xiaomi.eu)</span>
                        </div>
                        <div class="flex items-center space-x-3">
                            <div class="w-2 h-2 bg-pink-500 rounded-full"></div>
                            <span class="text-gray-200">RisingOS (Latest)</span>
                        </div>
                    </div>
                </div>
                <div class="glass p-8">
                    <h3 class="text-2xl font-bold text-purple-300 mb-4">💻 Desktop</h3>
                    <div class="space-y-3">
                        <div class="flex items-center space-x-3">
                            <div class="w-2 h-2 bg-purple-500 rounded-full"></div>
                            <span class="text-gray-200">NixOS (Main Workstation)</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Projects Section -->
        <section id="projects" class="container mx-auto px-4 py-20">
            <h2 class="text-4xl md:text-5xl font-bold text-center mb-12 gradient-text">Projects</h2>
            <div class="max-w-4xl mx-auto grid md:grid-cols-2 gap-6">
                <a href="https://github.com/Rexilone/NixOS-Rosa" target="_blank" class="glass p-8 project-card block">
                    <h3 class="text-2xl font-bold text-purple-300 mb-3">NixOS Rice (Rosa)</h3>
                    <p class="text-gray-300 mb-4">Customized NixOS configuration with beautiful aesthetics and optimized workflow</p>
                    <div class="flex items-center text-purple-400">
                        <span class="mr-2">View on GitHub</span>
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"></path>
                        </svg>
                    </div>
                </a>
                <a href="https://github.com/Rexilone/RemoteBackup" target="_blank" class="glass p-8 project-card block">
                    <h3 class="text-2xl font-bold text-purple-300 mb-3">RemoteBackup</h3>
                    <p class="text-gray-300 mb-4">Automated backup solution for remote systems with secure storage and easy restoration</p>
                    <div class="flex items-center text-purple-400">
                        <span class="mr-2">View on GitHub</span>
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"></path>
                        </svg>
                    </div>
                </a>
            </div>
        </section>

        <!-- Contacts Section -->
        <section id="contacts" class="container mx-auto px-4 py-20 pb-32">
            <h2 class="text-4xl md:text-5xl font-bold text-center mb-12 gradient-text">Contacts</h2>
            <div class="max-w-2xl mx-auto">
                <div class="glass p-10 text-center">
                    <p class="text-gray-300 mb-8 text-lg">Let's connect and collaborate!</p>
                    <div class="flex flex-col sm:flex-row gap-4 justify-center">
                        <a href="https://t.me/Rexilone" target="_blank" class="contact-btn glass px-8 py-4 rounded-lg font-semibold flex items-center justify-center space-x-3">
                            <span>
                                <svg class="w-6 h-6 inline" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M12 0C5.373 0 0 5.373 0 12s5.373 12 12 12 12-5.373 12-12S18.627 0 12 0zm5.894 8.221l-1.97 9.28c-.145.658-.537.818-1.084.508l-3-2.21-1.446 1.394c-.14.18-.357.295-.6.295-.002 0-.003 0-.005 0l.213-3.054 5.56-5.022c.24-.213-.054-.334-.373-.121l-6.869 4.326-2.96-.924c-.64-.203-.658-.64.135-.954l11.566-4.458c.538-.196 1.006.128.832.941z"/>
                                </svg>
                                Telegram
                            </span>
                        </a>
                        <a href="https://github.com/Rexilone" target="_blank" class="contact-btn glass px-8 py-4 rounded-lg font-semibold flex items-center justify-center space-x-3">
                            <span>
                                <svg class="w-6 h-6 inline" fill="currentColor" viewBox="0 0 24 24">
                                    <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
                                </svg>
                                GitHub
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="text-center py-8 text-gray-400">
            <p>© 2024 Rexilone. Made with 💜</p>
        </footer>
    </div>

    <script>
        // Generate stars
        const starsContainer = document.getElementById('stars');
        for (let i = 0; i < 100; i++) {
            const star = document.createElement('div');
            star.className = 'star';
            star.style.width = Math.random() * 3 + 'px';
            star.style.height = star.style.width;
            star.style.left = Math.random() * 100 + '%';
            star.style.top = Math.random() * 100 + '%';
            star.style.animationDelay = Math.random() * 3 + 's';
            starsContainer.appendChild(star);
        }

        // Smooth scrolling
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth'
                    });
                }
            });
        });

        // Intersection Observer for animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -100px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, observerOptions);

        // Observe all glass elements
        document.querySelectorAll('.glass').forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(30px)';
            el.style.transition = 'all 0.8s ease-out';
            observer.observe(el);
        });

        // Parallax effect on mouse move
        document.addEventListener('mousemove', (e) => {
            const mouseX = e.clientX / window.innerWidth;
            const mouseY = e.clientY / window.innerHeight;
            
            document.querySelectorAll('.glass').forEach((el, index) => {
                const speed = (index + 1) * 0.5;
                const x = (mouseX - 0.5) * speed;
                const y = (mouseY - 0.5) * speed;
                el.style.transform = `translate(${x}px, ${y}px)`;
            });
        });
    </script>
</body>
</html>
