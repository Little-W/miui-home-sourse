.class Lcom/miui/home/launcher/progress/ProgressManager$1;
.super Ljava/lang/Object;
.source "ProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/progress/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/progress/ProgressManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/progress/ProgressManager;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressManager$1;->this$0:Lcom/miui/home/launcher/progress/ProgressManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressManager$1;->this$0:Lcom/miui/home/launcher/progress/ProgressManager;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->access$000(Lcom/miui/home/launcher/progress/ProgressManager;)V

    .line 258
    invoke-static {}, Lcom/miui/home/launcher/progress/ProgressManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 259
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
