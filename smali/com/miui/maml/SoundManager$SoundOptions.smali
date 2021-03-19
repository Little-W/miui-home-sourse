.class public Lcom/miui/maml/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundOptions"
.end annotation


# instance fields
.field public mKeepCur:Z

.field public mLoop:Z

.field public mVolume:F


# direct methods
.method public constructor <init>(ZZF)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    .line 77
    iput-boolean p2, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mLoop:Z

    const/4 p1, 0x0

    cmpg-float p2, p3, p1

    if-gez p2, :cond_0

    .line 79
    iput p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p3, p1

    if-lez p2, :cond_1

    .line 81
    iput p1, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0

    .line 83
    :cond_1
    iput p3, p0, Lcom/miui/maml/SoundManager$SoundOptions;->mVolume:F

    :goto_0
    return-void
.end method
