def upgrade ta, td, a, d
  a.delete('reseller_prefix')
  return a, d
end

def downgrade ta, td, a, d
  a['reseller_prefix'] = 'AUTH_'
  return a, d
end
