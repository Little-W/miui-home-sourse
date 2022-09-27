.class Lcom/miui/home/recents/RecentsReceiver$2$1;
.super Ljava/lang/Object;
.source "RecentsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/RecentsReceiver$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/recents/RecentsReceiver$2;

.field final synthetic val$clearButton:Lmiuix/androidbasewidget/widget/CircleProgressBar;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/RecentsReceiver$2;Lmiuix/androidbasewidget/widget/CircleProgressBar;Landroid/view/WindowManager;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$2$1;->this$1:Lcom/miui/home/recents/RecentsReceiver$2;

    iput-object p2, p0, Lcom/miui/home/recents/RecentsReceiver$2$1;->val$clearButton:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    iput-object p3, p0, Lcom/miui/home/recents/RecentsReceiver$2$1;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver$2$1;->val$clearButton:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    new-instance v1, Lcom/miui/home/recents/RecentsReceiver$2$1$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/RecentsReceiver$2$1$1;-><init>(Lcom/miui/home/recents/RecentsReceiver$2$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
