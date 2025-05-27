function auto_uv_venv --on-variable PWD
    if test -e pyproject.toml -o -e uv.lock
        if not test -e .venv
            echo "🔧 Creating virtual environment with uv..."
            uv venv
        end
        if test -e .venv/bin/activate.fish
            echo "🐍 Activating .venv"
            source .venv/bin/activate.fish
        end
    end
end
