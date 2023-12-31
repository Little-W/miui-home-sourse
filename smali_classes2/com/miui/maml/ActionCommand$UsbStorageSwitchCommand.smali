.class Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageSwitchCommand"
.end annotation


# instance fields
.field private mConnected:Z

.field private mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    const-string v0, "usb_mode"

    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 718
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    return-void
.end method

.method static synthetic access$300(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .line 732
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_isUsbMassStorageEnabled(Landroid/os/storage/StorageManager;)Z

    move-result v0

    .line 737
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_1

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-ne v1, v0, :cond_2

    return-void

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    :goto_0
    const/4 v1, 0x3

    .line 746
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    .line 748
    new-instance v1, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;

    const-string v2, "StorageSwitchThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;-><init>(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;Ljava/lang/String;Z)V

    .line 758
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->start()V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 725
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    .line 727
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected update()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    .line 765
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 766
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    const-string p0, "ActionCommand"

    const-string v0, "Failed to get StorageManager"

    .line 767
    invoke-static {p0, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_isUsbMassStorageEnabled(Landroid/os/storage/StorageManager;)Z

    move-result v0

    .line 773
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    return-void
.end method
