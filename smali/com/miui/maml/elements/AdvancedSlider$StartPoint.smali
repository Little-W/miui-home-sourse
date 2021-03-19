.class Lcom/miui/maml/elements/AdvancedSlider$StartPoint;
.super Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field private mAnchorX:F

.field private mAnchorY:F

.field protected mOffsetX:F

.field protected mOffsetY:F

.field public mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 607
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    const-string v0, "StartPoint"

    .line 608
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    const-string p3, "anchorX"

    const/4 v0, 0x0

    .line 609
    invoke-static {p2, p3, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result p3

    iput p3, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    const-string p3, "anchorY"

    .line 610
    invoke-static {p2, p3, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result p3

    iput p3, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    .line 612
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    move-result-object p3

    .line 613
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "easeTime"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 615
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    invoke-direct {v0, p1, p3, p2}, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/animation/interpolater/InterpolatorHelper;Lcom/miui/maml/data/Expression;)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    :cond_0
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3

    .line 655
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 656
    iget v1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    iget v2, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 657
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->doRender(Landroid/graphics/Canvas;)V

    .line 658
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected doTick(J)V
    .locals 1

    .line 648
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->doTick(J)V

    .line 649
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->tick(J)V

    :cond_0
    return-void
.end method

.method public getAnchorX()F
    .locals 2

    .line 675
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getLeft()F

    move-result v0

    iget v1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getAnchorY()F
    .locals 2

    .line 679
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getTop()F

    move-result v0

    iget v1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .line 667
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .line 671
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    return v0
.end method

.method public init()V
    .locals 1

    .line 641
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 642
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->init()V

    :cond_0
    return-void
.end method

.method public moveTo(FF)V
    .locals 0

    .line 662
    iput p1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    .line 663
    iput p2, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    return-void
.end method

.method protected onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V
    .locals 2

    .line 620
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Invalid:Lcom/miui/maml/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_0

    return-void

    .line 624
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lcom/miui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 629
    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mPressed:Z

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mPressedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mNormalSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    .line 636
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
