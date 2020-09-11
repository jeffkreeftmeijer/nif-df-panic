use rustler::{Encoder, Env, Error, Term};
//use probes::*;

mod atoms {
    rustler::rustler_atoms! {
        atom ok;
        //atom error;
        //atom __true__ = "true";
        //atom __false__ = "false";
    }
}

rustler::rustler_export_nifs! {
    "Elixir.DiskUsage",
    [
        ("add", 2, add),
        ("read", 0, read)
    ],
    None
}

fn add<'a>(env: Env<'a>, args: &[Term<'a>]) -> Result<Term<'a>, Error> {
    let num1: i64 = args[0].decode()?;
    let num2: i64 = args[1].decode()?;

    Ok((atoms::ok(), num1 + num2).encode(env))
}

fn read<'a>(env: Env<'a>, _args: &[Term<'a>]) -> Result<Term<'a>, Error> {
    Ok(atoms::ok().encode(env))
}
