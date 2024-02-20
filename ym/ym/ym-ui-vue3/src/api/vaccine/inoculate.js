import request from '@/utils/request'

// 查询疫苗接种记录列表
export function listInoculate(query) {
  return request({
    url: '/vaccine/inoculate/list',
    method: 'get',
    params: query
  })
}

export function getUserInoculates(query) {
  return request({
    url: '/vaccine/inoculate/getInoculateByCurrentLoginUser',
    method: 'get',
    params: query
  })
}

// 查询疫苗接种记录详细
export function getInoculate(id) {
  return request({
    url: '/vaccine/inoculate/' + id,
    method: 'get'
  })
}

// 新增疫苗接种记录
export function addInoculate(data) {
  return request({
    url: '/vaccine/inoculate',
    method: 'post',
    data: data
  })
}

// 修改疫苗接种记录
export function updateInoculate(data) {
  return request({
    url: '/vaccine/inoculate',
    method: 'put',
    data: data
  })
}

// 删除疫苗接种记录
export function delInoculate(id) {
  return request({
    url: '/vaccine/inoculate/' + id,
    method: 'delete'
  })
}
