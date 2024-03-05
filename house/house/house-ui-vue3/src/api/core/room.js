import request from '@/utils/request'

// 查询房源管理列表
export function listRoom(query) {
  return request({
    url: '/core/room/list',
    method: 'get',
    params: query
  })
}

// 查询房源管理详细
export function getRoom(id) {
  return request({
    url: '/core/room/' + id,
    method: 'get'
  })
}

// 新增房源管理
export function addRoom(data) {
  return request({
    url: '/core/room',
    method: 'post',
    data: data
  })
}

// 修改房源管理
export function updateRoom(data) {
  return request({
    url: '/core/room',
    method: 'put',
    data: data
  })
}

// 删除房源管理
export function delRoom(id) {
  return request({
    url: '/core/room/' + id,
    method: 'delete'
  })
}
