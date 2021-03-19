.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xpBa_JRv-YyE0kzlMztaKMn6sTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;

.field private final synthetic f$1:Lcom/miui/home/launcher/EditStateChangeReason;

.field private final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;Lcom/miui/home/launcher/EditStateChangeReason;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xpBa_JRv-YyE0kzlMztaKMn6sTo;->f$0:Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xpBa_JRv-YyE0kzlMztaKMn6sTo;->f$1:Lcom/miui/home/launcher/EditStateChangeReason;

    iput-object p3, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xpBa_JRv-YyE0kzlMztaKMn6sTo;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xpBa_JRv-YyE0kzlMztaKMn6sTo;->f$0:Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xpBa_JRv-YyE0kzlMztaKMn6sTo;->f$1:Lcom/miui/home/launcher/EditStateChangeReason;

    iget-object v2, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatLinear$xpBa_JRv-YyE0kzlMztaKMn6sTo;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;->lambda$performEnterEditMode$2(Lcom/miui/home/launcher/common/HapticFeedbackCompatLinear;Lcom/miui/home/launcher/EditStateChangeReason;Landroid/view/View;)V

    return-void
.end method
