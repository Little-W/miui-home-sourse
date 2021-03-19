.class public Lcom/miui/home/launcher/common/messages/SoundEffectEnableMessage;
.super Ljava/lang/Object;
.source "SoundEffectEnableMessage.java"


# instance fields
.field private mEnable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/messages/SoundEffectEnableMessage;->mEnable:Z

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/messages/SoundEffectEnableMessage;->mEnable:Z

    return v0
.end method
