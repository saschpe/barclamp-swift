def upgrade ta, td, a, d
  a.delete('use_slog')
  a.delete('slog_account')
  a.delete('slog_user')
  a.delete('slog_passwd')
  return a, d
end

def downgrade ta, td, a, d
  a['use_slog'] = false
  a['slog_account'] = 'system_stats'
  a['slog_user'] = 'swift_sys'
  a['slog_passwd'] = 'swift_pwd'
  return a, d
end

