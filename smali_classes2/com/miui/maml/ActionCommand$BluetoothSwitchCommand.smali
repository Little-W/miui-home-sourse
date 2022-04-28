.class Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothSwitchCommand"
.end annotation


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    const-string v0, "bluetooth_state"

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 617
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance p1, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {p1, p2}, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    return-void
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 669
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .line 623
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 627
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 629
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 632
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 635
    :cond_2
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eq v0, v3, :cond_4

    .line 636
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lcom/miui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 638
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_0

    .line 640
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 641
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    .line 645
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->update()V

    return-void
.end method

.method protected update()V
    .locals 4

    .line 650
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 654
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActionCommand"

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no Bluetooth permission. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :goto_0
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 660
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    const/4 v0, 0x1

    .line 661
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    goto :goto_1

    .line 663
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/maml/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    :goto_1
    return-void
.end method
