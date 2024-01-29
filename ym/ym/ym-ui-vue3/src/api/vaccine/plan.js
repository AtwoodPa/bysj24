import request from '@/utils/request'

// 查询预约计划管理列表
export function listPlan(query) {
  return request({
    url: '/vaccine/plan/list',
    method: 'get',
    params: query
  })
}

// 查询预约计划管理详细
export function getPlan(id) {
  return request({
    url: '/vaccine/plan/' + id,
    method: 'get'
  })
}

// 新增预约计划管理
export function addPlan(data) {
  return request({
    url: '/vaccine/plan',
    method: 'post',
    data: data
  })
}

// 修改预约计划管理
export function updatePlan(data) {
  return request({
    url: '/vaccine/plan',
    method: 'put',
    data: data
  })
}

// 删除预约计划管理
export function delPlan(id) {
  return request({
    url: '/vaccine/plan/' + id,
    method: 'delete'
  })
}
