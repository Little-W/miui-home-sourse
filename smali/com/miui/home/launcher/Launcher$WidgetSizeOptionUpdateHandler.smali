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

    .line 9329
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 9329
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic lambda$updateWidgetsSizeOption$0(Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .line 9349
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method private updateWidgetsSizeOption()V
    .locals 2

    .line 9346
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10700(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9347
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10800(Lcom/miui/home/launcher/Launcher;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 9348
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$10800(Lcom/miui/home/launcher/Launcher;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9349
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$Launcher$WidgetSizeOptionUpdateHandler$XT_Ehf380je86uyTZG6snDo5a1w;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$WidgetSizeOptionUpdateHandler$XT_Ehf380je86uyTZG6snDo5a1w;-><init>(Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;[Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateWidgetsSizeOption([Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 6

    .line 9354
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 9355
    iget v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 9356
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
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9332
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/NavBarChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9342
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/SearchBarChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9337
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$WidgetSizeOptionUpdateHandler;->updateWidgetsSizeOption()V

    return-void
.end method
