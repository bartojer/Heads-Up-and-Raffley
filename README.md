# Phoenix Learning Projects

This repository contains Phoenix/Elixir learning projects from the Pragmatic Studio Phoenix course.

## Projects

- **heads_up**: A Phoenix web application for incident reporting and management
- **raffley**: A raffle ticket estimation application using Phoenix LiveView

## Prerequisites

### System Requirements

**Note for Windows users:** While Phoenix can run natively on Windows, WSL (Windows Subsystem for Linux) is strongly recommended for a smoother development experience and better compatibility with Elixir ecosystem tools.

### Required Software

1. **Elixir** (version 1.12+)
2. **Erlang/OTP** (version 24+)  
3. **PostgreSQL** (version 12+)
4. **Node.js** (version 16+) - for asset compilation

### Installation

#### macOS/Linux
```bash
# Install Elixir and Erlang
# macOS with Homebrew:
brew install elixir

# Ubuntu/Debian:
sudo apt update
sudo apt install elixir erlang-dev erlang-xmerl

# Install PostgreSQL
# macOS:
brew install postgresql
brew services start postgresql

# Ubuntu/Debian:
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql

# Install Node.js
# Visit https://nodejs.org or use a version manager like nvm
```

#### Windows

**Option 1: WSL (Recommended)**
1. Install WSL2 with Ubuntu
2. Follow the Linux installation steps above within WSL

**Option 2: Native Windows**
1. Install Elixir from [elixir-lang.org](https://elixir-lang.org/install.html#windows)
2. Install PostgreSQL from [postgresql.org](https://www.postgresql.org/download/windows/)
3. Install Node.js from [nodejs.org](https://nodejs.org/)
4. Ensure you have a C compiler (Visual Studio Build Tools) for packages with native dependencies

### Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/bartojer/Heads-Up-and-Raffley.git
   cd Heads-Up-and-Raffley
   ```

2. For each project (heads_up and raffley):
   ```bash
   cd heads_up  # or cd raffley
   
   # Install dependencies
   mix deps.get
   
   # Create and migrate database
   mix ecto.create
   mix ecto.migrate
   
   # Install Node.js dependencies for assets
   cd assets && npm install && cd ..
   
   # Start the Phoenix server
   mix phx.server
   ```

3. Visit [`localhost:4000`](http://localhost:4000) in your browser

### Troubleshooting

- **Database connection issues**: Ensure PostgreSQL is running and you have proper permissions
- **Asset compilation errors**: Make sure Node.js is installed and run `npm install` in the `assets/` directory
- **Port already in use**: The default Phoenix port is 4000. Stop other Phoenix servers or change the port in `config/dev.exs`

### Course Materials

This repository excludes the `pragstudio-phoenix-code/` directory containing course materials to keep the repo focused on personal implementations.

## Learning Progress

This repository tracks progress through the Pragmatic Studio Phoenix course, implementing concepts like:
- Phoenix controllers and views
- LiveView real-time interfaces
- Ecto database interactions
- Form handling and validation
- Component architecture