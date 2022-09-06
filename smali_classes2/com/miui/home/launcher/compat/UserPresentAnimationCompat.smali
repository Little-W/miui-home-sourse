.class public abstract Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
.super Ljava/lang/Object;
.source "UserPresentAnimationCompat.java"


# instance fields
.field protected mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public static createAnimation(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
    .locals 1

    .line 16
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Fold;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object v0

    .line 23
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method


# virtual methods
.method public abstract checkMissingIcon()V
.end method

.method public abstract isPreparedAnimation()Z
.end method

.method public abstract prepareAnimation()V
.end method

.method public abstract resetAnimation()V
.end method

.method public abstract showAnimation()V
.end method
