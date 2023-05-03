const JSZip = require('jszip');
const fs = require('fs'); 

fs.readFile('./input/input.zip', async (err, data) => {
    if (err) throw err;
    const zip = await JSZip.loadAsync(data);

    const myZip = zip.generateAsync({type:"nodebuffer"})
    .then(content => {
        fs.writeFile("results/result.zip", content, err => {
            if (err) {
                console.log(err);
            } else {
                console.log("success");
            }
        })
    });
});
 