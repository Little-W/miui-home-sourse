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

    .line 76
    iput-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onInitialize$0(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/IOneHanded;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxyByBundle(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/IOneHanded;)V

    return-void
.end method

.method static synthetic lambda$onSystemUiStateChanged$1(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 132
    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->access$200(Lcom/miui/home/recents/TouchInteractionService;)V

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
    .locals 3

    const-string v0, "extra_shell_one_handed"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/onehanded/IOneHanded$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/onehanded/IOneHanded;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$eGDv_p_kaHNg1SwGvjkTtv73l28;

    invoke-direct {v2, p1, v0}, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$eGDv_p_kaHNg1SwGvjkTtv73l28;-><init>(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/IOneHanded;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverviewHidden(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 104
    iget-object p1, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {p1}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewHidden()V

    :cond_0
    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewShown(Z)V

    return-void
.end method

.method public onOverviewToggle()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewCommandHelper;->onOverviewToggle()V

    return-void
.end method

.method public onSystemUiStateChanged(I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0, p1}, Lcom/miui/home/recents/TouchInteractionService;->access$102(Lcom/miui/home/recents/TouchInteractionService;I)I

    .line 132
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$aNphzIKK3SmC9yX8HJkWq7lmVFg;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$aNphzIKK3SmC9yX8HJkWq7lmVFg;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTip(II)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService$1;->this$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0}, Lcom/miui/home/recents/TouchInteractionService;->access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper;->onTip(II)V

    return-void
.end method
