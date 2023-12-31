.class Lcom/miui/home/launcher/InstallShortcutReceiver$1;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;ILcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;)V
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

.field final synthetic val$listener:Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;

.field final synthetic val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

.field final synthetic val$senderPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ILcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$app:Lcom/miui/home/launcher/Application;

    iput-object p2, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

    iput-object p4, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    iput p7, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$itemType:I

    iput-object p8, p0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$listener:Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    .line 177
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$app:Lcom/miui/home/launcher/Application;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 178
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 184
    :cond_0
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/home/launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 192
    :cond_1
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    const-string v3, "pin_shortcut_extra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 193
    instance-of v3, v2, Landroid/os/PersistableBundle;

    const-string v4, "shortcut_intent_string"

    const-string v5, "save_intent"

    const-string v6, "IS_QUICK_APP"

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    .line 195
    move-object v8, v2

    check-cast v8, Landroid/os/PersistableBundle;

    .line 196
    invoke-virtual {v8, v5, v7}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 197
    invoke-virtual {v8, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-virtual {v8, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 200
    :cond_2
    iget-object v8, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    invoke-virtual {v8, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 201
    iget-object v8, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    invoke-virtual {v8, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 202
    iget-object v8, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    invoke-virtual {v8, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 205
    :goto_0
    iget-object v9, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v10, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    invoke-static {v9, v10}, Lcom/miui/home/launcher/InstallShortcutReceiver;->access$100(Lcom/miui/home/launcher/Launcher;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-void

    .line 209
    :cond_3
    sget-object v9, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    .line 210
    iget-object v10, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    iget v11, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$itemType:I

    invoke-virtual {v1, v10, v11}, Lcom/miui/home/launcher/LauncherModel;->getShortcutInfoIgnoreDuplication(Landroid/content/Intent;I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v13

    if-nez v13, :cond_4

    .line 213
    sget-object v1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->FAILED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    goto/16 :goto_4

    .line 214
    :cond_4
    invoke-virtual {v1, v13}, Lcom/miui/home/launcher/LauncherModel;->isDupShortcut(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    sget-object v1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->DUPLICATE:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    goto/16 :goto_4

    .line 217
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 218
    iget-object v1, v13, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 220
    :cond_6
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/miui/home/launcher/ShortcutInfo;->setIconPackage(Ljava/lang/String;)V

    .line 221
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v6, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/miui/home/launcher/common/Utilities;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "retained"

    if-eqz v3, :cond_7

    .line 223
    check-cast v2, Landroid/os/PersistableBundle;

    invoke-virtual {v2, v1, v7}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v13, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    goto :goto_1

    .line 225
    :cond_7
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v13, Lcom/miui/home/launcher/ShortcutInfo;->mIsRetained:Z

    .line 229
    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/InstallShortcutReceiver;->access$200(Landroid/content/Intent;Ljava/lang/String;)Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    move-result-object v1

    .line 230
    sget-object v2, Lcom/miui/home/launcher/InstallShortcutReceiver$2;->$SwitchMap$com$miui$home$launcher$InstallShortcutReceiver$Position:[I

    invoke-virtual {v1}, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    goto :goto_2

    .line 240
    :cond_9
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v13, v1, v2}, Lcom/miui/home/launcher/InstallShortcutReceiver;->access$300(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/InstallShortcutReceiver$Position;Lcom/miui/home/launcher/Launcher;)V

    .line 241
    iget-object v12, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v14, -0x1

    iget-wide v1, v13, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    iget v3, v13, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    const/16 v19, 0x0

    new-instance v6, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;

    invoke-direct {v6, v0, v5, v4}, Lcom/miui/home/launcher/InstallShortcutReceiver$1$1;-><init>(Lcom/miui/home/launcher/InstallShortcutReceiver$1;ZLjava/lang/String;)V

    move-wide/from16 v16, v1

    move/from16 v18, v3

    move-object/from16 v20, v6

    invoke-virtual/range {v12 .. v20}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    goto :goto_2

    .line 235
    :cond_a
    iget-object v12, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x64

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    :goto_2
    move-object v1, v9

    goto :goto_3

    .line 232
    :cond_b
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v13}, Lcom/miui/home/launcher/Launcher;->addContactShortcutToQuickCallCellLayout(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    move-result-object v9

    goto :goto_2

    .line 253
    :goto_3
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    if-ne v1, v2, :cond_c

    .line 254
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

    invoke-virtual {v2}, Lcom/miui/launcher/common/PinItemRequestCompat;->accept()Z

    .line 258
    :cond_c
    :goto_4
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$listener:Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/InstallShortcutReceiver;->access$400(Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;)V

    .line 260
    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v3, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$installShortcutIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.INTENT"

    .line 262
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 261
    invoke-static {v2, v3, v0, v1}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils;->sendBroadcastToSenderAppAsync(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;)V

    return-void

    .line 179
    :cond_d
    :goto_5
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$request:Lcom/miui/launcher/common/PinItemRequestCompat;

    iget-object v2, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/InstallShortcutReceiver;->access$000(Lcom/miui/launcher/common/PinItemRequestCompat;Ljava/lang/String;)V

    .line 180
    iget-object v1, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v0, v0, Lcom/miui/home/launcher/InstallShortcutReceiver$1;->val$senderPackageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils;->sendFailedBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
