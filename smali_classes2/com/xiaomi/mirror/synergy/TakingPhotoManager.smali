.class public Lcom/xiaomi/mirror/synergy/TakingPhotoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;
    }
.end annotation


# instance fields
.field private mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Binder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    :cond_0
    return-void
.end method

.method public registerTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    invoke-direct {v0, p2}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;-><init>(Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p2}, Landroid/os/Binder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    invoke-virtual {p0}, Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v2, "callback"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "registerTakingPhone"

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    return p2

    :catch_0
    return v1
.end method

.method public unregisterTakePhotoCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorTakePhotoCallback;)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;->access$000(Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    invoke-virtual {v0}, Lcom/xiaomi/mirror/IMirrorTakePhotoCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "callback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "unregisterTakingPhone"

    invoke-static {p1, v1, v0, p2}, Lcom/xiaomi/mirror/synergy/CallMethod;->doCall(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/TakingPhotoManager;->mCallbackWrapper:Lcom/xiaomi/mirror/synergy/TakingPhotoManager$CallbackWrapper;

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
