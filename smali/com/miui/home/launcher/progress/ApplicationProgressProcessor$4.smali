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

    .line 373
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
    .locals 5

    .line 376
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$info:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$status:I

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$progressTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$4;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateStatus(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
