.class Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;
.super Ljava/lang/Object;
.source "SpringAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/SpringAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewState"
.end annotation


# instance fields
.field alpha:F

.field scaleX:F

.field scaleY:F

.field final synthetic this$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

.field translationX:F

.field translationY:F


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/util/SpringAnimationUtils;FFFFF)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->this$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p2, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->alpha:F

    .line 129
    iput p3, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleX:F

    .line 130
    iput p4, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->scaleY:F

    .line 131
    iput p5, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationX:F

    .line 132
    iput p6, p0, Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;->translationY:F

    return-void
.end method
