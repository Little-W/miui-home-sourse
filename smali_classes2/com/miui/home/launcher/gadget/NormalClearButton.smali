.class public Lcom/miui/home/launcher/gadget/NormalClearButton;
.super Lcom/miui/home/launcher/gadget/ClearButton;
.source "NormalClearButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ClearButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method doClear()V
    .locals 2

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.taskmanager.Clear"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/NormalClearButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method initClearIcon()V
    .locals 1

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/NormalClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    const v0, 0x7f080241

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/ClearIconImageView;->setImageResource(I)V

    return-void
.end method

.method protected setButtonAniamtor(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/gadget/ClearButton;->setButtonAniamtor(ILandroid/animation/Animator$AnimatorListener;)V

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/NormalClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ClearIconImageView;->setClearByAnimator()V

    return-void
.end method
