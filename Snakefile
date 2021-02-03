rule all:
    input:
        "mtcars.sqlite3",
        "mtcars.png"

rule snakemake_sqlite3:
    output:
        "mtcars.sqlite3"
    script:
        "sqlite3_script.R"

rule snakemake_plot:
    input:
        "mtcars.sqlite3"
    output:
        "mtcars.png"
    script:
        "plots_script.py"
