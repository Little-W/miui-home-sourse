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

    .line 7411
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 7411
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 7414
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->getDeleteTime()I

    move-result p1

    sget v0, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->BEFORE_DELETE:I

    if-ne p1, v0, :cond_0

    .line 7415
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$DeleteCellScreenMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$7700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->resetAnimation()V

    :cond_0
    return-void
.end method
