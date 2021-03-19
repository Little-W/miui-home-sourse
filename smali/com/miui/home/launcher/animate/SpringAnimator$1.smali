.class Lcom/miui/home/launcher/animate/SpringAnimator$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/animate/SpringAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/miui/home/launcher/animate/SpringAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/animate/SpringAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/animate/SpringAnimator;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator$1;->this$0:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/home/launcher/animate/SpringAnimator;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 24
    check-cast p1, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/animate/SpringAnimator$1;->getValue(Lcom/miui/home/launcher/animate/SpringAnimator;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/home/launcher/animate/SpringAnimator;F)V
    .locals 3

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator$1;->this$0:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-static {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->access$000(Lcom/miui/home/launcher/animate/SpringAnimator;)Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator$1;->this$0:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-static {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->access$000(Lcom/miui/home/launcher/animate/SpringAnimator;)Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/animate/SpringAnimator$1;->this$0:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-static {v0}, Lcom/miui/home/launcher/animate/SpringAnimator;->access$100(Lcom/miui/home/launcher/animate/SpringAnimator;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/animate/SpringAnimator$1;->this$0:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-static {v1}, Lcom/miui/home/launcher/animate/SpringAnimator;->access$200(Lcom/miui/home/launcher/animate/SpringAnimator;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/animate/SpringAnimator$1;->this$0:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-static {v2}, Lcom/miui/home/launcher/animate/SpringAnimator;->access$100(Lcom/miui/home/launcher/animate/SpringAnimator;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;->onAnimationUpdate(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 24
    check-cast p1, Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/animate/SpringAnimator$1;->setValue(Lcom/miui/home/launcher/animate/SpringAnimator;F)V

    return-void
.end method
