.class Lcom/miui/home/launcher/Launcher$47;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$ev:Landroid/view/MotionEvent;

.field final synthetic val$isDispatchTouchEventSuccess:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;Z)V
    .locals 0

    .line 4491
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$47;->val$ev:Landroid/view/MotionEvent;

    iput-boolean p3, p0, Lcom/miui/home/launcher/Launcher$47;->val$isDispatchTouchEventSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4494
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/Launcher$47;->val$isDispatchTouchEventSuccess:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher_dispatchTouchEvent_View"

    const-string v1, "[motionEvent view:]   \n"

    .line 4495
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 4496
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/TouchEventUtil;->printTouchEventCallChain(Landroid/view/View;)V

    const-string v0, "Launcher_dispatchTouchEvent_View"

    .line 4497
    invoke-static {v0}, Lcom/miui/home/launcher/MiuiHomeLog;->printAndClearMessage(Ljava/lang/String;)V

    .line 4499
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$47;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$47;->val$ev:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$6600(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)V

    return-void
.end method
