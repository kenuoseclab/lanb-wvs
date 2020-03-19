import IndexZui from '@/views/style/IndexZui'

const TaskRouter = {
  path: '/task',
  name: 'Task',
  component: IndexZui,
  children: [
    {
      path: 'task-info-page',
      components: {
        content: require('@/views/task/TaskInfoPage').default
      }
    },
    {
      path: 'task-table',
      components: {
        content: require('@/views/task/TaskTable').default
      }
    },
    {
      path: 'task-log-table',
      components: {
        content: require('@/views/task/TaskLogTable').default
      }
    },
    {
      path: 'task-attr-table',
      components: {
        content: require('@/views/task/TaskAttrTable').default
      }
    },
    {
      path: 'task-create',
      components: {
        content: require('@/views/task/TaskCreate').default
      }
    }
  ]
}

export default TaskRouter
