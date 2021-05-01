.class Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->onScale(Landroid/view/ScaleGestureDetector;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener$1;->this$1:Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener$1;->this$1:Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;

    iget-object v0, v0, Lcom/miui/home/launcher/DragLayer$ScaleDetectorListener;->this$0:Lcom/miui/home/launcher/DragLayer;

    invoke-static {v0}, Lcom/miui/home/launcher/DragLayer;->access$000(Lcom/miui/home/launcher/DragLayer;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->enterNormalEditingByGesture()V

    return-void
.end method
