.class Lcom/miui/home/launcher/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->enterNormalEditingByGesture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$2;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "pinch"

    .line 924
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditMode(Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$2;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v2, "event_pinch_in"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method
