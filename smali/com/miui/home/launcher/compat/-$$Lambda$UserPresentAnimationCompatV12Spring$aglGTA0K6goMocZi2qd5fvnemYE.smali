.class public final synthetic Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;IILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;

    iput p2, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;

    iget v1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;->f$2:I

    iget-object v3, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Spring$aglGTA0K6goMocZi2qd5fvnemYE;->f$3:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;->lambda$showUserPresentAnimation$0(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;IILandroid/view/View;F)V

    return-void
.end method
