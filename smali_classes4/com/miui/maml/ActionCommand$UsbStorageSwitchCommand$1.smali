.class Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;
.super Ljava/lang/Thread;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

.field final synthetic val$_on:Z


# direct methods
.method constructor <init>(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;Ljava/lang/String;Z)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    iput-boolean p3, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-static {v0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->access$300(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_enableUsbMassStorage(Landroid/os/storage/StorageManager;)V

    goto :goto_0

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-static {v0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->access$300(Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->StorageManager_disableUsbMassStorage(Landroid/os/storage/StorageManager;)V

    .line 756
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;

    iget-boolean p0, p0, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/miui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    return-void
.end method
