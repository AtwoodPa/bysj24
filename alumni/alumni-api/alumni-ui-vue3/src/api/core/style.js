import request from '@/utils/request'

// 查询校友风采管理列表
export function listStyle(query) {
  return request({
    url: '/core/style/list',
    method: 'get',
    params: query
  })
}

// 查询校友风采管理详细
export function getStyle(id) {
  return request({
    url: '/core/style/' + id,
    method: 'get'
  })
}

// 新增校友风采管理
export function addStyle(data) {
  return request({
    url: '/core/style',
    method: 'post',
    data: data
  })
}

// 修改校友风采管理
export function updateStyle(data) {
  return request({
    url: '/core/style',
    method: 'put',
    data: data
  })
}

// 删除校友风采管理
export function delStyle(id) {
  return request({
    url: '/core/style/' + id,
    method: 'delete'
  })
}
