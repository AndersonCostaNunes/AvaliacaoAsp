using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AvaliacaoAsp.Code
{
    public class Aplicacao
    {   [Key]
        public int Id { get; set; }
        [Required]
        [MaxLength(50)]
        public string Name { get; set; }
        [MaxLength(250)]
        public string Descricao { get; set; }
        [Required]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}")]
        public DateTime Data { get; set; }
        [Required]
        public Status Status { get; set; }
        [EmailAddress]
        [MaxLength(50)]
        public string Email { get; set; }

        public Aplicacao(int id, string name, string descricao, DateTime data, Status status, string email)
        {
            Id = id;
            Name = name;
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