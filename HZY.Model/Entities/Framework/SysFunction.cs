﻿using HZY.Model.BaseEntitys;
using System;

namespace HZY.Model.Entities.Framework
{
    /// <summary>
    /// 功能
    /// </summary>
    public class SysFunction : DefaultBaseEntity<Guid>
    {
        /// <summary>
        /// 编号
        /// </summary>
        public int? Number { get; set; }

        /// <summary>
        /// 功能名称
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 功能标识
        /// </summary>
        public string ByName { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public string Remark { get; set; }
    }
}