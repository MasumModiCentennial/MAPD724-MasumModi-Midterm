import SpriteKit
import GameplayKit

class Cloud: GameObject
{
    
    // constructor
    init()
    {
        super.init(imageString: "cloud", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        if(position.x <= -780)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        dx = CGFloat(Int.random(in: 4...6))
        dy = CGFloat(Int.random(in: -1...1))
        
        position.x = CGFloat(Int.random(in: 780...800))
        position.y = CGFloat(Int.random(in: -280...280))
        
        isColliding = false
    }
    
    // initialization
    override func Start()
    {
        zPosition = 3
        alpha = 0.5
        Reset()
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        position.y -= dy!
        position.x -= dx!
    }
}
