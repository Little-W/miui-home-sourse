.class Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;
.super Ljava/lang/Object;
.source "ApplicationProgressProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->updateInfo(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

.field final synthetic val$info:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

.field final synthetic val$progressTitle:Ljava/lang/String;

.field final synthetic val$status:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$info:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iput p3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$status:I

    iput-object p4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$progressTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 368
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$info:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$status:I

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$progressTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$uri:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->screenId:J

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateStatus(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Landroid/net/Uri;J)V

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$info:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$info:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v1, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$info:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v2, v2, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    invoke-virtual {v7, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->updateWidgetProgress(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
