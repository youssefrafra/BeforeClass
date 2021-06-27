const intEditor = () => {
    const game5 = document.getElementById('game-5');
    if(game5){
        const htmlEditor = CodeMirror(document.querySelector(".editor .code .html-code"), {
            lineNumbers: true,
            tabsize:4,
            theme: "dracula",
            mode:"xml"
        });
        const cssEditor = CodeMirror(document.querySelector(".editor .code .css-code"), {
            lineNumbers: true,
            tabsize:4,
            theme: "dracula",
            mode:"css"
        });
        const jsEditor = CodeMirror(document.querySelector(".editor .code .js-code"), {
            lineNumbers: true,
            tabsize:4,
            theme: "dracula",
            mode:"javascript"
        });
        const runBtn = document.getElementById('run-btn');
        runBtn.addEventListener('click', ()=> {
            let htmlCode = htmlEditor.getValue();
            let cssCode = "<style>" + cssEditor.getValue() + "</style>";
            let jsCode = "<scri" + "pt>" + jsEditor.getValue() + "</scri" + "pt>";
            let previewWindow = document.getElementById('preview-window').contentWindow.document;
            previewWindow.write(htmlCode + cssCode + jsCode);
            previewWindow.close();
        })
    }
}

export {intEditor}