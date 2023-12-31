.class public Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;
.super Lcom/miui/home/launcher/common/HapticFeedbackCompat;
.source "HapticFeedbackCompatV2.java"


# instance fields
.field private final mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

.field private final mSupportEffectGestureBackLinear:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;-><init>()V

    .line 16
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    .line 17
    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa3

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->isSupportExtHapticFeedback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mSupportEffectGestureBackLinear:Z

    return-void
.end method


# virtual methods
.method public isSupportEffectGestureBackLinear()Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mSupportEffectGestureBackLinear:Z

    return p0
.end method

.method public synthetic lambda$performBoom$8$HapticFeedbackCompatV2()V
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v0, 0xd6

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performCheckedStateInEditMode$14$HapticFeedbackCompatV2()V
    .locals 1

    .line 148
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performClearAllRecentTasks$6$HapticFeedbackCompatV2()V
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v0, 0xd5

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performClickNavBarTypePreference$18$HapticFeedbackCompatV2()V
    .locals 1

    .line 176
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performEnough$10$HapticFeedbackCompatV2()V
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performEnterEditMode$0$HapticFeedbackCompatV2()V
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performEnterHotSeat$16$HapticFeedbackCompatV2()V
    .locals 1

    .line 162
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performEnterOrCreateFolder$2$HapticFeedbackCompatV2()V
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performEnterRecent$4$HapticFeedbackCompatV2()V
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performFastScrollSection$17$HapticFeedbackCompatV2()V
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performGestureBackHandUp$12$HapticFeedbackCompatV2()V
    .locals 1

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performGestureReadyBack$11$HapticFeedbackCompatV2()V
    .locals 1

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performHold$9$HapticFeedbackCompatV2()V
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performHomeGestureAccessibilitySwitch$5$HapticFeedbackCompatV2(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRemoveScreenReaderVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isTouchExplorationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 p1, 0xbf

    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$performNotEnough$19$HapticFeedbackCompatV2()V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 v0, 0xcf

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performReadyDrop$15$HapticFeedbackCompatV2()V
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performRecentViewLockChanged$3$HapticFeedbackCompatV2(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 p1, 0xce

    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/16 p1, 0xcf

    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$performSqueezePosition$13$HapticFeedbackCompatV2()V
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performStartDrag$1$HapticFeedbackCompatV2()V
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public synthetic lambda$performStopScreenPinning$7$HapticFeedbackCompatV2()V
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->mHapticHelper:Lmiuix/util/HapticFeedbackCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method

.method public performBoom()V
    .locals 1

    .line 105
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$ODH2pSAIX4SdlLsWK9GzDgaI4Gc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$ODH2pSAIX4SdlLsWK9GzDgaI4Gc;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performCheckedStateInEditMode(Landroid/view/View;)V
    .locals 0

    .line 147
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$6z22LLCEdX0Iph9ZyzOigB1qLCE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$6z22LLCEdX0Iph9ZyzOigB1qLCE;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performClearAllRecentTasks()V
    .locals 1

    .line 86
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$8Yon7gRirA_zlq-TDmR2rARsRhg;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$8Yon7gRirA_zlq-TDmR2rARsRhg;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performClickNavBarTypePreference(Landroid/view/View;)V
    .locals 0

    .line 175
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$E9bab1pCOvG5pZE5BrsiYJNX4u8;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$E9bab1pCOvG5pZE5BrsiYJNX4u8;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnough()V
    .locals 1

    .line 119
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$q8fmeeb0EAUOuRQSAKdinWomFfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$q8fmeeb0EAUOuRQSAKdinWomFfo;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterEditMode(Landroid/view/View;Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 0

    .line 33
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$wUrLzauBRDaHP6KtgQRpxr4SFmY;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$wUrLzauBRDaHP6KtgQRpxr4SFmY;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterHotSeat(Landroid/view/View;)V
    .locals 0

    .line 161
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$fZt8pfewR0GZiDDATJvoFnYFw0w;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$fZt8pfewR0GZiDDATJvoFnYFw0w;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterOrCreateFolder(Landroid/view/View;)V
    .locals 0

    .line 47
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$0kq5YMLBU9ohFexYY_OQ7jD3h1c;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$0kq5YMLBU9ohFexYY_OQ7jD3h1c;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performEnterRecent(Landroid/view/View;)V
    .locals 0

    .line 69
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$WNBivqNW-kBiAjiB-KrAMqrqWsM;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$WNBivqNW-kBiAjiB-KrAMqrqWsM;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performFastScrollSection(Landroid/view/View;)V
    .locals 0

    .line 168
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$e_nLOG5lshymCeIAIm8BmcDSYzQ;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$e_nLOG5lshymCeIAIm8BmcDSYzQ;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performGestureBackHandUp()V
    .locals 1

    .line 133
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$4GSaE5nY4kocXCSGAU-jHfYBqe4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$4GSaE5nY4kocXCSGAU-jHfYBqe4;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performGestureReadyBack()V
    .locals 1

    .line 126
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$Xw_KAjHZ_NVfnjQPmkoMSI0uHyE;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$Xw_KAjHZ_NVfnjQPmkoMSI0uHyE;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performHold(Landroid/view/View;)V
    .locals 0

    .line 112
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$Dh34XbqkkLhcfZVPINJHSAkp7jc;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$Dh34XbqkkLhcfZVPINJHSAkp7jc;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performHomeGestureAccessibilitySwitch(Landroid/view/View;)V
    .locals 1

    .line 76
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$enOS1adDTMt0GcDUmICz8rJ9_LI;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$enOS1adDTMt0GcDUmICz8rJ9_LI;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performInjectKeyEvent(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public performNotEnough()V
    .locals 1

    .line 182
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$nuC2Vsl0kCW2XA361r-WlgrIVOc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$nuC2Vsl0kCW2XA361r-WlgrIVOc;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performReadyDrop(Landroid/view/View;)V
    .locals 0

    .line 154
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$oEX7bWDZSbyajlm0vVK878VBipo;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$oEX7bWDZSbyajlm0vVK878VBipo;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performRecentViewLockChanged(Landroid/view/View;Z)V
    .locals 0

    .line 58
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$cXSIc42poEeh9e8zz0nv-ts77EM;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$cXSIc42poEeh9e8zz0nv-ts77EM;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;Z)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performSqueezePosition(Landroid/view/View;)V
    .locals 0

    .line 140
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$tdCbEd_sh3-UW54xUPleRJ4k3BE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$tdCbEd_sh3-UW54xUPleRJ4k3BE;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performStartDrag(Landroid/view/View;)V
    .locals 0

    .line 40
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$QfUc0VacvRuTe3paQlWVhm-NYJ8;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$QfUc0VacvRuTe3paQlWVhm-NYJ8;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performStopScreenPinning(Landroid/view/View;)V
    .locals 0

    .line 93
    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$v8127XwSDd88V5lxQsak2EGM_Zo;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$v8127XwSDd88V5lxQsak2EGM_Zo;-><init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->performBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performUninstall()V
    .locals 0

    return-void
.end method
