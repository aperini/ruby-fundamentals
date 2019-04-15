# document this class
class Probe
  def deploy(deploy_time, return_time)
    puts 'Deploying'
  end

  def take_sample
    puts 'Take sample'
  end
end

probe = Probe.new
probe.deploy(10, 20)
probe.take_sample

# document this class
class MineralProbe < Probe
  def deploy(deploy_time)
    # super
    # it passes all args of this method (1 arg) and it w'ont work (missing one)
    super(deploy_time, Time.now)
  end

  def take_sample
    puts 'Take mineral sample'
  end
end

mineral_probe = MineralProbe.new
# mineralProbe.deploy(10,20) doesn't work (overridden method has only 1 arg)
mineral_probe.deploy(10)
mineral_probe.take_sample
