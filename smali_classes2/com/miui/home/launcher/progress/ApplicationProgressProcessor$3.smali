.class Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;
.super Ljava/lang/Object;
.source "ApplicationProgressProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->onProgressFinished(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

.field final synthetic val$removedInfo:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;->val$removedInfo:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;->val$removedInfo:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$3;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-static {p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->access$200(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->onProgressFinished(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
