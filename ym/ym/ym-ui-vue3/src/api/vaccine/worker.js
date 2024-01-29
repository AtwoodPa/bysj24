import request from '@/utils/request'

// 查询医护人员信息列表
export function listWorker(query) {
  return request({
    url: '/vaccine/worker/list',
    method: 'get',
    params: query
  })
}

// 查询医护人员信息详细
export function getWorker(id) {
  return request({
    url: '/vaccine/worker/' + id,
    method: 'get'
  })
}

// 新增医护人员信息
export function addWorker(data) {
  return request({
    url: '/vaccine/worker',
    method: 'post',
    data: data
  })
}

// 修改医护人员信息
export function updateWorker(data) {
  return request({
    url: '/vaccine/worker',
    method: 'put',
    data: data
  })
}

// 删除医护人员信息
export function delWorker(id) {
  return request({
    url: '/vaccine/worker/' + id,
    method: 'delete'
  })
}
