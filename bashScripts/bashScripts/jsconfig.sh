echo '{
    "compilerOptions": {
        "target": "es6",
        "module": "commonjs",
        "allowJs": true,
        "checkJs": false,
        "maxNodeModuleJsDepth": 1,
        "esModuleInterop": true,
        "forceConsistentCasingInFileNames": true,
        "strict": false,
        "skipLibCheck": true,
        "moduleResolution": "node",
        "noUnusedLocals": false,
        "noUnusedParameters": false
    },
    "exclude": [
        "node_modules"
    ]
}' > jsconfig.json
