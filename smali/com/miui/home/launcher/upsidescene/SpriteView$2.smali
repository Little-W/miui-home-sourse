.class Lcom/miui/home/launcher/upsidescene/SpriteView$2;
.super Ljava/lang/Object;
.source "SpriteView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SpriteView;->enterHighlight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$2;->this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 510
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sput p1, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightCurrentValue:F

    return-void
.end method
