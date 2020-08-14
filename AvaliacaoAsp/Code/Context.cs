using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace AvaliacaoAsp.Code
{
    public class Context : DbContext
    {
        public Context() : base("DbAplication") { }
        public DbSet<Aplicacao> Aplicacoes { get; set; }
    }
}