.class Lcom/miui/home/recents/TouchInteractionService$1;
.super Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.source "TouchInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/TouchInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/TouchInteractionService;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onInitialize$0(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$400(Lcom/miui/home/recents/TouchInteractionService;)V

    return-void
.end method

.method static synthetic lambda$onSystemUiStateChanged$1(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$300(Lcom/miui/home/recents/TouchInteractionService;)V

    return-void
.end method


# virtual methods
.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 0

    return-void
.end method

.method public onAssistantAvailable(Z)V
    .locals 0

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 0

    return-void
.end method

.method public onBackAction(ZIIZZ)V
    .locals 0

    return-void
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    const-string v1, "extra_sysui_proxy"

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p1

    .line 76
    invoke-static {v0, p1}, Lcom/miui/home/recents/TouchInteractionService;->access$002(Lcom/miui/home/recents/TouchInteractionService;Lcom/android/systemui/shared/recents/ISystemUiProxy;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 78
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$pJTqJ4PLHLKdUrZz9PuaJeQ3aEI;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$pJTqJ4PLHLKdUrZz9PuaJeQ3aEI;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 95
    iget-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p1}, Lcom/miui/home/recents/TouchInteractionService;->access$100(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewHidden()V

    :cond_0
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0}, Lcom/miui/home/recents/TouchInteractionService;->access$100(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewShown(Z)V

    return-void
.end method

.method public onOverviewToggle()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0}, Lcom/miui/home/recents/TouchInteractionService;->access$100(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewToggle()V

    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0, p1}, Lcom/miui/home/recents/TouchInteractionService;->access$202(Lcom/miui/home/recents/TouchInteractionService;I)I

    .line 123
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$aNphzIKK3SmC9yX8HJkWq7lmVFg;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$aNphzIKK3SmC9yX8HJkWq7lmVFg;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTip(II)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0}, Lcom/miui/home/recents/TouchInteractionService;->access$100(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper;->onTip(II)V

    return-void
.end method
