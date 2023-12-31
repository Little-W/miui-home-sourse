.class public final synthetic Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Phone$C3nE-FWrW5QotTQ-MBzJLLRXqsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;IILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Phone$C3nE-FWrW5QotTQ-MBzJLLRXqsk;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;

    iput p2, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Phone$C3nE-FWrW5QotTQ-MBzJLLRXqsk;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Phone$C3nE-FWrW5QotTQ-MBzJLLRXqsk;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Phone$C3nE-FWrW5QotTQ-MBzJLLRXqsk;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(F)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Phone$C3nE-FWrW5QotTQ-MBzJLLRXqsk;->f$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;

    iget v1, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Phone$C3nE-FWrW5QotTQ-MBzJLLRXqsk;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Phone$C3nE-FWrW5QotTQ-MBzJLLRXqsk;->f$2:I

    iget-object p0, p0, Lcom/miui/home/launcher/compat/-$$Lambda$UserPresentAnimationCompatV12Phone$C3nE-FWrW5QotTQ-MBzJLLRXqsk;->f$3:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->lambda$showUserPresentAnimation$0$UserPresentAnimationCompatV12Phone(IILandroid/view/View;F)V

    return-void
.end method
