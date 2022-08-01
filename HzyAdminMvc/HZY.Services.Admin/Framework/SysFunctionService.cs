﻿using Microsoft.EntityFrameworkCore;
using HZY.Services.Admin.ServicesAdmin;
using HZY.Models.Entities.Framework;
using HZY.Infrastructure;
using HZY.EFCore.PagingViews;
using HzyEFCoreRepositories.Extensions;
using HZY.EFCore.Repositories.Admin.Core;

namespace HZY.Services.Admin.Framework;

/// <summary>
/// 功能服务
/// </summary>
public class SysFunctionService : AdminBaseService<IAdminRepository<SysFunction>>
{
    public SysFunctionService(IAdminRepository<SysFunction> repository) : base(repository)
    {
    }

    /// <summary>
    /// 获取列表数据
    /// </summary>
    /// <param name="page"></param>
    /// <param name="size"></param>
    /// <param name="search"></param>
    /// <returns></returns>
    public async Task<PagingView> FindListAsync(int page, int size, SysFunction search)
    {
        var query = this.Repository.Select
                .WhereIf(!string.IsNullOrWhiteSpace(search?.Name), a => a.Name.Contains(search.Name))
                .OrderBy(w => w.Number)
                .Select(w => new
                {
                    w.Id,
                    w.Number,
                    w.Name,
                    w.ByName,
                    UpdateTime = w.UpdateTime.Value.ToString("yyyy-MM-dd"),
                    CreateTime = w.CreateTime.ToString("yyyy-MM-dd"),
                })
            ;

        return await this.Repository.AsPagingViewAsync(query, page, size);
    }

    /// <summary>
    /// 根据id数组删除
    /// </summary>
    /// <param name="ids"></param>
    /// <returns></returns>
    public async Task DeleteListAsync(IEnumerable<Guid> ids)
    {
        await this.Repository.DeleteByIdsAsync(ids);
    }

    /// <summary>
    /// 查询表单数据
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Dictionary<string, object>> FindFormAsync(Guid id)
    {
        var res = new Dictionary<string, object>();
        var form = await this.Repository.FindByIdAsync(id);
        form = form.NullSafe();

        if (form.Id == Guid.Empty)
        {
            var maxNumber = await this.Repository.Select.MaxAsync(w => w.Number);
            form.Number = (maxNumber ?? 0) + 1;
        }

        res[nameof(form)] = form;
        return res;
    }

    /// <summary>
    /// 保存数据
    /// </summary>
    /// <param name="form"></param>
    /// <returns></returns>
    public async Task<SysFunction> SaveFormAsync(SysFunction form)
    {
        return await this.Repository.InsertOrUpdateAsync(form);
    }

    /// <summary>
    /// 导出Excel
    /// </summary>
    /// <param name="search"></param>
    /// <returns></returns>
    public async Task<byte[]> ExportExcelAsync(SysFunction search)
    {
        var tableViewModel = await this.FindListAsync(1, 999999, search);
        return this.ExportExcelByPagingView(tableViewModel);
    }
}
