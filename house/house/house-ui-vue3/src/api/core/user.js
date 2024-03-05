import request from '@/utils/request'

// 查询出租管理列表
export function listUser(query) {
  return request({
    url: '/core/user/list',
    method: 'get',
    params: query
  })
}

// 查询出租管理详细
export function getUser(id) {
  return request({
    url: '/core/user/' + id,
    method: 'get'
  })
}

// 新增出租管理
export function addUser(data) {
  return request({
    url: '/core/user',
    method: 'post',
    data: data
  })
}

// 修改出租管理
export function updateUser(data) {
  return request({
    url: '/core/user',
    method: 'put',
    data: data
  })
}

// 删除出租管理
export function delUser(id) {
  return request({
    url: '/core/user/' + id,
    method: 'delete'
  })
}
