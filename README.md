**One time,** you will need to set up a conda environment with R so that you have R available to run. 
After you have done this once, you can simply activate your existing environment as described below.

### Do once: set up conda environment

After logging in to Hellgate, run

```
module load conda
```

so that the software `conda` is available to you.

Now you will create a conda environment to install R in. This one is called `R_env`; you could choose a different name if you want.

```
conda create -n R_env
```

You will then need to initiate conda so you can work with your new environment.

```
conda init bash
```

Now activate your new environment:

```
conda activate R_env
```

and install R:

```
conda install -c conda-forge r-base
```

(Lucy note: is this overkill? I just took it from here: https://www.biostars.org/p/450316/)

Once this finishes, you should be able to open an interactive R session by running

```
R
```

and you can install devtools, stringdb, and our package as described on our package README. 
(Lucy note: I'm not sure how R manages these installations...they seem to persist across R sessions)

### Activate environment and submit job

If you aren't already using the `R_env`, activate it:

```
conda activate R_env
```

Now you can run

```
sbatch submit_job.sh 
```

and check the status of your job with

```
squeue -u $USER
```

Output from your script will go to `job_output_<jobid>.log` and errors will go to `job_error_<jobid>.log`.
