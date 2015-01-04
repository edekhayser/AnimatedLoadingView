//
//  LoadingView.swift
//  LoadingView
//
//  Created by Evan Dekhayser on 12/29/14.
//  Copyright (c) 2014 Xappox, LLC. All rights reserved.
//

import UIKit
import SceneKit

public class LoadingView: SCNView {
	
	public override init(){
		super.init()
		updateScene()
	}
	
	public override init(frame: CGRect){
		super.init(frame: frame)
		updateScene()
	}
	
	public override init(frame: CGRect, options: [NSObject : AnyObject]?) {
		super.init(frame: frame, options: options)
		updateScene()
	}
	
	required public init(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func updateScene(){
		backgroundColor = UIColor.clearColor()
		
		self.scene = SCNScene()
		let cameraNode = SCNNode()
		cameraNode.camera = SCNCamera()
		scene!.rootNode.addChildNode(cameraNode)
		cameraNode.position = SCNVector3Make(0, 0, 15)
		
		let cube = cubeNode()
		scene!.rootNode.addChildNode(cube)
		cube.runAction(SCNAction.repeatActionForever(SCNAction.rotateByX(CGFloat(M_2_PI), y: CGFloat(M_PI), z: CGFloat(M_2_SQRTPI), duration: 1.0)))
		
		let lightNode = SCNNode()
		lightNode.light = SCNLight()
		lightNode.light?.type = SCNLightTypeOmni
		lightNode.position = SCNVector3Make(0, 10, 10)
		scene!.rootNode.addChildNode(lightNode)
		
		let ambientLightNode = SCNNode()
		ambientLightNode.light = SCNLight()
		ambientLightNode.light?.type = SCNLightTypeAmbient
		ambientLightNode.light?.color = UIColor.darkGrayColor()
		scene!.rootNode.addChildNode(ambientLightNode)
		
		setTranslatesAutoresizingMaskIntoConstraints(false)
	}
	
	private func cubeNode() -> SCNNode{
		let shortSide: Float = 0.125
		let longSide: Float = 1.0
		let distanceBetween: Float = longSide / 2 - shortSide / 2
		
		let group = SCNNode()
		
		let c = UIColor(red: 0.01, green: 0.61, blue: 0.91, alpha: 1.0)
		let w = UIColor.whiteColor()
		
		let boxZ = SCNBox(width: CGFloat(shortSide), height: CGFloat(shortSide), length: CGFloat(longSide), chamferRadius: 0)
		let b1 = SCNNode(geometry: boxZ)
		b1.position = SCNVector3Make(-distanceBetween, -distanceBetween, 0)
		b1.geometry?.firstMaterial?.diffuse.contents = c
		b1.geometry?.firstMaterial?.specular.contents = w
		let b2 = SCNNode(geometry: boxZ)
		b2.position = SCNVector3Make(distanceBetween, -distanceBetween, 0)
		b2.geometry?.firstMaterial?.diffuse.contents = c
		b2.geometry?.firstMaterial?.specular.contents = w
		let b3 = SCNNode(geometry: boxZ)
		b3.position = SCNVector3Make(-distanceBetween, distanceBetween, 0)
		b3.geometry?.firstMaterial?.diffuse.contents = c
		b3.geometry?.firstMaterial?.specular.contents = w
		let b4 = SCNNode(geometry: boxZ)
		b4.position = SCNVector3Make(distanceBetween, distanceBetween, 0)
		b4.geometry?.firstMaterial?.diffuse.contents = c
		b4.geometry?.firstMaterial?.specular.contents = w
		let boxY = SCNBox(width: CGFloat(shortSide), height: CGFloat(longSide), length: CGFloat(shortSide), chamferRadius: 0)
		let b5 = SCNNode(geometry: boxY)
		b5.position = SCNVector3Make(-distanceBetween, 0, -distanceBetween)
		b5.geometry?.firstMaterial?.diffuse.contents = c
		b5.geometry?.firstMaterial?.specular.contents = w
		let b6 = SCNNode(geometry: boxY)
		b6.position = SCNVector3Make(-distanceBetween, 0, distanceBetween)
		b6.geometry?.firstMaterial?.diffuse.contents = c
		b6.geometry?.firstMaterial?.specular.contents = w
		let b7 = SCNNode(geometry: boxY)
		b7.position = SCNVector3Make(distanceBetween, 0, -distanceBetween)
		b7.geometry?.firstMaterial?.diffuse.contents = c
		b7.geometry?.firstMaterial?.specular.contents = w
		let b8 = SCNNode(geometry: boxY)
		b8.position = SCNVector3Make(distanceBetween, 0, distanceBetween)
		b8.geometry?.firstMaterial?.diffuse.contents = c
		b8.geometry?.firstMaterial?.specular.contents = w
		let boxX = SCNBox(width: CGFloat(longSide), height: CGFloat(shortSide), length: CGFloat(shortSide), chamferRadius: 0)
		let b9 = SCNNode(geometry: boxX)
		b9.position = SCNVector3Make(0, -distanceBetween, -distanceBetween)
		b9.geometry?.firstMaterial?.diffuse.contents = c
		b9.geometry?.firstMaterial?.specular.contents = w
		let b10 = SCNNode(geometry: boxX)
		b10.position = SCNVector3Make(0, -distanceBetween, distanceBetween)
		b10.geometry?.firstMaterial?.diffuse.contents = c
		b10.geometry?.firstMaterial?.specular.contents = w
		let b11 = SCNNode(geometry: boxX)
		b11.position = SCNVector3Make(0, distanceBetween, -distanceBetween)
		b11.geometry?.firstMaterial?.diffuse.contents = c
		b11.geometry?.firstMaterial?.specular.contents = w
		let b12 = SCNNode(geometry: boxX)
		b12.position = SCNVector3Make(0, distanceBetween, distanceBetween)
		b12.geometry?.firstMaterial?.diffuse.contents = c
		b12.geometry?.firstMaterial?.specular.contents = w
		
		group.addChildNode(b1)
		group.addChildNode(b2)
		group.addChildNode(b3)
		group.addChildNode(b4)
		group.addChildNode(b5)
		group.addChildNode(b6)
		group.addChildNode(b7)
		group.addChildNode(b8)
		group.addChildNode(b9)
		group.addChildNode(b10)
		group.addChildNode(b11)
		group.addChildNode(b12)
		
		return group
	}
	
	
}
