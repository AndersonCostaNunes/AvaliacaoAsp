using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AvaliacaoAsp.Code
{
    public class Aplicacao
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [MaxLength(50)]
        public string Nome { get; set; }
        [MaxLength(250)]
        public string Descricao { get; set; }
       
        public DateTime Data { get; set; }
        [Required]
        public Status Status { get; set; }
        [MaxLength(50)]
        public string Email { get; set; }

        public Aplicacao(string nome, string descricao, DateTime data, Status status, string email)
        {
            Nome = nome;
            Descricao = descricao;
            Data = data;
            Status = status;
            Email = email;
        }

        public Aplicacao()
        {
        }
    }
}