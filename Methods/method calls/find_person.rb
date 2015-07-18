def find_person(*splat, **sp)
  return "found person with name : #{name}, mobile :#{mobile}" if addr=="josh software"

  return "found person with name : #{name},address : #{addr} mobile :#{mobile},#{splat}"
end
