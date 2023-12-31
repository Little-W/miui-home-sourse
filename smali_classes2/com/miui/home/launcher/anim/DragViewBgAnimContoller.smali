.class public Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;
.super Ljava/lang/Object;
.source "DragViewBgAnimContoller.java"

# interfaces
.implements Lcom/miui/home/launcher/anim/BackgroundAnimController;


# instance fields
.field private final backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(II)V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;->backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;->backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAnimDuration()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public getFoldThumbnailDragAnimResponse()F
    .locals 0

    const/high16 p0, 0x3e800000    # 0.25f

    return p0
.end method

.method public setBgRadius(F)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;->backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgRadius(F)V

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;->backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setTargetView(Landroid/view/View;)V

    return-void
.end method

.method public updateBackgroundColor(F)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/anim/DragViewBgAnimContoller;->backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateBackgroundColor(F)V

    return-void
.end method
