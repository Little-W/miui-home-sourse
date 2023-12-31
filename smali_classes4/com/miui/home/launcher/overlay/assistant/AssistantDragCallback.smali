.class public Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;
.super Ljava/lang/Object;
.source "AssistantDragCallback.java"


# instance fields
.field private mAssistantCellInited:Z

.field private mCanDragToAssistant:Z

.field private mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPickerDragToAssistantSupported:Z

.field protected mWasOverlayAttached:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    .line 65
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 66
    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method private createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 310
    instance-of p0, p1, Lcom/miui/home/launcher/DragView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/DragView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 312
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 315
    check-cast p1, Lcom/miui/home/launcher/DragView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 316
    :cond_2
    instance-of p0, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    .line 317
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 319
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 321
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 322
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 323
    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 324
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 325
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-object p0
.end method

.method private onDragToAssistantEnd(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$SUcPsy7J64Bz3d_546wMQ1RvvWo;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$SUcPsy7J64Bz3d_546wMQ1RvvWo;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Landroid/view/MotionEvent;)V

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$_uii4p5L86HNI5wlXJ2l_EcZv_s;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$_uii4p5L86HNI5wlXJ2l_EcZv_s;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V
    .locals 4

    .line 140
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v0

    const-wide/16 v2, -0x70

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 141
    iget-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mPickerDragToAssistantSupported:Z

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->cancelDrag()V

    .line 145
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->showOverlay(I)V

    .line 147
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p1, "drag_from_home_picker"

    const-string p2, ""

    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    if-nez v0, :cond_2

    return-void

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    .line 153
    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$pDLeSQAY6cLVYDsGuU34TCKirco;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$pDLeSQAY6cLVYDsGuU34TCKirco;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;)V

    new-instance v3, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$YGmyCR1gZE3VHjF9o6b3cNIzgj8;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$YGmyCR1gZE3VHjF9o6b3cNIzgj8;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;Landroid/view/MotionEvent;Lcom/miui/home/launcher/DragObject;)V

    invoke-static {v2, v3, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onDraggingToAssistant(Landroid/view/MotionEvent;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const-string v1, "drag_event"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 276
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p1, "dragging"

    const-string v1, ""

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDragToAssistantEnd$4$AssistantDragCallback(Landroid/view/MotionEvent;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 292
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 293
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const-string v0, "drag_event"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p1, "drag_end_with_result"

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    const/4 p2, -0x1

    const-string v0, "drop_result"

    .line 295
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onDragToAssistantEnd$5$AssistantDragCallback(Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V
    .locals 0

    .line 297
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 299
    instance-of p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p2, :cond_0

    .line 300
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 301
    :cond_0
    instance-of p2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p2, :cond_1

    .line 302
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onDragToAssistantScreen$0$AssistantDragCallback(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p1, "check_cell_initialized"

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "cell_initialized"

    .line 118
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onDragToAssistantScreen$1$AssistantDragCallback(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;Ljava/lang/Boolean;)V
    .locals 0

    .line 120
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    if-eqz p3, :cond_0

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p1, 0x7f1104c8

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 124
    iput-boolean p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public synthetic lambda$onDragToAssistantStart$2$AssistantDragCallback(Lcom/miui/home/launcher/DragView;Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onDragToAssistantStart$3$AssistantDragCallback(Lcom/miui/home/launcher/DragView;Landroid/view/MotionEvent;Lcom/miui/home/launcher/DragObject;Landroid/graphics/Bitmap;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    if-eqz v1, :cond_b

    .line 156
    iget-object v2, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 159
    :cond_0
    iget-object v2, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 160
    iget-object v2, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v2, v3}, Lcom/miui/launcher/overlay/client/LauncherClient;->showOverlay(I)V

    const/4 v2, 0x2

    new-array v4, v2, [I

    move-object/from16 v5, p1

    .line 162
    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/DragView;->getLocationInWindow([I)V

    .line 164
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 165
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    const-string v8, "drag_event"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v7, "preview_content"

    .line 166
    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v7, 0x0

    .line 167
    aget v7, v4, v7

    const-string v8, "preview_left"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    aget v4, v4, v3

    const-string v7, "preview_top"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const-string v7, "preview_width"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const-string v4, "preview_height"

    invoke-virtual {v6, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 173
    instance-of v4, v1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    const-string v7, ""

    const-string v8, "widget_refresh_min_interval"

    const-string v9, "widget_refresh"

    const-string v10, "widget_miui"

    const-string v11, "widget_info"

    const-string v12, "widget_app_version"

    const-string v13, "widget_id"

    const-string v14, "widget_type"

    if-eqz v4, :cond_1

    .line 174
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 175
    invoke-virtual {v6, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v6, v13, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    iget-object v4, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v6, v11, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    iget-boolean v4, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    iget-object v4, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefresh:Ljava/lang/String;

    invoke-virtual {v6, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget v2, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefreshMinInterval:I

    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 p2, v7

    goto/16 :goto_1

    .line 181
    :cond_1
    instance-of v4, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const-string v15, "preview_dark_url"

    const-string v2, "preview_light_url"

    const-string v3, "widget_download_uri"

    const-string v5, "widget_app_package"

    move-object/from16 p2, v7

    const-string v7, "widget_app_name"

    if-eqz v4, :cond_5

    .line 182
    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-object/from16 p4, v1

    const/4 v1, 0x1

    .line 183
    invoke-virtual {v6, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    const-string v14, "widget_component_name"

    invoke-virtual {v6, v14, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v6, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    iget-boolean v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    invoke-virtual {v6, v10, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    iget-object v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    invoke-virtual {v6, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    iget-object v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    invoke-virtual {v6, v12, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    iget-object v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v6, v15, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    const-string v2, "widget_app_icon_preview_url"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, v4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadAppInfo:Ljava/lang/String;

    const-string v2, "widget_download_app_info"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widget_title"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-object v1, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 204
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    invoke-virtual {v6, v11, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    move-object/from16 v1, p4

    goto/16 :goto_1

    .line 209
    :cond_5
    instance-of v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v4, :cond_9

    .line 210
    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const/4 v8, 0x2

    .line 211
    invoke-virtual {v6, v14, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    iget v8, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v6, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    iget-object v8, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v9, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v10, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v8, v9, v10}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaResPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "maml_uri"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    iget-object v8, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v9, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v10, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v8, v9, v10}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaRightsPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v9, "maml_rights_uri"

    .line 216
    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 218
    :cond_6
    iget-object v8, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    const-string v9, "maml_tag"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v8, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTagCategory:Ljava/lang/String;

    const-string v9, "maml_tag_category"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v8, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v9, "maml_product_id"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v8, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    const-string v9, "maml_type"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v8, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    const-string v9, "maml_download_url"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget v8, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const-string v9, "maml_version"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    iget-object v8, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v6, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v6, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v6, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    iget-object v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-wide v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    const-string v5, "maml_mtz_file_size"

    invoke-virtual {v6, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 231
    invoke-virtual {v4}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v4}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_7
    move-object/from16 v7, p2

    :goto_0
    const-string v2, "maml_title"

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 233
    iget-object v2, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    const/4 v5, 0x1

    .line 234
    invoke-static {v2, v3, v5}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "maml_config_uri"

    .line 233
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 236
    :cond_8
    iget-object v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    const-string v3, "maml_custom_edit_uri"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->flag:I

    const-string v3, "maml_flag"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    iget-wide v2, v4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->priceInCent:J

    const-string v4, "maml_price_cent"

    invoke-virtual {v6, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 241
    :cond_9
    :goto_1
    iget-object v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v3, "picker_id"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellX:I

    const-string v3, "widget_cell_x"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    iget v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellY:I

    const-string v3, "widget_cell_y"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const-string v3, "widget_span_x"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const-string v3, "widget_span_y"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    iget v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    const-string v3, "default_source"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    iget-object v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->extension:Ljava/lang/String;

    const-string v3, "component_item_info_expand"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    iget-object v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    const-string v3, "widget_package_version_name"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    if-lez v2, :cond_a

    .line 251
    iget v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    const-string v3, "widget_origin_id"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    :cond_a
    iget-object v2, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    iget-wide v3, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-long v1, v1

    const-string v3, "home_screen_id"

    .line 255
    invoke-virtual {v6, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 257
    iget-object v0, v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v1, "drag_start"

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragView;->setForceFadeOut()V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public onDragToAssistantScreen(Landroid/view/MotionEvent;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    .line 107
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p1, 0x7f1104c8

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 111
    :cond_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    if-eqz v1, :cond_2

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    return-void

    .line 116
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$8aSX93Uw5OSeRFLz9i7N1Sk-mwU;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$8aSX93Uw5OSeRFLz9i7N1Sk-mwU;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;)V

    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$Kh5JHtbBmQ9drwdzpylpZCkp4PU;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$Kh5JHtbBmQ9drwdzpylpZCkp4PU;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    invoke-static {v1, v2, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->isDraggingToAssistant()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 90
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDraggingToAssistant(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 92
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantEnd(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return v3

    :cond_3
    return v1
.end method

.method public onServiceStateChanged(Z)V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    if-eq p1, v0, :cond_0

    .line 76
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    :cond_0
    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    return-void
.end method

.method public setCanDragToAssistant(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    return-void
.end method

.method public updateOverlayState(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mPickerDragToAssistantSupported:Z

    return-void
.end method
