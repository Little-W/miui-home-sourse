.class Lcom/miui/home/recents/NavStubView$4;
.super Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V
    .locals 8

    const/4 v0, 0x3

    .line 786
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableInsets(I)V

    .line 787
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v2}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 788
    invoke-virtual {v3}, Lcom/miui/home/recents/NavStubView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v4}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v4}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v5}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Region;-><init>(IIII)V

    .line 789
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComputeInternalInsets  bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   mHideGestureLine="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 790
    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$1100(Lcom/miui/home/recents/NavStubView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   mIsShowNavBar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 791
    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$1200(Lcom/miui/home/recents/NavStubView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1100(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1200(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegion(Landroid/graphics/Region;)V

    goto/16 :goto_0

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1100(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 796
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 797
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v4}, Lcom/miui/home/recents/NavStubView;->access$1300(Lcom/miui/home/recents/NavStubView;)[F

    move-result-object v4

    aget v2, v4, v2

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v4}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v5}, Lcom/miui/home/recents/NavStubView;->access$1300(Lcom/miui/home/recents/NavStubView;)[F

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v6}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 798
    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 799
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onComputeInternalInsets  path.addRect: centerRectF="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v2, v2, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v2}, Lcom/miui/home/recents/FsGestureAssistHelper;->supportAssistantGesture()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v2, v2, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v2}, Lcom/miui/home/recents/FsGestureAssistHelper;->getAssistantWidth()I

    move-result v2

    .line 802
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v4}, Lcom/miui/home/recents/NavStubView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v5}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v2

    iget-object v7, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v7}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 803
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v5}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v2, v5

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v5}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v6}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/home/recents/NavStubView$4;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v7}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v4, v2, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 804
    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 805
    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 806
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onComputeInternalInsets  path.addRect: leftAssistantRectF="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   rightAssistantRectF="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_1
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegionPath(Landroid/graphics/Path;Landroid/graphics/Region;)V

    goto :goto_0

    .line 811
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegion(Landroid/graphics/Region;)V

    :goto_0
    return-void
.end method
