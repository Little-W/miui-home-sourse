.class public Lcom/miui/maml/folme/ConfigValue;
.super Ljava/lang/Object;
.source "ConfigValue.java"


# instance fields
.field public mDelay:J

.field public mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mFromSpeed:F

.field public mHasFromSpeed:Z

.field public mOnBeginCallback:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOnCompleteCallback:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOnUpdateCallback:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRelatedProperty:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    iput v0, p0, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 12
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/ArraySet;

    .line 13
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/ArraySet;

    .line 14
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/ArraySet;

    .line 15
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/ArraySet;

    return-void
.end method
