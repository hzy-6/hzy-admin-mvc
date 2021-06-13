﻿using HZY.Framework.Filters;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Framework.Controllers
{
    public class ApiBaseController<TDefaultService> : ApiBaseController where TDefaultService : class
    {
        /// <summary>
        /// 默认服务
        /// </summary>
        protected readonly TDefaultService DefaultService;

        public ApiBaseController(TDefaultService defaultService)
        {
            this.DefaultService = defaultService;
        }

    }

    /// <summary>
    /// 控制器服务
    /// </summary>
    [Authorize]
    [ApiResultFilter]
    [ApiController]
    [Route("api/[controller]")]
    public class ApiBaseController : ControllerBase
    {


    }

}