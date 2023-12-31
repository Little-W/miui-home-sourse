.class Lcom/miui/home/recents/NavStubView$5;
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

    .line 1211
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V
    .locals 10

    const/4 v0, 0x3

    .line 1214
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableInsets(I)V

    .line 1215
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v2}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1216
    invoke-virtual {v3}, Lcom/miui/home/recents/NavStubView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v4}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v4}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v5}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Region;-><init>(IIII)V

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComputeInternalInsets  bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   mHideGestureLine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1218
    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$1200(Lcom/miui/home/recents/NavStubView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mIsShowNavBar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1219
    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$1300(Lcom/miui/home/recents/NavStubView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mKeepHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1220
    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$1400(Lcom/miui/home/recents/NavStubView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mDisableTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1221
    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$1500(Lcom/miui/home/recents/NavStubView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mUseEmptyTouchableRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1222
    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$1600(Lcom/miui/home/recents/NavStubView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavStubView_Touch"

    .line 1217
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1600(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1200(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1300(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1227
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureSoscController;->isNormalMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1228
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1229
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubTraggeRange;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getLeft()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/NavStubTraggeRange;->updateRegion(FFFFZ)Landroid/graphics/Path;

    move-result-object v1

    .line 1230
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegionPath(Landroid/graphics/Path;Landroid/graphics/Region;)V

    goto/16 :goto_1

    .line 1231
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1800(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1232
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubTraggeRange;

    move-result-object v4

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1900(Lcom/miui/home/recents/NavStubView;)[F

    move-result-object v1

    aget v5, v1, v3

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1900(Lcom/miui/home/recents/NavStubView;)[F

    move-result-object v1

    const/4 v3, 0x1

    aget v7, v1, v3

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v1

    int-to-float v8, v1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/miui/home/recents/NavStubTraggeRange;->updateRegion(FFFFZ)Landroid/graphics/Path;

    move-result-object v1

    .line 1233
    invoke-static {}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->getInstance()Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->supportAssistantGesture()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1234
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v3, v3, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v3}, Lcom/miui/home/recents/FsGestureAssistHelper;->getAssistantWidth()I

    move-result v3

    .line 1235
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v5}, Lcom/miui/home/recents/NavStubView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v6}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    iget-object v8, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v8}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1236
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v6}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-float v3, v6

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v6}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v7}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v8}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1237
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1238
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  onComputeInternalInsets  path.addRect: leftAssistantRectF="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "   rightAssistantRectF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_2
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegionPath(Landroid/graphics/Path;Landroid/graphics/Region;)V

    goto :goto_1

    .line 1244
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubTraggeRange;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getLeft()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getLeft()I

    move-result v1

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v6}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v6, v1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getTop()I

    move-result v1

    iget-object v7, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v7}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v7

    add-int/2addr v1, v7

    int-to-float v7, v1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/NavStubTraggeRange;->updateRegion(FFFFZ)Landroid/graphics/Path;

    .line 1245
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegion(Landroid/graphics/Region;)V

    goto :goto_1

    .line 1224
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubTraggeRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubTraggeRange;->reset()V

    .line 1225
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;->setTouchableRegion(Landroid/graphics/Region;)V

    const-string p1, "  onComputeInternalInsets  empty"

    .line 1226
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  onComputeInternalInsets  path.addRect: NavStubTraggeRange="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$5;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubTraggeRange;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
