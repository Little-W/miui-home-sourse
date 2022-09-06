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
    .locals 4

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 303
    instance-of v0, p1, Lcom/miui/home/launcher/DragView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/DragView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragView;->getOutline()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 305
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 308
    check-cast p1, Lcom/miui/home/launcher/DragView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 309
    :cond_2
    instance-of v0, p1, Lcom/miui/home/launcher/HostViewContainer;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/miui/home/launcher/HostViewContainer;

    invoke-interface {p1}, Lcom/miui/home/launcher/HostViewContainer;->getHostView()Landroid/view/View;

    move-result-object p1

    .line 310
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 312
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 314
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 315
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 316
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 318
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-object v0
.end method

.method public static synthetic lambda$onDragToAssistantEnd$4(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Landroid/view/MotionEvent;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 285
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "drag_event"

    .line 286
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 287
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v0, "drag_end_with_result"

    const-string v1, ""

    invoke-virtual {p1, v0, v1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string v0, "drop_result"

    const/4 v1, -0x1

    .line 288
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

.method public static synthetic lambda$onDragToAssistantEnd$5(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;Ljava/lang/Boolean;)V
    .locals 0

    .line 290
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 291
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 292
    instance-of p2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p2, :cond_0

    .line 293
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 294
    :cond_0
    instance-of p2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p2, :cond_1

    .line 295
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Launcher;->removeMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onDragToAssistantScreen$0(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v0, "check_cell_initialized"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "cell_initialized"

    .line 118
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

    .line 120
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mCanDragToAssistant:Z

    if-eqz p3, :cond_0

    .line 121
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const p2, 0x7f1104a6

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 124
    iput-boolean p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mAssistantCellInited:Z

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantStart(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic lambda$onDragToAssistantStart$2(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onDragToAssistantStart$3(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragView;Landroid/view/MotionEvent;Lcom/miui/home/launcher/DragObject;Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p4, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->showOverlay(I)V

    const/4 v0, 0x2

    .line 161
    new-array v2, v0, [I

    .line 162
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/DragView;->getLocationInWindow([I)V

    .line 164
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "drag_event"

    .line 165
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "preview_content"

    .line 166
    invoke-virtual {v3, p2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "preview_left"

    const/4 v4, 0x0

    .line 167
    aget v4, v2, v4

    invoke-virtual {v3, p2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "preview_top"

    .line 168
    aget v2, v2, v1

    invoke-virtual {v3, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "preview_width"

    .line 169
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "preview_height"

    .line 170
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {v3, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    .line 173
    instance-of p4, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz p4, :cond_1

    .line 174
    move-object p4, p2

    check-cast p4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    const-string v0, "widget_type"

    .line 175
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_id"

    .line 176
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_info"

    .line 177
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "widget_miui"

    .line 178
    iget-boolean v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "widget_refresh"

    .line 179
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefresh:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_refresh_min_interval"

    .line 180
    iget p4, p4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->miuiWidgetRefreshMinInterval:I

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 181
    :cond_1
    instance-of p4, p2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p4, :cond_4

    .line 182
    move-object p4, p2

    check-cast p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const-string v0, "widget_type"

    .line 183
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_component_name"

    .line 184
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "widget_id"

    .line 185
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_miui"

    .line 186
    iget-boolean v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "widget_refresh"

    .line 187
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefresh:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_refresh_min_interval"

    .line 188
    iget v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->miuiWidgetRefreshMinInterval:I

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_app_name"

    .line 189
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_app_package"

    .line 190
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_app_version"

    .line 191
    iget v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appVersion:I

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_download_uri"

    .line 192
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preview_light_url"

    .line 193
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preview_dark_url"

    .line 194
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_app_icon_preview_url"

    .line 195
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_download_app_info"

    .line 196
    iget-object v2, p4, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadAppInfo:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "widget_title"

    .line 199
    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 204
    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p4, "widget_info"

    .line 205
    invoke-virtual {v3, p4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 209
    :cond_4
    instance-of p4, p2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz p4, :cond_7

    .line 210
    move-object p4, p2

    check-cast p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    const-string v2, "widget_type"

    .line 211
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_id"

    .line 212
    iget v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maml_uri"

    .line 213
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v4, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v5, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v2, v4, v5}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaResPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "maml_tag"

    .line 214
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "maml_tag_category"

    .line 215
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTagCategory:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "maml_product_id"

    .line 216
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "maml_type"

    .line 217
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "maml_download_url"

    .line 218
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "maml_version"

    .line 219
    iget v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "preview_light_url"

    .line 220
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlLight:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preview_dark_url"

    .line 221
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlDark:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_app_name"

    .line 222
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_app_package"

    .line 223
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "widget_app_version"

    .line 224
    iget v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "widget_download_uri"

    .line 225
    iget-object v2, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->downloadUri:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "maml_mtz_file_size"

    .line 226
    iget-wide v4, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "maml_title"

    .line 227
    invoke-virtual {p4}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p4}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "maml_config_uri"

    .line 229
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v4, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    .line 230
    invoke-static {v2, v4, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    .line 229
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_6
    const-string v0, "maml_custom_edit_uri"

    .line 232
    iget-object p4, p4, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    const-string p4, "picker_id"

    .line 235
    iget-object v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    invoke-virtual {v3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "widget_cell_x"

    .line 236
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellX:I

    invoke-virtual {v3, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "widget_cell_y"

    .line 237
    iget v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->cellY:I

    invoke-virtual {v3, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "widget_span_x"

    .line 238
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {v3, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "widget_span_y"

    .line 239
    invoke-virtual {p3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p3

    iget p3, p3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v3, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "default_source"

    .line 240
    iget p4, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->defaultSource:I

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "widget_app_version"

    .line 241
    iget p4, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "widget_package_version_name"

    .line 242
    iget-object p4, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget p3, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    if-lez p3, :cond_8

    const-string p3, "widget_origin_id"

    .line 244
    iget p4, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    :cond_8
    iget-object p3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p3

    iget-wide v4, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->screenId:J

    invoke-virtual {p3, v4, v5}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result p2

    const-string p3, "home_screen_id"

    add-int/2addr p2, v1

    int-to-long v0, p2

    .line 248
    invoke-virtual {v3, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 250
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p3, "drag_start"

    const-string p4, ""

    invoke-virtual {p2, p3, p4, v3}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->setForceFadeOut()V

    .line 253
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private onDragToAssistantEnd(Lcom/miui/home/launcher/DragObject;Landroid/view/MotionEvent;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->setDraggingToAssistant(Z)V

    .line 280
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$SUcPsy7J64Bz3d_546wMQ1RvvWo;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$SUcPsy7J64Bz3d_546wMQ1RvvWo;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Landroid/view/MotionEvent;)V

    new-instance p2, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$_uii4p5L86HNI5wlXJ2l_EcZv_s;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDragCallback$_uii4p5L86HNI5wlXJ2l_EcZv_s;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;Lcom/miui/home/launcher/DragObject;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

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
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string p2, "drag_from_home_picker"

    const-string v0, ""

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

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
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "drag_event"

    .line 268
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 269
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v1, "dragging"

    const-string v2, ""

    invoke-virtual {p1, v1, v2, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->invokeOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
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
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const v0, 0x7f1104a6

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

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

    const/4 p1, 0x0

    invoke-static {v1, v2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void

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
