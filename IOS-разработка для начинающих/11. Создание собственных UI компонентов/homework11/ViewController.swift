/*
 Для всех задач сделайте один проект, в котором все компоненты будут добавлены на один экран. Сделайте следующие компоненты, которые можно настраивать в интерфейсе Xcode, и которые сразу обновляют свой вид (в сториборде):
 
 кнопка, у которой можно изменять ширину и цвет обводки, размер закругления
 
 Часы с часовой, минутной и секундной стрелкой, у которых можно менять цвет и размер каждой стрелки
 
 Собственный аналог UISegmentControl, у которого всегда два возможных варианта сегмента;
 
 Выбранный элемент (по умолчанию первый) должен иметь цветную подложку, при нажатии на второй сегмент – эта подложка должна анимированно перемещаться под него и наоборот. В интерфейсе можно задать названия сегментов, цвет обводки и цвет подложки. Также он должен иметь делегат, через который будет сообщать о выбранном сегменте.
 */

import UIKit

class ViewController: UIViewController, Delegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setSegment(_ label: String) {
        print("\(label)")
    }
}
