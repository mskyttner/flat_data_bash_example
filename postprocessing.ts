import 'https://deno.land/x/flat@0.0.10/mod.ts'

// Forwards the execution to the bash script
const Rscript_run = Deno.run({
    cmd: ['./postprocessing.R'].concat(Deno.args),
});

await Rscript_run.status();
