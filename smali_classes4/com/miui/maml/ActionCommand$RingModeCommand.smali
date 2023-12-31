.class Lcom/miui/maml/ActionCommand$RingModeCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingModeCommand"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ring_mode"

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    .line 248
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance p1, Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;-><init>(Lcom/miui/maml/ActionCommand$1;)V

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 249
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    const-string v0, "normal"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 250
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    const-string v0, "silent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 251
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    const-string v0, "vibrate"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 252
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    invoke-virtual {p0, p2}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->build(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 253
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid ring mode command value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActionCommand"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->click()V

    .line 264
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->getModeId()I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$RingModeCommand;->updateState(I)V

    return-void
.end method

.method protected update()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$RingModeCommand;->updateState(I)V

    return-void
.end method
