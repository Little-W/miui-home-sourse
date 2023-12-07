.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$enOS1adDTMt0GcDUmICz8rJ9_LI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$enOS1adDTMt0GcDUmICz8rJ9_LI;->f$0:Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$enOS1adDTMt0GcDUmICz8rJ9_LI;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$enOS1adDTMt0GcDUmICz8rJ9_LI;->f$0:Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;

    iget-object p0, p0, Lcom/miui/home/launcher/common/-$$Lambda$HapticFeedbackCompatV2$enOS1adDTMt0GcDUmICz8rJ9_LI;->f$1:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompatV2;->lambda$performHomeGestureAccessibilitySwitch$5$HapticFeedbackCompatV2(Landroid/view/View;)V

    return-void
.end method
