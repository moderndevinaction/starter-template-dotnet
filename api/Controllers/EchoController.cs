using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

using MyCompany.Models;

namespace MyCompany.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class EchoController : ControllerBase
    {
        private readonly ILogger<EchoController> Logger;

        public EchoController(ILogger<EchoController> logger)
        {
            this.Logger = logger;
        }

        [HttpGet]
        public async Task<Introduction> Get(string name)
        {
            name = name ?? "Anonymous";
            var intro = new Introduction(name);
            return await Task.FromResult<Introduction>(intro);
        }
    }
}
