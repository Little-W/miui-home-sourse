.class Lcom/miui/home/launcher/Launcher$39;
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

    .line 3551
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$39;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 3554
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/SoundEffectEnableMessage;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$39;->this$0:Lcom/miui/home/launcher/Launcher;

    .line 3555
    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isDeleteSoundEffectEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/SoundEffectEnableMessage;-><init>(Z)V

    .line 3554
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
