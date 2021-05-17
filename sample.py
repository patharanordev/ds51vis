import fiftyone as fo
import fiftyone.zoo as foz

dataset = foz.load_zoo_dataset("quickstart")

# Create a custom App config
app_config = fo.AppConfig()
app_config.show_confidence = True
app_config.show_attributes = True

session = fo.launch_app(dataset, config=app_config, port=5151)

session.wait()