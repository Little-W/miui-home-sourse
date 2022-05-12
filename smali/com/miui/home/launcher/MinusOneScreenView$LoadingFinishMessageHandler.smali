.class Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;
.super Ljava/lang/Object;
.source "MinusOneScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/MinusOneScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingFinishMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/MinusOneScreenView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/MinusOneScreenView;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;->this$0:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/MinusOneScreenView;Lcom/miui/home/launcher/MinusOneScreenView$1;)V
    .locals 0

    .line 359
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;-><init>(Lcom/miui/home/launcher/MinusOneScreenView;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 363
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    .line 364
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f060122

    goto :goto_0

    :cond_0
    const p1, 0x7f060120

    goto :goto_0

    .line 368
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f060121

    goto :goto_0

    :cond_2
    const p1, 0x7f06011f

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;->this$0:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->access$200(Lcom/miui/home/launcher/MinusOneScreenView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MinusOneScreenView;->access$002(Lcom/miui/home/launcher/MinusOneScreenView;I)I

    .line 373
    iget-object p1, p0, Lcom/miui/home/launcher/MinusOneScreenView$LoadingFinishMessageHandler;->this$0:Lcom/miui/home/launcher/MinusOneScreenView;

    invoke-static {p1}, Lcom/miui/home/launcher/MinusOneScreenView;->access$300(Lcom/miui/home/launcher/MinusOneScreenView;)V

    return-void
.end method
