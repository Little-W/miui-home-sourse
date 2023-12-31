.class public Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;
.super Ljava/lang/Object;
.source "SpringAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/SpringAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation


# instance fields
.field alpha:F

.field public scaleX:F

.field public scaleY:F

.field translationX:F

.field translationY:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    .line 79
    iput p2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    .line 80
    iput p3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    .line 81
    iput p4, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    .line 82
    iput p5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    return-void
.end method
