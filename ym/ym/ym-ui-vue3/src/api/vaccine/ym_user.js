import request from '@/utils/request'

// 查询疫苗预约用户列表
export function listYm_user(query) {
  return request({
    url: '/vaccine/user/list',
    method: 'get',
    params: query
  })
}

// 查询疫苗预约用户详细
export function getYm_user(id) {
  return request({
    url: '/vaccine/user/' + id,
    method: 'get'
  })
}

// 新增疫苗预约用户
export function addYm_user(data) {
  return request({
    url: '/vaccine/user',
    method: 'post',
    data: data
  })
}

// 修改疫苗预约用户
export function updateYm_user(data) {
  return request({
    url: '/vaccine/user',
    method: 'put',
    data: data
  })
}

// 删除疫苗预约用户
export function delYm_user(id) {
  return request({
    url: '/vaccine/user/' + id,
    method: 'delete'
  })
}
