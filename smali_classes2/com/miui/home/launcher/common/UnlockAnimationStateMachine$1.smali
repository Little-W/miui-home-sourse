.class Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$1;
.super Ljava/lang/Object;
.source "UnlockAnimationStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->sendMessageToShowUpdaterDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$1;->this$0:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$1;->this$0:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    iget-object p0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "updater_dialog_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show updater dialog, mDialogType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher_UnlockAnimationStateMachine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.updater.intent.ACTION_SHOW_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.updater"

    .line 225
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    .line 226
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
