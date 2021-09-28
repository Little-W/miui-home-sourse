.class Lcom/miui/home/recents/RecentsReceiver$2;
.super Ljava/lang/Object;
.source "RecentsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/RecentsReceiver;->showCleanEndMsg(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/RecentsReceiver;

.field final synthetic val$clearButton:Lmiuix/androidbasewidget/widget/CircleProgressBar;

.field final synthetic val$freeAtFirst:J

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/RecentsReceiver;Lmiuix/androidbasewidget/widget/CircleProgressBar;Landroid/view/WindowManager;J)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$2;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    iput-object p2, p0, Lcom/miui/home/recents/RecentsReceiver$2;->val$clearButton:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    iput-object p3, p0, Lcom/miui/home/recents/RecentsReceiver$2;->val$wm:Landroid/view/WindowManager;

    iput-wide p4, p0, Lcom/miui/home/recents/RecentsReceiver$2;->val$freeAtFirst:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver$2;->val$clearButton:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    new-instance v1, Lcom/miui/home/recents/RecentsReceiver$2$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/RecentsReceiver$2$1;-><init>(Lcom/miui/home/recents/RecentsReceiver$2;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
