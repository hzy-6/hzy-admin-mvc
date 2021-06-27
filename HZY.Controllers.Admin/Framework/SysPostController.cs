﻿using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using HZY.Common;
using Microsoft.AspNetCore.Mvc;
using HZY.Framework.Permission.Attributes;
using HZY.Framework.Filters;
using HZY.Model.Entities;
using HZY.Controllers.Admin.Framework;
using HZY.Services.Admin.Base;
using HZY.EntityFrameworkCorePlus.Models;
using HZY.EntityFrameworkCorePlus.Attributes;
using HZY.Services.Admin.Framework;
using HZY.Model.Entities.Framework;

namespace HZY.Controllers.Admin.Framework
{
    /// <summary>
    /// 岗位控制器
    /// </summary>
    [ControllerDescriptor("D29FDE94-0D6A-4A64-8446-55EE63DF5885")]
    public class SysPostController : AdminBaseController<SysPostService>
    {
        public SysPostController(SysPostService defaultService) : base(defaultService)
        {
        }

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="size"></param>
        /// <param name="page"></param>
        /// <param name="search"></param>
        /// <returns></returns>
        [HttpPost("FindList/{size}/{page}")]
        public async Task<PagingViewModel> FindListAsync([FromRoute] int size, [FromRoute] int page, [FromBody] SysPost search)
        {
            return await this.DefaultService.FindListAsync(page, size, search);
        }

        /// <summary>
        /// 根据id数组删除
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        [Transactional]
        [HttpPost("DeleteList")]
        public async Task<bool> DeleteListAsync([FromBody] List<Guid> ids)
        {
            await this.DefaultService.DeleteListAsync(ids);
            return true;
        }

        /// <summary>
        /// 查询表单数据
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("FindForm/{id?}")]
        public async Task<Dictionary<string, object>> FindFormAsync([FromRoute] Guid id)
        {
            return await this.DefaultService.FindFormAsync(id);
        }

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [Transactional]
        [HttpPost("SaveForm")]
        public async Task<SysPost> SaveFormAsync([FromBody] SysPost form)
        {
            return await this.DefaultService.SaveFormAsync(form);
        }

        /// <summary>
        /// 导出Excel
        /// </summary>
        /// <param name="search"></param>
        /// <returns></returns>
        [HttpPost("ExportExcel")]
        public async Task<FileContentResult> ExportExcelAsync([FromBody] SysPost search)
            => this.File(await this.DefaultService.ExportExcelAsync(search), Tools.GetFileContentType[".xls"].ToStr(), $"{Guid.NewGuid()}.xls");


    }
}
