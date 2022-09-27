.class Lcom/miui/home/launcher/InstallShortcutReceiver$1;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/miui/home/launcher/Application;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$installShortcutIntent:Landroid/content/Intent;

.field final synthetic val$itemType:I

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

.field final synthetic val$senderPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$app:Lcom/miui/home/launcher/Application;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

    iput-object p4, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    iput p7, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$itemType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 172
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$app:Lcom/miui/home/launcher/Application;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 173
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 179
    :cond_0
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 187
    :cond_1
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    const-string v3, "pin_shortcut_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 188
    instance-of v3, v2, Landroid/os/PersistableBundle;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 190
    move-object v5, v2

    check-cast v5, Landroid/os/PersistableBundle;

    const-string v6, "save_intent"

    .line 191
    invoke-virtual {v5, v6, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "shortcut_intent_string"

    .line 192
    invoke-virtual {v5, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "IS_QUICK_APP"

    .line 193
    invoke-virtual {v5, v8}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 195
    :cond_2
    iget-object v5, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    const-string v6, "save_intent"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 196
    iget-object v5, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    const-string v7, "shortcut_intent_string"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    iget-object v5, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    const-string v8, "IS_QUICK_APP"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    :goto_0
    iget-object v8, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v9, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    invoke-static {v8, v9}, Lcom/miui/home/launcher/InstallShortcutReceiver;->access$100(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_3

    return-void

    .line 204
    :cond_3
    sget-object v8, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    .line 205
    iget-object v9, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    iget v10, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$itemType:I

    invoke-virtual {v1, v9, v10}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfoIgnoreDuplication(Landroid/content/Intent;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v12

    if-nez v12, :cond_4

    .line 208
    sget-object v1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->FAILED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    goto/16 :goto_4

    .line 209
    :cond_4
    invoke-virtual {v1, v12}, Lcom/miui/home/launcher/LauncherModel;->isDupShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    sget-object v1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->DUPLICATE:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    goto/16 :goto_4

    .line 212
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 213
    iget-object v1, v12, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v9, "IS_QUICK_APP"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 215
    :cond_6
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIconPackage(Ljava/lang/String;)V

    .line 216
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v5, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/miui/home/launcher/common/Utilities;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v3, :cond_7

    .line 218
    check-cast v2, Landroid/os/PersistableBundle;

    const-string v1, "retained"

    invoke-virtual {v2, v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v12, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    goto :goto_1

    .line 220
    :cond_7
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    const-string v2, "retained"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v12, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    .line 224
    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/InstallShortcutReceiver;->access$200(Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    move-result-object v1

    .line 225
    sget-object v2, Lcom/miui/home/launcher/InstallShortcutReceiver$2;->$SwitchMap$com$miui$home$launcher$InstallShortcutReceiver$Position:[I

    invoke-virtual {v1}, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 235
    :pswitch_0
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v12, v1, v2}, Lcom/miui/home/launcher/InstallShortcutReceiver;->access$300(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/InstallShortcutReceiver$Position;Lcom/miui/home/launcher/Launcher;)V

    .line 236
    iget-object v11, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v13, -0x1

    iget-wide v1, v12, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    iget v3, v12, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    const/16 v18, 0x0

    new-instance v4, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;

    invoke-direct {v4, v0, v6, v7}, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;-><init>(Lcom/miui/home/launcher/InstallShortcutReceiver$1;ZLjava/lang/String;)V

    move-wide v15, v1

    move/from16 v17, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v11 .. v19}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto :goto_2

    .line 230
    :pswitch_1
    iget-object v11, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x64

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto :goto_2

    .line 227
    :pswitch_2
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v12}, Lcom/miui/home/launcher/Launcher;->addContactShortcutToQuickCallCellLayout(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    move-result-object v8

    move-object v1, v8

    goto :goto_3

    :goto_2
    move-object v1, v8

    .line 248
    :goto_3
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    if-ne v1, v2, :cond_9

    .line 249
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

    invoke-virtual {v2}, Lcom/miui/launcher/common/PinItemRequestCompat;->accept()Z

    .line 253
    :cond_9
    :goto_4
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v3, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.shortcut.INTENT"

    .line 255
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 254
    invoke-static {v2, v3, v4, v1}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils;->sendBroadcastToSenderAppAsync(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;)V

    return-void

    .line 174
    :cond_a
    :goto_5
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/InstallShortcutReceiver;->access$000(Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;)V

    .line 175
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils;->sendFailedBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
