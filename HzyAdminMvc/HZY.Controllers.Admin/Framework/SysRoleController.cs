﻿using HZY.Services.Admin.Framework;
using HZY.Controllers.Admin.ControllersAdmin;
using HZY.Infrastructure;
using HZY.Infrastructure.Permission.Attributes;
using HZY.Models.Entities.Framework;
using Microsoft.AspNetCore.Mvc;
using HZY.EFCore.PagingViews;

namespace HZY.Controllers.Admin.Framework
{
    [ControllerDescriptor("38d864ff-f6e7-43af-8c5c-8bbcf9fa586d")]
    public class SysRoleController : AdminBaseController<SysRoleService>
    {
        public SysRoleController(SysRoleService defaultService) : base(defaultService)
        {
        }

        /// <summary>
        /// 列表页
        /// </summary>
        /// <returns></returns>
        [HttpGet(nameof(Index))]
        public IActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 编辑页
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("Info/{id?}")]
        public IActionResult Info(Guid id)
        {
            return View(id);
        }

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="page"></param>
        /// <param name="rows"></param>
        /// <param name="search"></param>
        /// <returns></returns>
        [HttpPost("FindList/{rows}/{page}")]
        public async Task<PagingView> FindListAsync([FromRoute] int page, [FromRoute] int rows, [FromBody] SysRole search)
        {
            return await this.DefaultService.FindListAsync(page, rows, search);
        }

        /// <summary>
        /// 根据id数组删除
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
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
        [HttpPost("SaveForm")]
        public async Task<SysRole> SaveFormAsync([FromBody] SysRole form)
        {
            return await this.DefaultService.SaveFormAsync(form);
        }

        /// <summary>
        /// 导出Excel
        /// </summary>
        /// <param name="search"></param>
        /// <returns></returns>
        [HttpPost("ExportExcel")]
        public async Task<FileContentResult> ExportExcelAsync([FromBody] SysRole search)
            => this.File(await this.DefaultService.ExportExcelAsync(search), Tools.GetFileContentType[".xls"].ToStr(), $"{Guid.NewGuid()}.xls");
    }
}