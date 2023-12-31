.class Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;
.super Ljava/lang/Object;
.source "ClipAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/ClipAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformTimes"
.end annotation


# instance fields
.field public mFirst:Z

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/miui/home/recents/util/ClipAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/util/ClipAnimationHelper;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->this$0:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 802
    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mFirst:Z

    const/4 p1, 0x0

    .line 803
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mX:I

    .line 804
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mY:I

    return-void
.end method


# virtual methods
.method public setFirst(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;
    .locals 0

    .line 808
    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mFirst:Z

    return-object p0
.end method

.method public setX(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;
    .locals 0

    .line 813
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mX:I

    return-object p0
.end method

.method public setY(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;
    .locals 0

    .line 818
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mY:I

    return-object p0
.end method
