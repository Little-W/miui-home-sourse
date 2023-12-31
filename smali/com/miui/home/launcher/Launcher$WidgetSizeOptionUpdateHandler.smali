.class Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSizeOptionUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 10166
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 10166
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method private updateWidgetsSizeOption()V
    .locals 5

    .line 10183
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10400(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10184
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10500(Lcom/miui/home/launcher/Launcher;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 10185
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$10500(Lcom/miui/home/launcher/Launcher;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10186
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$WidgetSizeOptionUpdateHandler$XT_Ehf380je86uyTZG6snDo5a1w;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$WidgetSizeOptionUpdateHandler$XT_Ehf380je86uyTZG6snDo5a1w;-><init>(Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 10188
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 10189
    iget-object v4, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 10190
    iget-object v3, v3, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->requestLayout()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10194
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$10600(Lcom/miui/home/launcher/Launcher;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 10195
    iget-object v1, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    if-eqz v1, :cond_2

    .line 10196
    iget-object v0, v0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->hostView:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->requestUpdate(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateWidgetsSizeOption([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 6

    .line 10203
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 10204
    iget v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10205
    iget-object v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->hostView:Lcom/miui/home/launcher/LauncherWidgetView;

    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    iget v5, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    iget v2, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v3, v4, v5, v2}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/Launcher;II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$updateWidgetsSizeOption$0$Launcher$WidgetSizeOptionUpdateHandler([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .line 10186
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 10169
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/NavBarChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 10179
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/SearchBarChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 10174
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption()V

    return-void
.end method
