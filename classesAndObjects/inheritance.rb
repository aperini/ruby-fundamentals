class Probe
  def deploy(deploy_time, return_time)
    puts "Deploying"
  end
  def take_sample
    puts "Take sample"
  end
end
probe = Probe.new
probe.deploy(10,20)
probe.take_sample

###################
class MineralProbe < Probe
  def deploy(deploy_time)

    #super
    # it passes all args of this method (1 arg) and it w'ont work (missing one)
    super(deploy_time, Time.now)
  end
  def take_sample
    puts "Take mineral sample"
  end
end
mineralProbe = MineralProbe.new
# mineralProbe.deploy(10,20) doesn't work because the overriden method has only one arg
mineralProbe.deploy(10)
mineralProbe.take_sample

