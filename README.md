# First Vision OS app : Ludo : Roll the dice

## Contents

There is a dice 3D model which is created with entity named  "dice" which is in the repository for the public usage.
If the diceModel is available the it take its first children.
We also add environment lighting which is also available in the project with name "studio".

We give fix height, position (only z as we want it to attach with floor).

### Generate Collision
we use this method for dice to detect collisions between two entites the have collition.. We set `recursive` false  as we dont want to generate the collision shapes.

After that we set the light, shadows for the dice.

```
                dice.components.set(InputTargetComponent())
                dice.components.set(ImageBasedLightComponent(source: .single(environment)))
                dice.components.set(ImageBasedLightReceiverComponent(imageBasedLight: dice))
                dice.components.set(GroundingShadowComponent(castsShadow: true))
```

### Adding Physics (PhysicsBodyComponent, PhysicsMotionComponent) from RealityKIT

 -  `PhysicsBody` defines the mass , material and mode for the target component. We will just set the friction here.
 -  `PhysicsMotion` defiens the movement. We will just initialize this and dont add anything.

## Drag Gesture

We will use DragGesture class from SwiftUI  which will handle the onChange and onEnded events and track the value to change the state we create  i.e `droppedDice`.

if the dice is stopped then we wil create one subscriber that checks the position of dice and get the value of dice. For that we have diceData which is based on the x, y, z coordinates of the dice.


