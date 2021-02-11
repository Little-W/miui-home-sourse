.class Lcom/miui/home/launcher/PendingAppIcon$1;
.super Ljava/lang/Object;
.source "PendingAppIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/PendingAppIcon;->animProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/PendingAppIcon;

.field final synthetic val$delta:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/PendingAppIcon;II)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/PendingAppIcon$1;->this$0:Lcom/miui/home/launcher/PendingAppIcon;

    iput p2, p0, Lcom/miui/home/launcher/PendingAppIcon$1;->val$start:I

    iput p3, p0, Lcom/miui/home/launcher/PendingAppIcon$1;->val$delta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 43
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppIcon$1;->this$0:Lcom/miui/home/launcher/PendingAppIcon;

    iget v1, p0, Lcom/miui/home/launcher/PendingAppIcon$1;->val$start:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/PendingAppIcon$1;->val$delta:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/PendingAppIcon;->access$002(Lcom/miui/home/launcher/PendingAppIcon;I)I

    .line 45
    iget-object p1, p0, Lcom/miui/home/launcher/PendingAppIcon$1;->this$0:Lcom/miui/home/launcher/PendingAppIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/PendingAppIcon;->postInvalidateOnAnimation()V

    return-void
.end method
