import request from '@/utils/request'

// 查询论坛管理列表
export function listForum(query) {
  return request({
    url: '/vaccine/forum/list',
    method: 'get',
    params: query
  })
}

// 查询论坛管理详细
export function getForum(id) {
  return request({
    url: '/vaccine/forum/' + id,
    method: 'get'
  })
}

// 新增论坛管理
export function addForum(data) {
  return request({
    url: '/vaccine/forum',
    method: 'post',
    data: data
  })
}

// 修改论坛管理
export function updateForum(data) {
  return request({
    url: '/vaccine/forum',
    method: 'put',
    data: data
  })
}

// 删除论坛管理
export function delForum(id) {
  return request({
    url: '/vaccine/forum/' + id,
    method: 'delete'
  })
}
