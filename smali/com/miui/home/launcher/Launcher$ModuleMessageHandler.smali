.class Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModuleMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 9801
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 9801
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/module/ModuleLoadMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 9804
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10300(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/module/ModuleLoadMessage;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.newhome"

    .line 9805
    invoke-virtual {p1}, Lcom/miui/home/launcher/module/ModuleLoadMessage;->getModule()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9806
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$4100(Lcom/miui/home/launcher/Launcher;)V

    .line 9807
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$ModuleMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    :cond_0
    return-void
.end method
