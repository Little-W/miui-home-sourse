.class Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$1;
.super Ljava/lang/Object;
.source "ApplicationProgressProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$1;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$1;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->access$100(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/progress/ProgressInfoList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$1;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-static {v1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->access$000(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ProgressInfoList;->getStatusTitleMap(Ljava/util/HashMap;)V

    return-void
.end method
