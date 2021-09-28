.class public Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;
.super Ljava/lang/Object;
.source "AssistantDragCallback.java"


# instance fields
.field private mAssistantCellInited:Z

.field private mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mWasOverlayAttached:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 54
    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method private createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 257
    instance-of v0, p1, Lcom/miui/home/launcher/DragView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/DragView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 258
    :cond_0
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    .line 259
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 261
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 263
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 264
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 265
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 267
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-object v0
.end method

.method public static synthetic lambda$onDragToAssistantEnd$2(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Landroid/view/MotionEvent;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 239
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "drag_event"

    .line 240
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v0, "drag_end_with_result"

    const-string v1, ""

    invoke-virtual {p1, v0, v1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string v0, "drop_result"

    const/4 v1, -0x1

    .line 242
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onDragToAssistantEnd$3(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V
    .locals 0

    .line 244
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 245
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 246
    instance-of p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p2, :cond_0

    .line 247
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 248
    :cond_0
    instance-of p2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p2, :cond_1

    .line 249
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onDragToAssistantScreen$0(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v0, "check_cell_initialized"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "cell_initialized"

    .line 102
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onDragToAssistantScreen$1(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;Ljava/lang/Boolean;)V
    .locals 0

    .line 104
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p2, 0x7f1003ac

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 108
    iput-boolean p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private onDragToAssistantEnd(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$onq84zoULiAGcJq_XNfFWVYHbFw;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$onq84zoULiAGcJq_XNfFWVYHbFw;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Landroid/view/MotionEvent;)V

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$4y8y_5BVxOq9JA9CBoypYw82FDA;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$4y8y_5BVxOq9JA9CBoypYw82FDA;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->showOverlay(I)V

    .line 122
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    const/4 v2, 0x2

    .line 123
    new-array v3, v2, [I

    .line 124
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/DragView;->getLocationInWindow([I)V

    .line 126
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "drag_event"

    .line 127
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "preview_content"

    .line 129
    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "preview_left"

    const/4 v5, 0x0

    .line 130
    aget v5, v3, v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "preview_top"

    .line 131
    aget v3, v3, v1

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "preview_width"

    .line 132
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "preview_height"

    .line 133
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 136
    instance-of v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 137
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    const-string v2, "widget_type"

    .line 138
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "widget_id"

    .line 139
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "widget_info"

    .line 140
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "widget_miui"

    .line 141
    iget-boolean v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "widget_refresh"

    .line 142
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefresh:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "widget_refresh_min_interval"

    .line 143
    iget v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefreshMinInterval:I

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 144
    :cond_0
    instance-of v0, p2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_3

    .line 145
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const-string v2, "widget_type"

    .line 146
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "widget_component_name"

    .line 147
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "widget_id"

    .line 148
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "widget_miui"

    .line 149
    iget-boolean v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "widget_refresh"

    .line 150
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "widget_refresh_min_interval"

    .line 151
    iget v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "widget_app_name"

    .line 152
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "widget_app_package"

    .line 153
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "widget_app_version"

    .line 154
    iget v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "widget_download_uri"

    .line 155
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "preview_light_url"

    .line 156
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "preview_dark_url"

    .line 157
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "widget_app_icon_preview_url"

    .line 158
    iget-object v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "widget_title"

    .line 161
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 166
    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "widget_info"

    .line 167
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 171
    :cond_3
    instance-of v0, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v0, :cond_6

    .line 172
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const-string v3, "widget_type"

    .line 173
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "widget_id"

    .line 174
    iget v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "maml_uri"

    .line 175
    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaResPermission(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "maml_tag"

    .line 176
    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "maml_product_id"

    .line 177
    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "maml_type"

    .line 178
    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "maml_download_url"

    .line 179
    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "maml_version"

    .line 180
    iget v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "preview_light_url"

    .line 181
    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "preview_dark_url"

    .line 182
    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "widget_app_name"

    .line 183
    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "widget_app_package"

    .line 184
    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "widget_app_version"

    .line 185
    iget v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "widget_download_uri"

    .line 186
    iget-object v3, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "maml_mtz_file_size"

    .line 187
    iget-wide v5, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "maml_title"

    .line 188
    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v2, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "maml_config_uri"

    .line 190
    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v5, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    .line 191
    invoke-static {v3, v5, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    .line 190
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    const-string v1, "maml_custom_edit_uri"

    .line 193
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    const-string v0, "picker_id"

    .line 196
    iget-object v1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_cell_x"

    .line 197
    iget v1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellX:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_cell_y"

    .line 198
    iget v1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellY:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_span_x"

    .line 199
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_span_y"

    .line 200
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "default_source"

    .line 201
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "widget_app_version"

    .line 202
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "widget_package_version_name"

    .line 203
    iget-object v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget p1, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    if-lez p1, :cond_7

    const-string p1, "widget_origin_id"

    .line 205
    iget p2, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    :cond_7
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p2, "drag_start"

    const-string v0, ""

    invoke-virtual {p1, p2, v0, v4}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private onDraggingToAssistant(Landroid/view/MotionEvent;)V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "drag_event"

    .line 222
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v1, "dragging"

    const-string v2, ""

    invoke-virtual {p1, v1, v2, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onDragToAssistantScreen(Landroid/view/MotionEvent;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    if-nez v2, :cond_1

    .line 90
    invoke-virtual {v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f1003ac

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 95
    :cond_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    if-eqz v1, :cond_2

    .line 96
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    return-void

    .line 100
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$8aSX93Uw5OSeRFLz9i7N1Sk-mwU;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$8aSX93Uw5OSeRFLz9i7N1Sk-mwU;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;)V

    new-instance v2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$Kh5JHtbBmQ9drwdzpylpZCkp4PU;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$Kh5JHtbBmQ9drwdzpylpZCkp4PU;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    invoke-static {v1, v2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->getCurrentDragObject()Lcom/miui/home/launcher/DragObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->isDraggingToAssistant()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDraggingToAssistant(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantEnd(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return v3

    :cond_3
    return v1
.end method

.method public onServiceStateChanged(Z)V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    if-eq p1, v0, :cond_0

    .line 60
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mWasOverlayAttached:Z

    :cond_0
    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    return-void
.end method
