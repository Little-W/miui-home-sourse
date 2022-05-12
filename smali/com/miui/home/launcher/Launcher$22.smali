.class Lcom/miui/home/launcher/Launcher$22;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/Handler;)V
    .locals 0

    .line 3706
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$22;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcom/miui/home/launcher/Launcher$22;)V
    .locals 2

    .line 3711
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$22;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onScreenCellsChanged()V

    .line 3712
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/StartSwitchingNoWordModel;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/StartSwitchingNoWordModel;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 3709
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3710
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$Launcher$22$a3ubkfl5VUxjr0OdrkEFREMLN3k;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$22$a3ubkfl5VUxjr0OdrkEFREMLN3k;-><init>(Lcom/miui/home/launcher/Launcher$22;)V

    invoke-static {p1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->switchNoWordSetting(Ljava/lang/Runnable;)V

    return-void
.end method
