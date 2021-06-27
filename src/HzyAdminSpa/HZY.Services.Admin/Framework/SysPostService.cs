﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HZY.Repository.Framework;
using HZY.Common;
using HZY.Repository;
using Microsoft.AspNetCore.Http;
using HZY.Model.Entities;
using HZY.Services.Admin.Framework;
using HZY.EntityFrameworkCorePlus.Models;
using HZY.EntityFrameworkCorePlus.Extensions;
using HZY.Model.Entities.Framework;
using Microsoft.EntityFrameworkCore;

namespace HZY.Services.Admin.Framework
{
    public class SysPostService : AdminBaseService<SysPostRepository>
    {
        public SysPostService(SysPostRepository repository) : base(repository)
        {
        }

        /// <summary>
        /// 获取列表数据
        /// </summary>
        /// <param name="page"></param>
        /// <param name="size"></param>
        /// <param name="search"></param>
        /// <returns></returns>
        public async Task<PagingViewModel> FindListAsync(int page, int size, SysPost search)
        {
            var query = this.Repository.Select
                    .WhereIf(!string.IsNullOrWhiteSpace(search?.Name), a => a.Name.Contains(search.Name))
                    .OrderBy(w => w.Number)
                    .Select(w => new
                    {
                        w.Id,
                        w.Number,
                        w.Code,
                        w.Name,
                        //State = w.State == StateEnum.正常 ? "正常" : "停用",
                        w.State,
                        //State=w.State.ToString(),
                        UpdateTime = w.UpdateTime.ToString("yyyy-MM-dd"),
                        CreateTime = w.CreateTime.ToString("yyyy-MM-dd"),
                    })
                ;

            return await this.Repository.AsPagingViewModelAsync(query, page, size);
        }

        /// <summary>
        /// 根据id数组删除
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        public async Task DeleteListAsync(List<Guid> ids)
        {
            await this.Repository.DeleteAsync(w => ids.Contains(w.Id));
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

            if (id == Guid.Empty)
            {
                var maxNum = await this.Repository.Select.MaxAsync(w => w.Number);
                form.Number = (maxNum ?? 0) + 1;
            }

            res[nameof(id)] = id == Guid.Empty ? "" : id;
            res[nameof(form)] = form;
            return res;
        }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        public async Task<SysPost> SaveFormAsync(SysPost form)
        {
            return await this.Repository.InsertOrUpdateAsync(form);
        }

        /// <summary>
        /// 导出Excel
        /// </summary>
        /// <param name="search"></param>
        /// <returns></returns>
        public async Task<byte[]> ExportExcelAsync(SysPost search)
        {
            var tableViewModel = await this.FindListAsync(1, 999999, search);
            return this.ExportExcelByPagingViewModel(tableViewModel);
        }


    }
}