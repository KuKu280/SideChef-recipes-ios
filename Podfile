platform :ios, '13.0'
use_frameworks!

def linkProject (name)
  project '#{name}/#{name}.project'
end

workspace 'SideChef-Recipes'

def ui_pods
  pod 'SDCycleScrollView'
  pod 'lottie-ios'
  pod 'IQKeyboardManagerSwift'
end

target 'CommonUI' do
 project 'CommonUI/CommonUI.project'
 ui_pods
end

target 'SideChef-Recipes' do
 project 'SideChef-Recipes.project'
 ui_pods
end


target 'SideChef-RecipesTests' do
    inherit! :search_paths
    # Pods for testing
end

target 'SideChef-RecipesUITests' do
    # Pods for testing
end
