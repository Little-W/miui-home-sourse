.class Lcom/miui/home/recents/RecentsReceiver$2$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/RecentsReceiver$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/RecentsReceiver$2$1;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 196
    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int p1, v0

    int-to-long v0, p1

    const-string p1, "RecentsReceiver"

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freeMemoryAtLast:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    iget-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;

    iget-object p1, p1, Lcom/miui/home/recents/RecentsReceiver$2$1;->val$clearButton:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    long-to-int v2, v4

    new-instance v3, Lcom/miui/home/recents/RecentsReceiver$2$1$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/recents/RecentsReceiver$2$1$1$1;-><init>(Lcom/miui/home/recents/RecentsReceiver$2$1$1;J)V

    invoke-virtual {p1, v2, v3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
