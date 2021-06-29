const intEditor = () => {
    const game5 = document.getElementById('game-5');
    if(game5){
        const htmlEditor = CodeMirror(document.querySelector(".editor .code .html-code"), {
            lineNumbers: true,
            tabsize:4,
            theme: "dracula",
            placeholder:"HTML code goes here...",
            mode:"xml"
        });
        const cssEditor = CodeMirror(document.querySelector(".editor .code .css-code"), {
            lineNumbers: true,
            tabsize:4,
            theme: "dracula",
            placeholder:"CSS code goes here...",
            mode:"css"
        });
        const jsEditor = CodeMirror(document.querySelector(".editor .code .js-code"), {
            lineNumbers: true,
            tabsize:4,
            theme: "dracula",
            placeholder:"Ton code Javascript...",
            mode:"javascript"
        });
        const runBtn = document.getElementById('run-btn');
        const resetBtn = document.getElementById('reset-btn');
        let previewWindow = document.getElementById('preview-window').contentWindow.document;
        let codehtml = `<html>
        <head><title></title></head>
        <body>
        <h1>Hello world.</h1>
        <img src="https://source.unsplash.com/random/300x300">
        </body>
        </html>`;
        // let codecss = `<style></style>`

        previewWindow.open();
        previewWindow.write(codehtml);
        previewWindow.close();
        runBtn.addEventListener('click', ()=> {
            // let htmlCode = htmlEditor.getValue();
            // let cssCode = "<style>" + cssEditor.getValue() + "</style>";
            let jsCode = "<scri" + "pt>" + jsEditor.getValue() + "</scri" + "pt>";
            previewWindow.write(codehtml+jsCode);
            previewWindow.close();
        })
        resetBtn.addEventListener('click', ()=> {
            // let jsCode = "<scri" + "pt>" + "</scri" + "pt>";
            // document.getElementById('preview-window').contentDocument.location.reload(true);
            // previewWindow.open();
            // previewWindow.write(codehtml);
            // previewWindow.close();
            document.location.reload(true);
        })
    }
}

export {intEditor}