using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AvaliacaoAsp.Code
{
    public enum Status : byte
    {
        Bloqueado = 1,
        Desenvolvimento = 2,
        Testes = 3,
        Aprovado = 4
    }
}