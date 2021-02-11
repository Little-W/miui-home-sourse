.class public Lcom/miui/home/launcher/AddItemActivity;
.super Landroid/app/Activity;
.source "AddItemActivity.java"


# instance fields
.field private mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/miui/home/launcher/AddItemActivity;)V
    .locals 4

    .line 33
    new-instance v0, Lcom/miui/launcher/common/ShortcutInfoCompat;

    iget-object v1, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    invoke-virtual {v1}, Lcom/miui/launcher/common/PinItemRequestCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/launcher/common/ShortcutInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 34
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->makeInstallShortcutIntent(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/content/Intent;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    .line 36
    invoke-virtual {v0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xe

    .line 35
    invoke-static {p0, v2, v1, v0, v3}, Lcom/miui/home/launcher/InstallShortcutReceiver;->checkToAddShortcut(Landroid/content/Context;Lcom/miui/launcher/common/PinItemRequestCompat;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/AddItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/launcher/common/PinItemRequestCompat;->getPinItemRequest(Landroid/content/Intent;)Lcom/miui/launcher/common/PinItemRequestCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/AddItemActivity;->mRequest:Lcom/miui/launcher/common/PinItemRequestCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/launcher/common/PinItemRequestCompat;->getRequestType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 32
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$abtTin6RH7oxBHHOjZ6jRWUFbtA;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$abtTin6RH7oxBHHOjZ6jRWUFbtA;-><init>(Lcom/miui/home/launcher/AddItemActivity;)V

    .line 39
    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/AddItemActivity;->finish()V

    return-void
.end method
