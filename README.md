## Install Typescript and Javascript debugger
up-to-date instruction are here https://github.com/mxsdev/nvim-dap-vscode-js

download the repository microsoft/vscode-js-debug in lvim/debuggers

```sh
git clone https://github.com/microsoft/vscode-js-debug
cd vscode-js-debug
npm install --legacy-peer-deps
npx gulp vsDebugServerBundle
mv dist out
```

for more configs check the file lvim/lua/languages/js-ts.lua
