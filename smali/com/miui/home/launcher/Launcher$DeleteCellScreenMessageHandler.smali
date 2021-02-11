.class Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteCellScreenMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 6260
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 6260
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 6263
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->getDeleteTime()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->BEFORE_DELETE:I

    if-ne v0, v1, :cond_0

    .line 6264
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->getScreenId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$8300(Lcom/miui/home/launcher/Launcher;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 6265
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;

    invoke-direct {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;-><init>()V

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$8400(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;)V

    :cond_0
    return-void
.end method
