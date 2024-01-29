import request from '@/utils/request'

// 查询预检信息查询列表
export function listPreCheck(query) {
  return request({
    url: '/vaccine/preCheck/list',
    method: 'get',
    params: query
  })
}

// 查询预检信息查询详细
export function getPreCheck(id) {
  return request({
    url: '/vaccine/preCheck/' + id,
    method: 'get'
  })
}

// 新增预检信息查询
export function addPreCheck(data) {
  return request({
    url: '/vaccine/preCheck',
    method: 'post',
    data: data
  })
}

// 修改预检信息查询
export function updatePreCheck(data) {
  return request({
    url: '/vaccine/preCheck',
    method: 'put',
    data: data
  })
}

// 删除预检信息查询
export function delPreCheck(id) {
  return request({
    url: '/vaccine/preCheck/' + id,
    method: 'delete'
  })
}
