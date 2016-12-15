using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPOS.Responsity
{
    public interface ISendMessage
    {
        /// <summary>
        /// 发送消息模板信息
        /// </summary>
        /// <typeparam name="T">消息实体</typeparam>
        /// <param name="message"></param>
        /// <returns></returns>
        bool SendMessage<T>(T message);
    }
}
