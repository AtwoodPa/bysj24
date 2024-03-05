import request from '@/utils/request'

// 查询校友活动管理列表
export function listActivity(query) {
  return request({
    url: '/core/activity/list',
    method: 'get',
    params: query
  })
}

// 查询校友活动管理详细
export function getActivity(id) {
  return request({
    url: '/core/activity/' + id,
    method: 'get'
  })
}

// 新增校友活动管理
export function addActivity(data) {
  return request({
    url: '/core/activity',
    method: 'post',
    data: data
  })
}

// 修改校友活动管理
export function updateActivity(data) {
  return request({
    url: '/core/activity',
    method: 'put',
    data: data
  })
}

// 删除校友活动管理
export function delActivity(id) {
  return request({
    url: '/core/activity/' + id,
    method: 'delete'
  })
}
