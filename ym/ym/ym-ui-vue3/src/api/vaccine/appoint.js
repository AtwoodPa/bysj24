import request from '@/utils/request'

// 查询预约列表
export function listAppoint(query) {
  return request({
    url: '/vaccine/appoint/list',
    method: 'get',
    params: query
  })
}

// 查询预约详细
export function getAppoint(id) {
  return request({
    url: '/vaccine/appoint/' + id,
    method: 'get'
  })
}

// 新增预约
export function addAppoint(data) {
  return request({
    url: '/vaccine/appoint',
    method: 'post',
    data: data
  })
}

// 修改预约
export function updateAppoint(data) {
  return request({
    url: '/vaccine/appoint',
    method: 'put',
    data: data
  })
}

// 删除预约
export function delAppoint(id) {
  return request({
    url: '/vaccine/appoint/' + id,
    method: 'delete'
  })
}
